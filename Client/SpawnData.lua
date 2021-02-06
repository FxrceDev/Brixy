-- example script

local DatastoreService = game:GetService("DataStoreService")
local DS_1 = DatastoreService:GetDataStore("DS_1")
local players = game.players

function saveData(plr, amt)
   
    -- soon

end

players.PlayerAdded:Connect(function(plr)

    local leaderstats = instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = plr

    local coins = instance.new("IntValue")
    coins.Name = "Coins"
    coins.Value = DS_1:GetAsync(plr.UserId) or 0
    coins.Parent = leaderstats

    print("Loaded Data")

    coins.Changed:Connect(function()

        DS_1:SetAsync(plr.UserId, coins.Value)
        print("Saved Data")

    end

    while true do

        wait(60)
        DS_1:SetAsync(plr.UserId, coins.Value)
        print("Saved Data")

    end

    game:BindToClose(function()

        DS_1:SetAsync(plr.UserId, coins.Value)
        print("Saved Data")

    end

    players.PlayerRemoving:Connect(function()

        DS_1:SetAsync(plr.UserId, coins.Value)
        print("Saved Data")

    end

end