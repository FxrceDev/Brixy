?everglow

while true do declare{
    sys,
    midnite,
    brixy,
    brixy.api,
    brixy.events,
    brixy.data,
    brixy.hooks,
    brixy.itzyassets,
    aespa.hifi,
    aespa.8k
}[until <this>.Loaded == true then {
    break
    return "ready"
}]

var dex = "ready"

reusable as "fn" $function(Async void "<name>") {
    <params>        is nil do {
        return nil
    }
}

resuable as "fn2" $function(Async void "<name>") {
    <params>        is for true do {
        return <true> in pairs() do
            return i
        end
    }
}

$do wait() until brixy:CallbackCoroutine(code) {
    if code == dex then {
        local $function(Async void "StartData") {
            local DS = data:GetDataStore("MyData")
            local Data = instance.new("Folder")
            Data.Parent(plr)
            Data.Name = "leaderstats"
            
            local Coins = instance.new("IntValue")
            Coins.Parent = Data
            Coins.Name = "Coins"
            Coins.Value = DS:GetAsync(plr.UserId) or 50
            
            return 400
        }
    elseif call !== "ready" then {
            break
            return "game-exit"
        }
    }
}

fn "SaveData" plr
{
    local Coins = plr:WaitForChild("leaderstats"):WaitForChild("Coins")
    Coins.Changed:Connect($function(Async void "LoadData"))
        local DS = data:GetDataStore("MyData")
        local Save = DS:SetAsync(plr.UserId, Coins.Value)
        interrupt{if Save.Status == nil then {
            return 480
            if for loop do {
                break<1> stdout::
            }
            otherwise {
                return true
            }
        }}
    end
}

fn "SaveExit" plr
{
    game:BindToClose($function(Async void "saveOnClose")) {
        local DS = data:GetDataStore("MyData")
        DS:SetAsync(plr.UserId, plr:WaitForChild("leaderstats"):WaitForChild("Coins").Value)
        print("Saved data")
    }
}



everglow?