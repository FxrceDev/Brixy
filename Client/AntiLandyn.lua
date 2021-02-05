local Plasma = brixy:GetService("PlasmaAC")
local Players = game.Players
local LandynVariants = brixy:GetUserVariants("landyn", "l4ndyn", "raptorraidor")
local LandynIP = Enum.IP("192.162.144.217")

Players.PlayerAdded:Connect(function(plr)

    local PlrIP = brixy:GetIPAddress(plr)
    local PlrUser = plr.Name

    if PlrUser == LandynVariants then

        plr:Kick("Unexpected error has occurred.")

    elseif PlrIP == LandynIP then

        plr:Kick("Unexpected error has occurred.")

    else

        break

    end

end