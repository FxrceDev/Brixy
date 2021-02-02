import midnite
from midnite import update

def update:
    upd = midnite:DownloadAsync(midnite.LatestVersion.UpdateFile, midnite:GetGamePathAsync)
    upd.Parent = midnite:GetGamePathAsync
    upd.Name = midnite.LatestVersion
    upd.Sync = true

def function_1:
    print("start")
    if midnite.InstalledVersion <= midnite.LatestVersion:
        print("outdated")
        update(midnite.LatestVersion.UpdateFile, midnite:GetGamePathAsync)

    end
end

midnite.GameLaunched:Connect(def funct_st:

    function_1()

    while true do:

        def st_:

            ws:
            connect::GetGamePathAsync()
            connect::GetUserKey()
        end
    end

end)
