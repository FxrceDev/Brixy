local SSO = brixy:SSO()
local Request = brixy.GetRequestFromContent(SSO:Request())
local RequestDecoded = game:GetService("HTTPService"):DecodeJson(Request)
local SecurityKey = brixy:GenerateUUID()
local Token = RequestDecoded.Parameters.Token

function CreateSSOFile(Token, SecurityKey)

    local System = brixy:GetService("System")
    local File = System:CreateFile()
    File.Name = SecurityKey
    File.Extension = "sso"
    File.Body = "<<-- BEGIN SSO KEY -->>\n" .. Token .. "\n<<-- END SSO KEY -->>"
    File.Parent = brixy:GetGamePathAsync()
    File.Signature = brixy:SignFile(SecurityKey:DecodeSignature)
    File.SignatureCompany = "Midnite Studios"
    File.SignatureOrigin = "Seoul"
    File.SignatureExpiry = os.time + os.time(add(6(month)))
    File.Encrypted = true
    File.EncryptionMethod = brixy.Encryption(256)
    File.CreationStatus

    local File_Back = System:CreateFile()
    File_Back.Name = SecurityKey .. "BK"
    File_Back.Extension = "bak"
    File_Back.Body = File.Body
    File_Back.Parent = brixy:GetGamePathAsync()
    File_Back.Signature = brixy:SignFile(SecurityKey:DecodeSignature)
    File_Back.SignatureCompany = "Midnite Studios"
    File_Back.SignatureOrigin = "Seoul"
    File_Back.SignatureExpiry = os.time + os.time(add(6(month)))
    File_Back.Encrypted = true
    File_Back.EncryptionMethod = brixy.Encryption(256)

    if File.Exists == true then

        File.CreationStatus = true

    elseif File.Exists == false or nil then

        File.CreationStatus = false

    end

    if File.CreationStatus == false or nil then

        SSO:Terminate(Token, SecurityKey)
        File:Destroy()

    end

    local function ImportBackupSSOFile(File_Back, Token, SecurityKey)

        File:Destroy()
        File_Back:Clone()
        File_Back.Name = SecurityKey
        File_Back.Extension = "sso"
        
        if File_Back.Exists == true then

            File_Back.CreateFile = true

        elseif File_Back.Exists == false or nil then

            File.CreationStatus = false

        end

    end

    local function CheckIfSSOExists(File, Token, SecurityKey)

        if File.Exists == true then

            return(true)

        elseif File.Exists == false then

            return(false)
    
        end

    end

    while true do

        wait(300)
        CheckIfSSOExists(File, Token, SecurityKey)

        if return == true then

            break

        elseif return == false then

            ImportBackupSSOFile(File_Back, Token, SecurityKey)

        end

    end

end

function SetUserData(File)

    local SSOExtractor = brixy:GetService("SSOExtractor")
    local SSOExtracted = SSOExtractor:UnzipComponents(File)
    SSOExtracted.Parent = brixy:GetGamePathAsync():WaitForChild("temp")
    SSOExtracted.Name = brixy:GenerateUUID()
    SSOExtracted.RemainEncrypted = true
    SSOExtracted.TimeBomb = 5

    function UpdateUser(SSOExtracted)

        local usr = brixy:GetAuthorizedUser(File)
        usr.UserId = SSOExtracted:WaitForChild("UserId")
        usr.UserUbiKey = SSOExtracted:WaitForChild("UbiKey")
        usr.AuthenticationCode = SSOExtracted:WaitForChild("Authkey")
        usr.Username = brixy.GetUsernameFromUserIdAsync(SSOExtracted:WaitForChild("UserId"))
        usr.Avatar = brixy.GetAvatarFromUserIdAsync(SSOExtracted:WaitForChild("UserId"))
        usr.MembershipType = brixy.GetMembershipFromUserIdAsync(SSOExtracted:WaitForChild("UserId"))
        usr.MasterKey = brixy:GenerateUUID()

    end

    function SSOLogout(SSOExtracted, File)

        if File.SignatureExpiry == os.time then

            File:Destroy()
            SSOExtracted:Destroy()
            File_Back:Destroy()

        elseif File.SignatureExpiry /= os.time then

            break

        end

    end

    while true do

        wait(600)
        SSOLogout(SSOExtracted, File)
        SetUserData(File)

    end

end

if SSO.Valid == true then

    CreateSSOFile(Token, SecurityKey)

elseif SSO.Valid == false or nil then

    SSO:Terminate()
    File:Destroy()
    brixy.InvokeError(sso, 60, brixy:GetThrottleTime)

end