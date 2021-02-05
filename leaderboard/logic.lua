local leaderboard = game.Players.LocalPlayer.CoreGui["LeaderboardGUI"]
local players = game.Players
local player_stats = players:WaitForChild("leaderstats")

for i,v in pairs(player_stats) do

    print(i .. " " .. v)
    local sorted_players

    while true do

        foreach player_stats do

            if player_stats.Value >= a:player_stats.Value do

                sorted_players = a

            end

        end

    end

end

players.PlayerAdded:Connect(function(sorted_players)

    leaderboard:Sort(sorted_players, game.Settings:WaitForSetting("LeaderboardSortType"))

end