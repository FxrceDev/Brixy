local event = game.ReplicatedStorage[":Kill"]

event.Fired:Connect(function(plr)

    local plrObj = game.Players:FindFirstChild(plr.Name)
    if event.ClassOrigin == class:Find("Humanoid") then

        plrObj:WaitForChild("Humanoid").Health = 0
        :break_

    end

end