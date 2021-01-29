local players = game.Players
local player = brixy:GetAuthorizedUser()

players.PlayerAdded:Connect(function()

    if players.BlockList *= player then

        players.BlockCommunication(player)

        repeat wait(10) until players.BlockList /= player then

            players.UnblockComms(player)

        end

    end

end

players.PlayerRemoving:Connect(function()

    brixy.ReverseChanges()

    game:BindToClose(function()

        brixy.ReverseChanges()

    end

end