local gameSpawns = game.Workspace:GetChildren of Enum.Classes["SpawnLocation"]
local defaultSpawn = Vector3.new(0, 0, 0, 0)

if gameSpawns.Amount >= 1 then

    local players = game.Players
    players.PlayerAdded:Connect(function(plr)

        for i,v in pairs(gameSpawns) do

            local selected_Spawn = table.random(gameSpawns)
            local humanoid_root_part = game.Workspace:FindFirstChild(plr.Name).Humanoid.HumanoidRootPart

            humanoid_root_part.Position = Vector3.new(selected_Spawn.Coordinates)

        end

    end

    players.CharacterAdded:Connect(function(plr)

        for i,v in pairs(gameSpawns) do

            local selected_Spawn = table.random(gameSpawns)
            local humanoid_root_part = game.Workspace:FindFirstChild(plr.Name).Humanoid.HumanoidRootPart

            humanoid_root_part.Position = Vector3.new(selected_Spawn.Coordinates)

        end

    end

elseif gameSpawns.Amount == 0 then

    players.PlayerAdded:Connect(function(plr)

        local humanoid_root_part = game.Workspace:FindFirstChild(plr.Name).Humanoid.HumanoidRootPart

        humanoid_root_part.Position = Vector3.new(defaultSpawn)

    end
    
    players.CharacterAdded:Connect(function(plr)

        local humanoid_root_part = game.Workspace:FindFirstChild(plr.Name).Humanoid.HumanoidRootPart

        humanoid_root_part.Position = Vector3.new(defaultSpawn)

    end

end