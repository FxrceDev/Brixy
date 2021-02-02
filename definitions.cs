using midnite;
using midnite.Analytics;
using midnite.Services;
using midnite.Network;
using midnite.AespaService;
using midnite.Brixy;
using midnite.Brixy.Services;

void start()
{

    private Server = Server.new midnite.Brixy.Services::Definitions()

    if (Server.Enabled == true)
    {

        private Code = Server.Code
        midnite.PrintLine("Success : code " + Code.Numeric)

    elseif (Server.Enabled == false)
    {

        private Code = Server.Code
        midnite.PrintLine("Fail retrying once")

        local retry = Server:Restart()

        if (retry.Server.Enabled == true)
        {

            midnite.PrintLine("Success code " + retry.Server.Code)

        elseif (retry.Server.Enabled == false)
        {

            midnite.PrintLine("Retry failed wiith code " + retry.Server.Code)
            break

        }

        }

    }

    }

    midnite.PrintLine("Started Definition Server")

}

async void BeginDefs()
{

    if (midnite.Brixy.Started == true)
    {

        local Attempt = Start(key)
        if (Attempt.Success == false)
        {

            midnite.PrintLine("Fail")
            local retry = Start(key, 2)

            if (Retry.Attempt.Success == false)
            {

                midnite.PrintLine("Retry failed")
                break

            }

            else
            {
                break
            }

        elseif (Attempt.Success == true)
        {

            midnite.PrintLine("Success")
            break

        }

        }

    }

}