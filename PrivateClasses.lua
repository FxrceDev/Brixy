local PrivateClasses = {

    brixy:GenerateUUID
    brixy:GetAuthorizedUser
    brixy:GetAvatarFromUserIdAsync
    brixy:GetGamePathAsync
    brixy:GetMembershipFromUserIdAsync
    brixy:GetRequestFromContent
    brixy:GetService
    brixy:GetThrottleTime
    brixy:GetUsernameFromUserIdAsync
    brixy:game
    brixy:AuthenticationCode
    brixy:Authkey
    brixy:Avatar
    brixy:add
    brixy:BEGIN
    brixy:BK
    brixy:SetUserData
    brixy:Signature
    brixy:SignatureCompany
    brixy:SignatureExpiry
    brixy:SignatureOrigin
    brixy:SignFile
    brixy:SSO
    brixy:SSOExtracted
    brixy:SSOExtractor

}

if table.find(PrivateClasses has game.Classes(class)) then

    class:Destroy()
    print("Restricted class " .. class)

end