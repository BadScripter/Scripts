-- Made by TrashScripterF

local tp;
local callBack = Instance.new("BindableFunction")
callBack.OnInvoke = function(val)
	if val == "Yes" then 
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = tp + Vector3.new(0,4,0)
	else
		return
	end
end

workspace.Artifacts.ChildAdded:Connect(function(v)
	if v:IsA("BasePart") then 
		tp = v.CFrame
	else
		tp = v:FindFirstChildWhichIsA("BasePart").CFrame
	end
	game.StarterGui:SetCore("SendNotification", {
		Title = "An artifact has spawned",
		Text = "Would you like to teleport to it?",
		Duration = 7.5,
		Button1 = "Yes",
		Button2 = "No",
		Callback = callBack,
	})
end)

game.StarterGui:SetCore("SendNotification", {
	Title = "Teleporter Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})
