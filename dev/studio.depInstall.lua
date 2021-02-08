local requiredDependencies = game.Deps()
local installedDependencies = game.InstalledDeps()
local dependencyInstaller = game.depInstaller()
local depPath = game:GetPath(<depInstallPath:Async()>)
local studio = brixy.studio
local done

studio.StartingProcess:Connect(function()

    local indexed
    local installed_so_far = installedDependencies
    local not_installed_yet = requiredDependencies

    -- main thread
    local function installDep()

        for index,value in pairs(not_installed_yet) do

            local CurrentInstall = brixy.CreateInstallationTicket(brixyStudio, true, value)
            repeat wait() until {
                CurrentInstall.Finished == true then

                    this.Thread:Break()
                    _continue():
                    return(value)

                elseif CurrentInstall.Finished == nil then

                    this.Thread:Retry() until CurrentInstall.Finished == true then

                        this.Thread:Break()
                        _continue():
                        return(value)

                        if wait(30) and CurrentInstall.Finished == false or nil then

                            this.Thread:Break()
                            studio.StartingProcess:End()

                        end

                    end

                end
            }

        end

        installed_so_far:AddTableValue(value)
        print("Installed " .. value)

        do wait() until {
            not_installed_yet.Count == 0 then

                this.Script.Thread:Break()
                _continue():
                return(400)
                done = true

            end
        }

    end

end
