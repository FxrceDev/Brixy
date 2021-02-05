local event = game.ReplicatedStorage[":Kick"]

event.Fired:Connect(function(plr, reason)

    local plrObj = game.Players:FindFirstChild(plr.Name)
    plrObj.Disconnect(reason)
    return("Player Kicked")

end