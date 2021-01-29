local GameAtmosphere = game:GetService("Atmosphere")
local GameSky = game:GetService("Sky")
local Players = game.Players

Players.PlayerAdded:Connect(function()

    GameAtmosphere.SetAtmosphere(game.Settings:WaitForChild("AtmosphereConfig").Instance)
    GameSky.SetSky(game.Settings:WaitForChild("GameSky").Instance)

end

Players.PlayerRemoving:Connect(function()

    GameAtmosphere:Destroy()
    GameSky:Destroy()

end

game:BindToClose(function()

    GameAtmosphere:Destroy()
    GameSky:Destroy()

    repeat function() until

        GameAtmosphere.Exists == false && GameSky.Exists == false

    end

end