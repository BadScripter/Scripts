-- Made by TrashScripterF, GUI Lib by Wally

_G.set = false
local library = loadstring(game:HttpGet("https://pastebin.com/raw/7Z6TzFnv", true))()
local Auto = library:CreateWindow({
  text = "Blox no Hero 2 Autofarm"
})

local credits = library:CreateWindow({text='Credits'})
credits:AddLabel("Scripter: TrashScripterF\nGUI Lib: Wally")

Auto:AddToggle("Autofarm", function(state)
  	_G.set = state
 	while _G.set do
		local A_1 = game.Players.LocalPlayer.Character
		local A_2 = A_1.Humanoid
		local Event = game:GetService("ReplicatedStorage").Remotes.Events.General.Train
		Event:FireServer(A_1, A_2)
		wait()
	end
end)



game.StarterGui:SetCore("SendNotification", {
	Title = "Autofarm Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})

print("https://discord.gg/czXkbCS")



