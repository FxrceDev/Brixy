local game = game.GamePath

function doTick()

    local tick = Server:TickData()

    if tick.Status == "404" or "bad_request" do

        server.PrintIn("Bad Response")
        server:ShutOff(brixy:GetRegistryEnforcementId)

        repeat wait() until {
            server.Status == "off" then {
                break:
            }
        }

    else

        print("Good Tick!")
        break:

    end

end

while true do

    wait(game.TickTime)
    doTick()

end