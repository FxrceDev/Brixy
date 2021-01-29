local GameTime = game.Lighting.Time
local Tick = game.Settings:WaitForChild("Tick")
local ThrottleTime = brixy.GetThrottleTime
local DayTimeinSeconds = game.Settings:WaitForChild("DayTime")
local NightTimeinSeconnds = game.Settings:WaitForChild("NightTime")

while true do

    if GameTime.Quarter == "day" then

        wait(Tick)
        GameTime.Value = GameTime.Value + DayTimeinSeconds.Value:Get(1)
        break

    elseif GameTime.Quarter == "night" then

        wait(Tick)
        GameTime.Value = GameTime.Value + NightTimeinSeconnds.Value:Get(1)
        break

    end

end