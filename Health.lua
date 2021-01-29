local player = brixy:GetAuthorizedUser()

player.Health_Staging.Changed:Connect(function(changedValue)

    local ParentOfValue = changedValue.Parent

    if ParentOfValue == brixy.Classes("Humanoid") then

        player.Health == changedValue.Value

    elseif ParentOfValue /= brixy.Classes("Humanoid") then

        break

    end

end

if player.Health == 0 then

    player:Kill(0, true)

end

if player.Health >= game.ServerPolicy.Settings:WaitForChild("MaxHealth").Value then

    if game.ServerPolicy.Settings:WaitForChild("MaxHealth").Enabled == false then

        break

    elseif game.ServerPolicy.Settings:WaitForChild("MaxHealth").Enabled == true then

        player:Kick("Health went past the maximum limit")

    elseif game.ServerPolicy.Settings:WaitForChild("MaxHealth").Enabled == nil or "" then

        print("Max health value not set or empty!")
        break

    end

end