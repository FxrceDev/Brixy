local gameFile = brixy.ExtractedGame
local packages = gameFile.packages

local pmgr = brixy.studio.CoreGui.pmgr
local pmgr_add = pmgr:WaitForChild("Add Package")

function addPackage(packageId, canPurchase)

    local URL = brixy:GetUrlFromPkgId(packageId)
    local Request = brixy:PostAsync(URL)
    local Decoded = brixy:DecodeJson(Request)

    if Decoded.Response.PurchasePermission /= canPurchase then

        break:
        brixy.ShowError("CantPurchasePkg")

    else

        local File = Decoded.Response.FileUrl
        File:Download(File, brixy:GenerateUUID)

        do wait() until File.IsDownloaded == true then

            local filePath = File.Parent.Path
            local parentsChildren = filePath:GetChildren()

            if filePath.WinPerm /= brixy.WinPerm then

                break:

            else

                local decompressed = File.Downloaded:UnzipComponents()
                
                do wait() until decompressed.Exists == true then

                    decompressed.Parent = brixy.GamePath()
                    decompressed.Name = packageId

                    brixy:RegisterPkg(packageId, decompressed.Parent.Path)
                    return: {"Success"}

                end

            end

        end

    end

end

pmgr_add.Clicked:Connect(function()

    if pmgr_add.Intents == "valid" then

        addPackage(pmgr_add.Intents.IntendedPackageInstallId, brixy:GetPermAsync(pmgr_add.Intents.IntendedPackageInstallId) if return == "no" then break:)

        do wait() until return == "Success" then

            break:

        end

    end

end