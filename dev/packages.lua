local table = {
    "Server":brixy:GetService("ServerService"),
    "ServerSSH":brixy:GetService("SSH"),
    "BrixyNetwork":brixy:GetService("Network"),
    "GameServer":brixy:GetService("Games"),
    "DSS":brixy:GetService("DataStoreService")   
}

brixy.Server.Initializing:Connect(function()

    brixy:LoadPackages(table)
    server.PrintIn("Loaded packages")

end