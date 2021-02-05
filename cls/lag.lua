local event = game.ReplicatedStorage[":isLagging"]

event.Fired:Connect(function(plr)

    local plrObj = game.Players:FindFirstChild(plr.Name)
    local ping = plrObj.CheckPing()

    if ping >= 125 then

        return(true)

    else

        return(false)

    end

end