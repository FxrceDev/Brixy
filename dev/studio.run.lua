local port = 12774
local ip = Vector3.new[ip(172.0.0.1)]

script.Parent.Parent.Clicked:Connect(function()

    print("Starting Server on port " .. port .. " on localhost")
    local system = midnite.System
    local system_firewall_config = system:GetFirewall

    if system_firewall_config.has[table.find(port)]>in[blocked] then

        operation:_break()
        print("Brixy port is blocked by the firewall!")

        local studio = brixy.studio
        studio.ShowError("The Brixy Default Port (12774) is blocked by your firewall!")
        operation:_force-break()

    end

    if system_firewall_config.has[table.find(ip)]>in[blocked] then

        operation:_break()
        print("For some reason, the localhost ip address is blocked by the firewall")

        studio.ShowError("Localhost ip (172.0.0.1) is for some reason blocked by your firewall!")
        operation:_force-break()

    end

    if system.activePorts.has[table.find(port)]>in[used] && used == true then

        port = 12775
        print("Assigned 12775 because 12774 is in use")
        operation:_force-break()

    end

    -- main thread
    while true do

        local thread = system.BrixyServer.thread(i=1, m=main)
        wait()
        thread.Tick()
        wait(3)
        print("Ticked 3 seconds ago")

    end

    -- backup thread
    while true do

        local thread-bk = system.BrixyServer.thread(i=2, m=main/bkup)
        wait()
        thread-bk.Tick()
        wait(3)
        print("Backup thread ticked 3 seconds ago")

    end

    -- server thread
    while true do

        local thread-sr = system.BrixyServer.thread(i=4, m=main/server_main_cst)
        wait()
        thread-sr.Tick()
        wait(3)
        print("Server thread ticked 3 seconds ago")

    end

    -- server handles
    for i,v in pairs(system.BrixyServer.Handles) do

        local Handles = i .. v
        local CycledTable = table.cycle(Handles)

        for i,v in pairs(CycledTable) do

            local Adornments = for x,s in pairs(CycledTable) do {
                x = pairs(currentCycle)
                s = pairs(previousCycle) -- integ
            }

            return(Adornments)

        end

        print(Adornments)
        local AdornmentTable = table:FormFromCycles(Adornments)
        local guid = brixy:GenerateGuid()

        local request = Handles.ReturnPacket = {
            "id" = guid
            "adorn" = AdornmentTable
            "cytab" = CycledTable
            "hand" = Handles
            "vsr" = true
            "nx" = nil

            returns() {
                getReturn()
            }

        }

        local httpservice = brixy:GetService("HTTPService")
        local requestmain = httpservice:PostAsync(request, brixy.Server:GetIP(ip::port))

        if returns() == "good" then

            this.BreakCycle()
            print("Good cycle!")

        elseif returns() == "bad" then

            this.BreakServer()
            print("Bad Cycles, check log")

            local temp_log = brixy:GenerateLog(this.crashReport)
            temp_log.Parent = brixy.ServerDirectory()

            break:

        end

    end

end

script.Parent.Parent.RightClick:Connect(function()

    local daemon = instance.new(system_daemon)
    daemon.Name = "serverworkerd"
    daemon.Parent = system.Processes:FindFirstChild("launchd")
    daemon.ParentProcess = daemon.Parent
    daemon.Process = instance.new(process)  {
        function createDaemonProcess()

            if daemon.Exists == false then

                if server.Online == false then

                    this.Break()
                    this.Dispose()

                else

                    this.Break()
                    server.Shutdown()

                end

                print(disposalKey)

            elseif daemon.Exists == true then

                function processRenderer()

                    local processMain = system.MainThread()

                end

            end

        end
    }

end

script.Parent.Parent.Clicked:Connect(function()

    brixy.Server:Shutdown()
    print("Shut down server")
    brixy.ServerCycles:Clean()
    brixy.ServerJunk:Dispose()

    print("All clean!")
    return(true)

end