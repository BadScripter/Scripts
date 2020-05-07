-- Made by TrashScripterF, GUI Lib by Wally

local loadWords = game:HttpGet("https://raw.githubusercontent.com/first20hours/google-10000-english/master/google-10000-english-usa.txt")
local words = string.split(loadWords,"\n")
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripter/Scripts/master/WallyGUILibV2.lua", true))()
local wordGui = library:CreateWindow("Word Bomb GUI")
local Credits = library:CreateWindow("Credits")
Credits:Section("Scripter: TrashScripterF")
Credits:Section("GUI Lib: Wally")
Credits:Button("Copy Discord Link", function()
    if setclipboard then
        setclipboard("https://discord.gg/czXkbCS") 
    end
end)
wordGui:Button("Get Words", function()
    local letters = ""
    for i, v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
        if v:IsA("TextLabel") and v.Parent.Name == "Letter" then
            if v.Text:len() == 1 then
                letters = letters..v.Text
            end
        end
    end
    letters = letters:lower()
    local c=0
    print("--------------------------")
    for i, v in pairs(words) do
        if v:find(letters) then
            print(v)
            c = c+1
            if c == wordGui.flags.maxWords then
                break
            end
        end
    end
    if c == 0 then
        print("No Words Found :(")
    end
end)

wordGui:Slider("Max Words", {min = 1, max=100, flag="maxWords"})

game.StarterGui:SetCore("SendNotification", {
	Title = "Word GUI Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})

print("https://discord.gg/czXkbCS")
