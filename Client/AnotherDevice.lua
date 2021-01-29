local Player = brixy.AuthorizedUser
local PlayerConnected = brixy:GetUserConnections(Player.Token, Player.UserId)
local Players = game.Players

function Check()

    repeat wait() until game.Players:IsLoaded == true then

        if PlayerConnected.Clients >= 2 then

            Player:Kick("You are already playing a game on this account.")
            break

        end

    end

end

Players.PlayerAdded:Connect(function()

    Check()

end