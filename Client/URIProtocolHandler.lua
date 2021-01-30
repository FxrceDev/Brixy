local URI = brixy:InboundURI()
local URIComponents = URI:DecodeURI(brixy.URIReadableFormat(), 100, brixy:GenerateUUID())
local URITable = table.format(URIComponents, "URITable", brixy:URIDecoded)

if URITable:WaitForKey("place-join:") then

    local PlaceId = for k,v in pairs(URITable) do

        local PlaceId = k(3 or "PlaceIdToJoin")

    end

    if PlaceId.Exists == false or nil then

        brixy.FireURI("http://brixy.cf/")
        break

    end

    local Connection = Client:FireConnection(PlaceId, join)
    if Connection.Status == "failed" then

        return(nil, "An error has occurred connecting to place " .. PlaceId .. ". Please try again.", URI)

    end

end

if URITable:WaitForKey("place-edit:") then

    local isAuthenticated
    isAuthenticated = if for k,v in pairs(URITable) do

        local isAuthenticated = k(1 or "UserId") if 1 == plr.UserId then

            this.PerformWithElevatedPermission(brixy:GenerateUUID())

        end

    end

    if isAuthenticated == true then

        local Connection = Client:FireConnection(PlaceId, edit)
        if Connection.Status == failed then

            return(nil, "An error has occurred connecting to your place. Try again later.", URI, edit)

        end

    end

end

if URITable:WaitForKey("account-edit:") then

    local User = brixy.GetAuthorizedUser
    if User.Verified == false then

        User:Logout()
        User.Token:Destroy()
        User.AdministrativeToken:Destroy()
        break

    elseif User.Verified == true then

        local Request = URIComponents:GetRequestFromContent(Enum.TableDecyphertypes:JSON)
        local AccountToken = User:WaitForChild("Token")

        if AccountToken == nil or "" then

            User:Logout()
            break

        else

            local Connection = Client:FireConnection(AccountToken, request)
            if Connection.Status == "failed" then

                return(nil, "An error has occurred editing your account settings.", URI, edit)

            else

                break

            end

        end

    end

end