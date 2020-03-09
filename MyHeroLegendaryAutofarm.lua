-- Made by TrashScripterF, GUI Lib by Wally

_G.set = false
local library = loadstring(game:HttpGet("https://pastebin.com/raw/7Z6TzFnv", true))()
local Auto = library:CreateWindow({
  text = "My Hero Legendary Autofarm"
})

local credits = library:CreateWindow({text='Credits'})
credits:AddLabel("Scripter: TrashScripterF\nGUI Lib: Wally")

Auto:AddToggle("Autofarm", function(state)
  	_G.set = state
 	while _G.set do
		for i, v in pairs(workspace:GetChildren()) do
			if v:IsA("Model") then 
				if _G.Mobs[v.Name] ~= nil then 
					if _G.Mobs[v.Name] and v.Humanoid.Health > 0 then 
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Head.CFrame + Vector3.new(0,10,0)
						local A_1 = game:GetService("Players").LocalPlayer.PlrStats.Stats.Melee
						local A_2 = v.Head
						local A_3 = v.Head.Position
						local Event = game.Players.LocalPlayer.Character.Combat.Damage
						Event:FireServer(A_1, A_2, A_3)
					end
				end
			end
		end
		if _G.Fast then
			game:GetService("RunService").Stepped:Wait()
		else
			wait()
		end
	end
end)



game.StarterGui:SetCore("SendNotification", {
	Title = "Autofarm Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})

print("https://discord.gg/czXkbCS")

