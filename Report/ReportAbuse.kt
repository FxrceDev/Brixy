#define "Midnite"
#define from {
    "Midnite" -> {
        "Reports",
        "Analytics",
        "ClientConfiguration";
    }
}

def function ;"CreateUI" {

    depends[ClientConfiguration]    {
        if {1 == 1} do {
            Logger.SendMessage(ClientConfiguration) {\break;}
        }
    }

    repeat {
        waitFor(0) until {

            #define     ().create;\
            (

                var UI = instance.new("ScreenGui")
                UI.Parent = game
                UI.Name = "ReportUI"
                UI.Post = null
                UI.Key = null

                var Components = instance.fetch("ReportUi")::FromComponent {
                    Reports.UI();
                }

                Components.Parent = UI
                Components.Name = "comp"
                Components.Post = null
                Components.Key = null

            end)

        }
    }

}

when {
    game.IsLoaded == true then {
        function do {
            "CreateUI"(null);
        }
    }
}