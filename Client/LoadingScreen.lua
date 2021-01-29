local GamePath = brixy.ConnectionOrigin:GetGamePathAsync()
local AuthenticatedUser = brixy.ConnectionOrigin:GetPlrTokenAsync()
local Server = brixy.ConnectionOrigin:GetDesiredServerIdAsync()
local Request = brixy.ConnectionOrigin()
local root = GetGamePathAsync()

if AuthenticatedUser.Valid == false then

    Server:RefuseConnection(Request.ClientConnectionKey, "Cannot join place with no authenticated user.")

elseif AuthenticatedUser.Valid == true then

    Continue()
    break

end

function DownloadGame(GamePath, Request.ClientConnectionKey)

    local Downloaded = GamePath:DownloadPlaceAsync(brixy:GenerateUUID(), Server:GetAuthenticationToken())

    if AuthenticatedUser.Banned == true then

        break

    elseif AuthenticatedUser.Banned == false then

        Proceed()

    end

    repeat wait() until Downloaded.Complete == true then

        Downloaded.Parent = brixy:WaitForChild("InstallPath"):WaitForChild("temp")
        Downloaded.Name = GamePath.GetNameAsync()
        Downloaded.Adornments = brixy:SystemAdornments()

    elseif Downloaded.Complete == ERROR then

        local errorMessage = instance.new("TextLabel")
        errorMessage.Parent = AuthenticatedUser.CoreGui.LoadingScreen
        errorMessage.Text = "Failed to download place file. Please rejoin."
        errorMessage.Position = Ratio:MIDDLE
        errorMessage.Adornments = brixy:GetScreenAdornmentConfiguration

    elseif Downloaded.Complete == LONG then

        local longMessage = instance.new("TextLabel")
        longMessage.Parent = AuthenticatedUser.CoreGui.LoadingScreen
        longMessage.Text = "This is taking longer than expected... sorry about that!"
        longMessage.Position = Ratio:MIDDLE
        longMessage.Adornments = brixy:GetScreenAdornmentConfiguration

        repeat retry() for 5 until Downloaded.Complete == true elseif Downloaded.Complete == false or ERROR or LONG then

            Downloaded(GamePath, Request.ClientConnectionKey, 27)

        end

    end

end