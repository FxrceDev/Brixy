local Player = brixy.GetAuthorizedUser
local Players = game.Players

function CreateChatBox()

    local ChatContainer = instance.new("ScreenGui")
    ChatContainer.Parent = Player.CoreGui
    ChatContainer.Name = "Chat"
    ChatContainer.Manifest = brixy:CreateManifest(ChatContainer.Name, nil, nil, true, 500)
    ChatContainer.IgnoreGuiInset = true
    ChatContainer.FitToScreen = true
    ChatContainer.Size = Vector3.new(125, 70, 125, 70)
    ChatContainer.Position = Ratio:TOP_LEFT

    local Textbox = instance.new("Textbox")
    Textbox.Parent = ChatContainer
    Textbox.Name = "TextBox_1"
    Textbox.Manifest = brixy:CreateManifest(Textbox.Name, nil, brixy.Chat, true, 500)
    Textbox.IgnoreGuiInset = false
    Textbox.FitToScreen = true
    Textbox.Size = Vector3.new(100, 20, 100, 20)
    Textbox.Position = Ratio:BOTTOM
    Textbox.Anchor = Vector3.new(Ratio.Anchor:LEFT_RIGHT)

    local Sendbutton = instance.new("Button")
    Sendbutton.Parent = ChatContainer
    Sendbutton.Name = "Send"
    Sendbutton.Manifest = brixy:CreateManifest(Send.Name, nil, brixy.Chat, false, 250)
    Sendbutton.IgnoreGuiInset = true
    Sendbutton.FitToScreen = true
    Sendbutton.Size = Vector3.new(25,25,25,25)
    Sendbutton.Position = Ratio:RIGHT
    Sendbutton.Anchor = Vector3.new(Ratio.Anchor:RIGHT)

    repeat wait() until ChatContainer.Exists == true && Textbox.Exists == true && Sendbutton.Exists == true then

        brixy.Chat:Start(brixy:CreateLog("ChatCreation", "log", true, CreateChatBox.Log))

    end

    Sendbutton.Clicked:Connect(function()

        local Text = Textbox.TypedText
        local TextFiltered = brixy.FilterChat(Text, bool)

        if TextFiltered.Status == false then

            break
            print("Chat was filtered not sending")

        elseif TextFiltered.Status == true then

            local fire_event = brixy.FireChatEvent(Player, TextFiltered, os.time, BrickColor.new(math.random(0,100)))
            if fire_event.Status == "fail" then

                break
                print("Failed")

            elseif fire_event.Status == "success" then

                break

            end

        end

    end

end