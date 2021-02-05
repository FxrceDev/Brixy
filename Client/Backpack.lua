local Backpack = brixy.CoreGui:WaitForChild("BackpackModule")

Backpack.ComponentChanged(Enabled):Connect(function(plr)

    local PlrBkpk = plr:CreateInstanceTable(plr.EquippedTool + plr.AvailableTools)
    local BackpackJson = PlrBkpk:EncodeJson()
    local SecurityKey = brixy:GenerateUUID()
    local SecurityKey2 = brixy:GenerateUUID()

    plr.EquippedTool.Changed:Connect(function(tool)

        plr.ToolInHand = tool

    end

    plr.AvailableTools.Changed:Connect(function(newToolTable, changed_type)

        BackpackJson.Format(if changed_type == "REMOVED" then
        
            BackpackJson.Remove(newToolTable.ChangedValue)

        elseif changed_type == "ADDED" then

            BackpackJson.Add(newToolTable.ChangedValue)
        
        end)

    end

    plr.Died:Connect(function()

        BackpackJson.Clear:Connect(function()

            local Instances = BackpackJson:GetChildren()
            Instances:Destroy()

            break

        end

    end

end
