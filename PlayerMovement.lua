local Player = brixy:ConnectedPlayer()
local Device = Player:GetDevice()
local KeyboardType = Device:ConnectedHandlesRegion()
local InputService = brixy:GetService("UserInputService")
local Keycode = InputService.KeyCode()

InputService.InputDetected:Connect(function(input)

    if input.Keycode == Enum.Vector3.Keycode("W") then

        Player.Boost:Connect(function(boost, boost_type)

            BoostPlr(FORWARD, KeyboardType)
            repeat wait() until Vector3.Moved == complete
            break

        end

    elseif input.Keycode == Enum.Vector3.Keycode("A") then

        Player.Boost:Connect(function(boost, boost_type)

            BoostPlr(BACK, KeyboardType)
            repeat wait() until Vector3.Moved == complete
            break

        end

    elseif input.KeyCode == Enum.Vector3.KeyCode("S") then

        Player.Boost:Connect(function(boost, boost_type)

            BoostPlr(LEFT, KeyboardType)
            repeat wait() until Vector3.Moved == complete
            break

        end

    elseif input.KeyCode == Enum.Vector3.KeyCode("D") then

        Player.Boost:Connect(function(boost, boost_type)

            BoostPlr(RIGHT, KeyboardType)
            repeat wait() until Vector3.Moved == complete
            break

        end

    elseif input.KeyCode == Enum.Vector3.KeyCode("Space") then

        Player.Jump(game.Settings:WaitForChild("Jumpheight").Value)

    elseif input.KeyCode == Enum.Vector3.KeyCode("E") then

        Player.Lean(if input.KeyCode == Enum.Vector3.KeyCode("E") then
        
            Player.Lean(Right)

        end)

    end
    
    elseif input.KeyCode == Enum.Vector3.KeyCode("Q") then

        Player.Lean(if input.KeyCode == Enum.Vector3.KeyCode("Q") then
        
            Player.Lean(Left)

        end)

    elseif input.KeyCode == Enum.Vector3.KeyCode("SHIFT") then

        Player.Sprint(game.Settings:WaitForChild("SprintSpeed").Value)

    end

end
