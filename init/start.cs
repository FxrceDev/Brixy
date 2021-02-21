using brixy;
using brixy.versions;
using midnite;
using midnite.downloads;
using http;
using http.requests;
using http.post;
using http.read;
using http.modify;
using System;
using System.Downloads;
using System.FileSystem;
using System.AccessViolationException;

void update() {

    string Version = bver.Value;
    string RequiredVersion = brixy.GetCurrentVersion();

    string DownloadUrl = http.read("https://midnite.ml/downloads/brixy?getlatestversion&id=" + brixy.GenerateID);
    if (DownloadUrl.MatchesBrixyRequirements); {

            System.Downloads(DownloadUrl); + System.FileSystem(GetBrixyInstallRoot);

    }

}

if (bver.Value /= brixy.GetCurrentVersion()); {

    brixy.ShowError("You are not using the latest version. Updating now...");

    update();

}
