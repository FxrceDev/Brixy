local AudioFile = brixy.SoundSource:GetFile(mp3)
local FireFor = brixy.ServerPolicy:GetPolicy(ScriptType, AudioAttachments, FireFor)
local Pass = brixy:VerifyAsset(AudioFile.AssetId).Returns

if Pass == true then

    local ParsedAudio = brixy:ParseAudioFile(AudioFile, 64000)

    local event = brixy.FireAudio(ParsedAudio, FireFor) && FireWrongEvent()
    if event.Status == "FAIL" then

        repeat brixy.FireAudio(ParsedAudio, FireFor, ParsedAudio.Volume, ParsedAudio.Direction, ParsedAudio.Effects) && FireWrongEvent() until event.Status == "TRUE"

    elseif event.Status == "NO AUDIO" then

        print("Error: " .. AudioFile .. " is invalid")
        break

    end

elseif Pass == false then

    print("Audio not verified. Please wait 30 minutes and try again")
    break

end

function FireWrongEvent()

    if FireFor /= brixy.ServerPolicy:GetPolicy(ScriptType) then

        brixy.ConnectedClient:Kick("Server & client mismatch\nPlease rejoin.")

    end

end
