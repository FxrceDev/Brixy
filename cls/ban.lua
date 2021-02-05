local event = game.ReplicatedStorage[":Ban"]

event.Fired:Connect(function(plr, reason)

    local plrObj = game.Players:FindFirstChild(plr.Name)
    plrObj.Disconnect(reason, Enum3.Punishment["Ban"])
    return("Player Banned")

end