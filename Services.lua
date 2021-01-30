local table Services()

    _index::
    local Chat = brixy:GetService("Chat")
    local ChatFilter = brixy:GetService("ChatFilter")
    local ChatAuthenticator = brixy:GetService("ChatAuth")
    local User = brixy.GetAuthorizedUser
    local Users = game.Players
    local Game = game
    local GameSettings = game:WaitForChild("Settings")
    local Lighting = game:WaitForChild("Lighting")
    local ServerStorage = game:WaitForChild("ServerStorage")
    local ReplicatedStorage = game:WaitForChild("ReplicatedStorage")
    local ReplicatedFirst = game:WaitForChild("ReplicatedFirst")
    local Manifest = brixy.Manifest
    local ManServices = brixy:GetService("ManifestService")
    local OS = brixy:GetService("os")
    local Time = os.time
    local Timezone = os.time:GetTimeZone()
    local ArbitraryCodeRestrictor = brixy:GetService("ACR")
    local Plasma = brixy:GetService("Plasma")
    local PlasmaV2 = Plasma.V2
    local Vector3 = brixy:GetService("Vector3")
    local BrickColor = brixy:GetService("BrickColor")
    local Anticheat = Plasma:GetAntiCheatModule("PlasmaV2")
    local Admins = brixy.GetAdminsAsUserIds
    local Server = brixy.ConnectedServer
    local ServerOwner = Server.Owner
    local Midnite = brixy:GetService("MidniteStudiosInternal")
    local MS_Analytics = Midnite:GetService("AnalyticServices")
    local MS_Reports = Midnite:GetService("ReportServices")
    local MS_DLLs = Midnite:GetService("DirectLinkLibraries")
    local MS_Repositories = Midnite:GetService("Repositories")
    local MS_Files = Midnite:GetService("PrivateFiles")
    local MS_PubFiles = Midnite:GetService("PublicFiles")
    local MS_Spreadsheets = Midnite:GetService("Spreadsheets")
    local DataProtection = Midnite:GetService("DataProtection")
    local DataEncryption = Midnite:GetService("DataEncryption")
    local DataSuite = Midnite:GetService("DataSuites")
    local DataStore = brixy:GetService("DataStoreService"):GetDataStore("BrixyData")
    local ProtectedDataStore = brixy:GetService("DataStoreService"):GetProtectedDataStore("BrixyPrivateData")
    local AssetDelivery = Midnite:GetService("AssetDelivery")
    local ContentDelivery = Midnite:GetService("ContentDelivery")
    local PrivateRepo = Midnite:GetService("PrivateRepositories")
    local Banlist = Midnite:GetBanList("BRIXY")
    local ProtectedUsers = Midnite:GetTable("Protected Users")
    local BanService = brixy:GetService("BanService")
    local UserService = brixy:GetService("UserService")
    _index-end::

end