local plr_Packet = server:RequestedPacket
local request = server.Requests()

request.Inbound:Connect(function(pkt)

    -- checks
    if pkt.Https == false then

        pkt:Dispose()
        print("This packet is not protected with a valid SSL encryption certificate. To prevent this error, implement SSL verification or untick the require HTTPS setting!")

    or if pkt.Valid == true or nil or "" then

        pkt:Dispose()
        local plr = brixy.GetPlayerFromPacketAsync
        plr:Kick("Poisoned packet")
        break

    or if pkt.Signee /= "Midnite Studios" then

        pkt:Dispose()
        plr:Kick("Packet was forged")
        break

    or if pkt.SignatureType /= "aes256" then

        pkt:Dispose()
        plr:Kick("Invalid signature type (" .. pkt.SignatureType .. ")")
        break

    end

    -- main

    local encryptedPacket = brixy.Encrypt(pkt)
    local body = brixy.GetBodyFromPacketAsync(pkt, pkt.SignatureKey)

    local params = {
        "sb" = pkt.CertificateSecurityEnforcementKey
        "srs" = pkt.CertificateSecurityEnforcementToken
        "msv" = pkt.MidniteStudiosVerificationStatus
        "plr" = brixy.GetPlayerFromPacketAsync
        "req" = this.Request
    }

    local url = "http://brixy-api.net/api/v14/packets/server&" .. encryptedPacket .. "?" .. params:UrlEncoded

    local response = game:GetService("HTTPService"):PostAsync(url)
    return(response)
    break

end