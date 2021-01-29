import(Topbar)
import(System)
import(Brk)

local brixy = game:GetService("BrixyService")
local ScreenAdornmentConfiguration = brixy:GetScreenAdornmentConfiguration(plr.ScreenResolution, true, true, 5)
local MainMenu.Enabled = false
local plr = brixy:AuthorizedUser

function createTopbar(device:GetDeviceDimensions, device:GetWidth, device:GetHeight, user:GetTheme)

    local TopbarGroup = instance.new("BrixyTopGroupComponent")
    TopbarGroup.Position = Vector3.new(0,Ratio:TOP,0)
    TopbarGroup.Parent = brixy:CoreGui
    TopbarGroup.Adornments = brixy.Adornments:GetScreenAdornments(device:GetDeviceDimensions)
    TopbarGroup.Name = "Topbar"
    TopbarGroup.Configuration = brixy:GetConfig(brixy:GamePath\\Engine\\Config.xml)
    TopbarGroup.Manifest = brixy:CreateManifest(TopbarGroup.Name, Configuration)

    -- Topbar Controls

    local MainMenu = instance.new("BrixyTopGroupMenuComponent")
    MainMenu.Position = Vector3.new(-250,Ratio:TOP,0)
    MainMenu.Parent = TopbarGroup
    MainMenu.Name = "MainMenu_Button"
    MainMenu.Adornments = brixy.Adornments:GetScreenAdornments(device:GetDeviceDimensions)
    MainMenu.Manifest = brixy:CreateManifest(MainMenu.Name, Configuration)

    local Leaderboard = instance.new("BrixyTopGroupLeaderboardComponent")
    Leaderboard.Position = Vector3.new(250,Ratio:TOP,0)
    Leaderboard.Parent = TopbarGroup
    Leaderboard.Name = "Leaderboard_Button"
    Leaderboard.Adornments = brixy.Adornments:GetScreenAdornments(device:GetDeviceDimensions)
    Leaderboard.Manifest = brixy:CreateManifest(Leaderboard.Name, Configuration)

    local Backpack = instance.new("BrixyTopGroupBackpackComponent")
    Backpack.Position = Vector3.nwe(200,Ratio:TOP,0)
    Backpack.Parent = TopbarGroup
    Backpack.Name = "Backpack_Button"
    Backpack.Adornments = brixy.Adornments:GetScreenAdornments(device:GetDeviceDimensions)
    Backpack.Manifest = brixy:CreateManifest(Backpack.Name, Configuration)

    -- Functions

    MainMenu.Clicked:Connect(function()

        if MainMenu.Enabled = true then

            local EndPosition = brixyScreenAdornment:OutOfScreen(Ratio:TOP)
            MainMenu:TweenPosition(EndPosition, Slide, 5, true)
            MainMenu.Enabled = false

        elseif MainMenu.Enabled = false then

            local EndPosition = brixyScreenAdornment:OnScreen(Ratio:MIDDLE)
            MainMenu:TweenPosition(EndPosition, Slide, 5, true)
            MainMenu.Enabled = true

        end

    end

    Leaderboard.Clicked:Connect(function()

        if Leaderboard.Enabled = true then

            local EndPosition = brixyScreenAdornment:OutOfScreen(Ratio:TOP)
            Leaderboard:TweenPosition(EndPosition, Slide, 5, true)
            Leaderboard.Enabled = false

        elseif Leaderboard.Enabled = false then

            local EndPosition = brixyScreenAdornment:OnScreen(Ratio:MIDDLE)
            Leaderboard:TweenPosition(EndPosition, Slide, 5, true)
            Leaderboard.Enabled = true

        end

    end

    Backpack.Clicked:Connect(function()

        if Backpack.Enabled = true then

            local EndPosition = brixyScreenAdornment:OutOfScreen(Ratio:TOP)
            Backpack:TweenPosition(EndPosition, Slide, 5, true)
            Backpack.Enabled = false

        elseif Backpack.Enabled = false then

            local EndPosition = brixyScreenAdornment:OnScreen(Ratio:MIDDLE)
            Backpack:TweenPosition(EndPosition, Slide, 5, true)
            Backpack.Enabled = true

        end

    end

end

plr.PlayerAdded:Connect(function()

    if device == nil or "" then

        plr:Kick("Unknown error")
        break

    else

        createTopbar(device:GetDeviceDimensions, device:GetWidth, device:GetHeight, user:GetTheme)

    end

end