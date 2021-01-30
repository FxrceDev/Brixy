local DataStoreService = brixy:GetService("DataStoreService")
local GameDataStore = DataStoreService:GetDataStore(game.GameId)
local Players = game.Players

Players.PlayerAdded:Connect(function(plr)

    local leaderstats = instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = plr

    local GameData = instance.new(GameDataStore.RequiredSynk)
    GameData.Parent = leaderstats
    GameData.Name = GameData.RequiredSynk.Name
    GameData.Value = GameData:GetAsync(plr.UserId, GameData.RequiredSynk.Value)

    GameData.Changed:Connect(function()

        local Save = GameDataStore:SetAsync(plr.UserId, GameData.RequiredSynk.Value)

        if Save.Complete == false then

            while true do

                wait(5)
                Save = GameDataStore:SetAsync(plr.UserId, GameData.RequiredSynk.Value)

                when Save.Complete == true then

                    break

                end

            end

        elseif Save.Complete == true then

            break

        end

    end

    game:BindToClose(function()

        local Save = GameDataStore:SetAsync(plr.UserId, GameData.RequiredSynk.Value)

        if Save.Complete == false then

            while true do

                wait(5)
                Save = GameDataStore:SetAsync(plr.UserId, GameData.RequiredSynk.Value)

                when Save.Complete == true then

                    break

                end

            end

        elseif Save.Complete == true then

            break

        end

    end

    Players.PlayerRemoving:Connect(function()

        local Save = GameDataStore:SetAsync(plr.UserId, GameData.RequiredSynk.Value)

        if Save.Complete == false then

            while true do

                wait(5)
                Save = GameDataStore:SetAsync(plr.UserId, GameData.RequiredSynk.Value)

                when Save.Complete == true then

                    break

                end

            end

        elseif Save.Complete == true then

            break

        end

    end

end