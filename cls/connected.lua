local event = game.ReplicatedStorage[":Connected"]

event.Fired:Connect(function(plr)

    local plrObj = game.Players:FindFirstChild(plr.Name)
    local status = plrObj.ConnectionStatus()

    if status == "Connected" then

        return(status, true)

    else

        return(status, false)

    end

end