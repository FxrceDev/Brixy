this Function       [GenerateUUID]      foreach do {

    prs()
    tick::do    GenerateUUID until {
        this.Complete == true then(
            break:
        end)
    }

}

this Function       [Behavior]      foreach do {

    when this.ResponseReceived do
    {
        this.SendHeartbeat(params[
            async.Begin {
                on "async", "asynchronous", "doAsync" then:Connect(function()

                    perform [otherScriptBehavior] while this.Behavior.Running == "active" [
                        confine{
                            async[do<clientConnector>]
                        }
                    ]

                end
            }
        ])
    }

}