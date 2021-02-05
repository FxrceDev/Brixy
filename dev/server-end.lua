local game = brixy.game
local terminal = game.RunningServer.Console["Terminal Session"]

function endServer(ip, port, intents, permission)

    local EndpointsToClose = game.Endpoints
    local StartpointsToClose = game.Startpoints

    repeat wait() until {
        terminal.Received == "end" then {

            if intents == "valid" then

                if permission == brixy.Permissions("Server Close Permission") then
                    game:EndSession()
                    terminal.PrintIn("Closing server...")

                    brixy.Dispose(ip)
                    terminal.PrintIn("Closed entry point (ip)...")

                    brixy.Dispose(ip .. ":" port)
                    terminal.PrintIn("Closed entry point (ip:port)...")

                else

                    terminal.PrintIn("You lack permission to perform this action: " .. terminal.Received)

                end

            else

                break:
                terminal.PrintIn("Invalid intentions")

            end

        }
    }

end

terminal.CommandInput:Connect(function(cmd)

    if terminal.cmd == "end" or "End" then

        endServer()

    end

end