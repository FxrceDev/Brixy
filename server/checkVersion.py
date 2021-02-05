import midnite
from midnite import updates
from midnite import version
from midnite import brixy

def checkVersion:
    if midnite.version != midnite.brixy:LatestVersion:
        print("Outdated")
        str url = "https://midniteapi.net/api/v14/downloads?brixy&latest_version&serveto=usr"
        request = midnite.updates.requestUpdate(url)
        while True:
            wait() until request.Complete == True:
            break
            return("Success")
            
            else return("Fail")


while midnite.UserConnecting == True:
    checkVersion()
    if return == "Success":
        break
        
        elif return == "Fail":
            midnite.User:BreakConnection()