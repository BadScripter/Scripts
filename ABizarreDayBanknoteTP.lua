-- Made by TrashScripterF

game.StarterGui:SetCore("SendNotification", {
	Title = "TPer Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})

local old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

if _G.Loop then
	while _G.Loop do
		old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		for i, v in pairs(workspace.ItemSpawnAreas.MoneySpawns:GetChildren()) do 
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
			wait(0.25)
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = old
		wait(_G.Time)
	end
else
	for i, v in pairs(workspace.ItemSpawnAreas.MoneySpawns:GetChildren()) do 
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
		wait(0.25)
	end
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = old
end
