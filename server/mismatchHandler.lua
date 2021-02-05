local player = brixy.GetAuthorizedUser()

b():

    if player.Verified == "false" then

        break:
        player:Logout()
        player.Token:Destroy()
        player.AdministrativeToken:Destroy()
        \.break:

    else

        \.break:

    end

end():

function whenMismatched()

    local plr_ping = player.Ping()
    wait(5)
    if plr_ping >= game.MaximumPingLimit then

        player:Kick("Packet mismatch!")
        break

    else

        break
        print("Mismatch has been averted")

    end

end

while true do

    wait(5)
    if player.Ping >= game.MaximumPingLimit then

        whenMismatched()

    end

end