local files = brixy.GamePath("com.midnite.brixy.studio")
local dependencies = file:WaitForChild("Dependencies")

function loadDep()

    if dependencies.Children.Count == "" or nil or 0 do

        break:
        print("No dependencies")

    else

        local initDep = dependencies:Initialize()

    end

end

function startEngine()

    files:Initialize()

end

files["studio21.exe"].Starting:Connect(function()

    loadDep()
    startEngine()

    if return == nil then

        do {
            loadDep()
            startEngine()
        }: until files.Loaded == true then {
            break:
        }

    break

end