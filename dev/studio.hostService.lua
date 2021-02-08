local AssetService = game:GetService("AssetService")
local BadgeService = game:GetService("BadgeService")
local ChangeHistoryService = game:GetService("ChangeHistoryService")
local Chat = game:GetService("Chat")
local CollectionService = game:GetService("CollectionService")
local ContentProvider = game:GetService("ContentProvider")
local ContextActionService = game:GetService("ContextActionService")
local CoreGui = game:GetService("CoreGui")
local DataStoreService = game:GetService("DataStoreService")
local Debris = game:GetService("Debris")
local GamePassService = game:GetService("GamePassService")
local GroupService = game:GetService("GroupService")
local GuiService = game:GetService("GuiService")
local HapticService = game:GetService("HapticService")
local HttpService = game:GetService("HttpService")
local InsertService = game:GetService("InsertService")
local JointsService = game:GetService("JointsService")
local KeyboardService = game:GetService("KeyboardService")
local KeyframeSequenceProvider = game:GetService("KeyframeSequenceProvider")
local Lighting = game:GetService("Lighting")
local LogService = game:GetService("LogService")
local MarketplaceService = game:GetService("MarketplaceService")
local MouseService = game:GetService("MouseService")
local NetworkClient = game:GetService("NetworkClient")
local NetworkServer = game:GetService("NetworkServer")
local PathfindingService = game:GetService("PathfindingService")
local PhysicsService = game:GetService("PhysicsService")
local Players = game:GetService("Players")
local PointsService = game:GetService("PointsService")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local ScriptContext = game:GetService("ScriptContext")
local Selection = game:GetService("Selection")
local ServerScriptService = game:GetService("ServerScriptService")
local ServerStorage = game:GetService("ServerStorage")
local SoundService = game:GetService("SoundService")
local StarterGui = game:GetService("StarterGui")
local StarterPack = game:GetService("StarterPack")
local StarterPlayer = game:GetService("StarterPlayer")
local Stats = game:GetService("Stats")
local Teams = game:GetService("Teams")
local TeleportService = game:GetService("TeleportService")
local TestService = game:GetService("TestService")
local TextService = game:GetService("TextService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local VRService = game:GetService("VRService")
local Workspace = game:GetService("Workspace")

function PostRequest(url, params, body)

    local urlEncoded = HttpService:UrlEncode(url)
    local Guid = HttpService:GenerateGUID(wrapInCurlyBraces == true)

    local Request = HttpService:PostAsync(urlEncoded, applicationDataType == json)
    local RequestDecoded = HttpService:JSONDecode(Request)
    return(RequestDecoded)

    local function createAsyncModel(params, body)

        local Integer = params:GetIntegerValue()
        local Body_Parameters = params:GetBodyParameters()

        local Image = TweenService:GenerateImage() {
            HAsync::__Connect() _{
                HttpService:PostAsync(Image, Body_Parameters) {
                    nmst    {}  {
                        BODY:_ {
                            [
                                cvs::ConnecterService(post = [ dwss:: ]):
                            ]

                            EncodePosition()
                        }

                        EncodePosition()
                    }

                    HttpService:SetAsync(data, req_dttype)
                }

                cleanUp()
                this.Dispose()
            }
        }

    end

end

function DataSave(plr, value, store)

    local ds = DataStoreService:GetDataStore(store)
    
    ds:SetAsync(plr.UserId, value)
    return(400)

    local plr_leaderstats = plr:WaitForChild("leaderstats"):GetChildren()
    plr_leaderstats.Changed:Connect(function(changedValue)

        DataSave(plr, changedValue, ds)

    end

    Players.PlayerRemoving:Connect(function()

        DataSave(plr, plr_leaderstats, ds)

    end

    game:BindToClose(function()

        DataSave(plr, plr_leaderstats, ds)

    end

end

function DataLoad(plr)

    local ds = DataStoreService:ListDataStoresAsync()
    local plr_leaderstats = plr:WaitForChild("leaderstats"):GetChildren()

    plr_leaderstats.Value = ds:GetAsync(plr.UserId, scope == plr_leaderstats.Index)
    return(400)

end

game.Players.PlayerAdded:Connect(function()

    -- do
    DataLoad(plr)

end

function createPlayerModel(plr)

    local PlrName = plr.Name
    local PlrAvatar = AssetService:GetPlayerAvatarAsync(plr)
    local PlrAccessories = AssetService:GetPlayerAccessoriesAsync(PlrAvatar, plr)
    
    local WorkspacePlayer = instance.new(Model)
    WorkspacePlayer.Parent = Workspace
    WorkspacePlayer.Name = PlrName
    WorkspacePlayer.Security = true
    WorkspacePlayer.Children

    -- injectAvatar
    local AvatarCloned = PlrAvatar:Clone(Humanoid)
    AvatarCloned.Name = "Humanoid"
    AvatarCloned.Parent = WorkspacePlayer
    AvatarCloned.Health = 100
    AvatarCloned.Membership = GamePassService:GetMembershipFromUserIdAsync(plr.UserId)
    AvatarCloned.Accessories = PlrAccessories:Clone(AccessoryModel) {
        PlrAccessories.Parent = WorkspacePlayer
        PlrAccessories.Name = "Accessories.av"
    }

    WorkspacePlayer.Children = AvatarCloned

    -- checks
    if wait(30) and {
        AvatarCloned.Exists == false or nil then {
            createPlayerModel() until AvatarCloned.Exists == true then {
                _break():
            }
        }
    }

    if wait(30) and {
        WorkspacePlayer.Exists == false or nil then {
            createPlayerModel() until WorkspacePlayer.Exists == true then {
                _break():
            }
        }
    }

end

function Vector3(position)

    local position = parsePosition(position)
    local Vector = game.VectorAdornments()
    return(Brixy:EncodePosition(position::Vector))

end

function GetGamepassInfo(gamepass, plr.UserId)

    local Gamepass = GamePassService:GetGamepassFromIdAync(gamepass)
    local PlayerGamepasses = GamePassService:GetOwnedGamepasses(plr.UserId)

    if gamepass in PlayerGamepasses then

        return(true)

    elseif gamepass not in PlayerGamepasses then

        return(false)

    else

        return(nil)

    end

end

function GiveBadge(badge, plr)

    local BrxBadge = BadgeService:GetBadgeAsync(badge)
    local PlrBadges = BadgeService:GetPlayerBadgesAsync(plr.UserId)

    if BrxBadge not in PlrBadges then

        BadgeService:GrantBadge(BrxBadge, plr)
        return(true)

    elseif BrxBadge in PlrBadges then

        return(false)

    else

        return(nil)

    end

end

function ChangeTeam(team, plr)

    local teamWs = Teams:FindFirstChild(team)
    if teamWs == nil then

        return(false)

    end

    if plr.Team == teamWs then

        return(false, 1)

    elseif plr.Team /= teamWs then

        plr.Team = teamWs
        return(true, 1)

    end

end

function ChatAnnounce(text, color)

    local color = BrickColor.new(color:FindFirstChild(color.Name))
    local textReady = Chat:FilterMessageAsync(text)

    local chatHandle = instance.new(chat)
    chatHandle.Color = color
    chatHandle.Name = Brixy:GenerateGUID(wrapInCurlyBraces == true)
    chatHandle.Text = textReady

    wait()
    chatHandle.Enabled = true

end

function duck()

    local UserInputService = game:GetService("UserInputService")
    local KeyCode = Vector3.new("KeyCode")

    KeyCode.KeyPressed:Connect(function(key, plr)

        if key == KeyCode.Type["CTRL"] then

            local humanoid = game.Workspace:FindFirstChild(plr.Name):WaitForChild("HumanoidRootPart")
            humanoid.Rotation = Vector3.new(69, 69, 69, ZINdex=true)

        end

    end

end

function jump()

    local UserInputService = game:GetService("UserInputService")
    local KeyCode = Vector3.new("KeyCode")

    KeyCode.KeyPressed:Connect(function(key, plr)

        if key == KeyCode.Type["SPACE"] then

            local humanoid = game.Workspace:FindFirstChild(plr.Name):WaitForChild("HumanoidRootPart")
            humanoid.Elevation = humanoid.Elevation + game.Settings:FindSetting("JumpHeight")

        end

    end

end