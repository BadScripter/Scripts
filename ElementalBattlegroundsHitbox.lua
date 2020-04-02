-- Made by TrashScripterF

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripter/Scripts/master/WallyGUILibV1.lua", true))()
local hb = library:CreateWindow({
  text = "Hitbox"
})

local credits = library:CreateWindow({text='Credits'})
credits:AddLabel("Scripter: TrashScripterF\nGUI Lib: Wally")


hb:AddBox("Size", function(object, focus)
	if focus then
    	for i, v in pairs(game.Players:GetPlayers()) do 
			if v.Character and v ~= game.Players.LocalPlayer then 
				v.Character.HumanoidRootPart.Size = Vector3.new(tonumber(object.Text),tonumber(object.Text),tonumber(object.Text))
				v.Character.UpperTorso.Size = Vector3.new(tonumber(object.Text),tonumber(object.Text),tonumber(object.Text))
			end
		end
	end
end)

game.StarterGui:SetCore("SendNotification", {
	Title = "GUI Loaded",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})
