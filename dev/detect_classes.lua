local game = game
local classes
local file = game:Decompress()

function DetectClasses(file.Components)

    local Scripts = file.Components:WaitForChild("GameScripts")
    local Scripts_Server = file.Components:WaitForChild("ServerScripts")
    local Scripters_Plr = file.Components:WaitForChild("ClientScripts")

    brixy.ScanScript:Connect(function(Scripts)

        for k,v in pairs(Scripts.Intents) do

            for each k do {
                k:Print()
                k:Sanitize()
                for each k do {
                    k:Prepare();
                }
            } in pairs(Intents) do {
                if k.includes == Intents do

                    Scripts.Actions == k:GetIndex(v, nil, 0)

                    if Intents == nil or "" do

                        brixy:GetAuthorizedUser:Kick("Failed to connect to the server")
                        break

                    end

                end
            }

        end

        for k,v in pairs(Scripts.Text) do

            when Text.Contains == <detected-class>:brixy:GetSystemClasses() do

                local class = detected-class
                if class == brixy:GetOnlineClasses(detectedClass) do

                    local this_Script = Scripts:GetChecking()
                    this_Script.LineRunning:SetBehavior(detectedClass)

                    if this_Script.Behavior /= detectedClass do

                        local function sanitizeScript(detectedClass, runningBehavior)

                            brixy.Sanitize:Connect(function(toSanitize)

                                if toSanitize /= availableClasses do

                                    break

                                elseif toSanitize == availableClasses do

                                    repeat {
                                        this_Script.LineRunning:SetBehavior(detectedClass);
                                    } until this_Script.LineRunning.Behavior == detectedClass

                                end

                            end

                        end

                    elseif this_Script.Behavior == detectedClass do

                        print("Complete")
                        this.Dispose()
                        print("Disposed")
                        break

                    end

                end

            end

        end

    end

end

-- setup file

game.Started:Connect(function()
    
    file.Name = "GameFile" .. brixy:GetSystemTime(check:brixy:GetUserTimeZone)
    file.DecryptKey = brixy:GenerateUUID()
    file.Token = brixy:GenerateUUID(Vector3.new("NoDashes,NoBrackets"))
    file.Suppressed = false
    file.Enumerator = false
    file.Vector = true
    file.Class = false
    file.Hash = brixy:GenerateFileHash(file)

    print("Created decompressed file; begin script filing")

    local reusable = detectedClasses( createMassTable: {
        "index_main":   dex
        "index_bk":     services
        "index_scr":    scripts
        "index_reg":    scripts_registry
        "index_sreg":   system_registry
    })

    if game.Availability == nil or "not" then

        print("Game taking long to load")

        repeat {
            reusable() until {
                game.Availability == "yes" then
                    break
                end
            }
        };

    end

end
