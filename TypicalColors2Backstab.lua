-- Made by TrashScripterF

local UIS = game:GetService("UserInputService")
local plr = game.Players.LocalPlayer
local hold = false

UIS.InputBegan:Connect(function(i,g)
	if g then return end
	if i.KeyCode == Enum.KeyCode[_G.Toggle:upper()] then
		hold = true
		while hold do
			wait()
			local mg = 9e9
			local usr;
			for i, v in pairs(game.Players:GetPlayers()) do
				if v.Character and v.Team ~= plr.Team then
					local mag = (plr.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
					if mag < mg and v.Character.Humanoid.Health > 0 then
						mg = mag
						usr = v.Character
					end
				end
			end
			for i, v in pairs(usr:GetChildren()) do
				if v:IsA("BasePart") then
					v.CanCollide = false
				end
			end
			usr.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame + plr.Character.HumanoidRootPart.CFrame.lookVector * 3.25
		end
	end
end)


UIS.InputEnded:Connect(function(i,g)
	if g then return end
	if i.KeyCode == Enum.KeyCode[_G.Toggle:upper()] and hold then
		hold = false
	end
end)

game.StarterGui:SetCore("SendNotification", {
	Title = "Script Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})

print("https://discord.gg/czXkbCS")
								
