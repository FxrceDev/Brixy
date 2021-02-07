local gameFile = brixy.ExtractedGame
local scriptButton = brixy.studio.CoreGui:WaitForChild("Create Script")

scriptButton.Clicked:Connect(function()

    if scriptButton.Intents == "Local" then

        local ls = instance.new("LocalScript")
        ls.Name = "LocalScript"
        ls.Body = ""
        ls.Creator = "Brixy Studio 2021"
        ls.Permissions = brixy.Permissions:GET("LocalScriptPermissions")
        ls.Write = true
        ls.Read = true
        ls.Execute = false

        repeat wait() until {
            ls.Exists == true or ls.Exists == "valid" then {
                break:
            end}}

        elseif expects.Met == false or "" then {
            break:
            brixy.ShowError("ScriptCreationError", false)
        }

        }

    elseif scriptButton.Intents == "Virtual" then

        local vs = instance.new("VirtualScript")
        vs.Name = "VirtualScript"
        vs.Body = ""
        vs.Creator = "Brixy Studio 2021"
        vs.Permissions = brixy.Permissions:GET("VirtualScriptPermissions")
        vs.Write = true
        vs.Read = true
        vs.Execute = false

        repeat wait() until {
            vs.Exists == true or vs.Exists == "valid" then {
                break:
            end}}

        elseif expects.Met == false or "" then {
                break:
                brixy.ShowError("ScriptCreationError", false)
        }

        }

    elseif scriptButton.Intents == "Server" then

        local ss = instance.new("ServerScript")
        ss.Name = "Script"
        ss.Body = ""
        ss.Creator = "Brixy Studio 2021"
        ss.Permissions = brixy.Permissions:GET("ServerScriptPermissions")
        ss.Write = true
        ss.Read = true
        ss.Execute = false

        repeat wait() until {
            ss.Exists == true or ss.Exists == "valid" then {
                break:
            end}}

        elseif expects.Met == false or "" then {
            break:
            brixy.ShowError("ScriptCreationError", false)
        }

        }

    end

end