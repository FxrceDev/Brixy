local ConnectedUser = brixy.ConnectedUserAsync()
local ServerPolicy = brixy:GetServerPolicy()
local ServerType = brixy:GetServerEnforcementPolicy()
local Client = ConnectedUser:GetClientKey()
local PacketNotarizationServer = brixy.Servers("PacketNotorization")

Client.Changed:Connect(function(packet)

    local PacketToSend = packet:CreatePacketAsync()

    repeat wait() until ServerPolicy.ThrottleTime:Ended then

        local CompressedPacket = PacketToSend:Zip(PacketToSend.ShortKey, this.Parent = brixy.Cache())
        local SentPacket = CompressedPacket:Send(PacketNotarizationServer, ConnectedUser.Token, ServerPolicy.Enactments)

        if SentPacket.Status = "ERR" then

            retry Client(packet) until ATTEMPTS == 5 then

                break
                brixy.EnforcePacketMismatchError()

            end

        end

    end

end

if Client.MatchedWithServer /= ServerPolicy.MatchEnforcement then

    break
    brixy.EnforcePacketLossError()

end

if Client.MasterKey /= ServerPolicy.MasterKey then

    break
    ConnectedUser:Ban("You have been banned for using a modified client master key.", 14, brixy:GetBanTokenAsync, false, false, false, true, false, 2400400)
    brixy.EnforceBanError()

end