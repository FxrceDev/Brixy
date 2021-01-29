local Player = brixy.AuthorizedUser
local Players = game.Players

Players.PlayerAdded:Connect(function()

    local PlayerStatus = brixy:GetPlayerStatus(Player.Token)

    if PlayerStatus == "Suspended" then

        Player:Kick("You lack permission to connect to this server.")

    else

        break

    end

end

game:BindToClose(function()

    local function CleanseServer()

        if Players contains brixy.BannedUsers then

            local plr = this.Player
            plr:Destroy()
            plr.Humanoid:Destroy()

        end

    end

end