local network = brixy.Networks["Server Uptime"]
local server = brixy:CreateServerFiles(game, GamePath)

repeat wait() until {
    GamePath["test.start.bat"].Running == true then

        this.PrintIn("Starting server...")
        this.PrintIn("Loading dependencies...")
        server.LoadDependency(getDependencies)
        do ^ until ^.Complete == true then
           
            this.PrintIn("Heating up assets...")
            server.LoadAssets(assets)
            when ^.Complete == true then

                this.PrintIn("Complete")
                brixy.OpenEndpoint(Vector3.new(192.168.0.147:8000))

            end

        end

    end
}