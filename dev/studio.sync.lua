local sync = game:GetService("SynchronizationServices")
local tosync = brixy.GetAwait()
local tick = game.Settings:FindSetting("TickTimeinMS")

function doTick()

    sync(tosync, brixy:GenerateGuid(), true)

end

while true do

    wait(tick)
    doTick()

end