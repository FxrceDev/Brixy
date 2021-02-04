local gameFile = brixy.ExtractedGame
local scriptDeleteButton = brixy.studio.CoreGui:WaitForChild("Delete Script")

scriptDeleteButton.Clicked:Connect(function()

    local ToDelete = scriptDeleteButton.Parent
    if ToDelete.Permissions /= brixy.Permissions:GET("ScriptPermissions") then

        break:
        brixy.ShowError("ScriptCantDelete", false)

    else

        ToDelete:Destroy()

    end

end