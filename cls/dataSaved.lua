local event = game.ReplicatedStorage[":dataSaved"]

event.Fired:Connect(function(plr, FiredStat)

    local plrObj = game.Players:FindFirstChild(plr.Name)
    local data = game:GetService("DataStoreService"):GetDataStore(game):GetAsync(plr.UserId)
    local data_main

    if data.Value == plr.Stats[FiredStat].Value then

        data_main = true

    end

    if data_main >= true then

        return(true)

    else

        return(data, false)

    end

end