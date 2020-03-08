-- Made by TrashScripterF

game.StarterGui:SetCore("SendNotification", {
	Title = "ESP Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})


while wait(_G.interval) do
	for i, v in pairs(workspace:GetChildren()) do 
		if v.Name:find("LOOT") and v:IsA("BasePart") and not v:FindFirstChildWhichIsA("BillboardGui") then
			local mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude
			if mag <= _G.distance then
				local bill = Instance.new("BillboardGui", v)
				bill.AlwaysOnTop = true
				bill.LightInfluence = 1
				bill.Size = UDim2.new(0, 50, 0, 50)
				bill.StudsOffset = Vector3.new(0, 3.5, 0)
				local role = Instance.new("TextLabel", bill)
				role.Text = v.Name
				role.TextColor3 = Color3.new(1,0,0)
				role.TextScaled = true
				role.BackgroundTransparency = 1
				role.Size = UDim2.new(0,50,0,50)
			end
		elseif v.Name:find("LOOT") and v:IsA("BasePart") and v:FindFirstChildWhichIsA("BillboardGui") then 
			local mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude
			if mag > _G.distance then
				v.BillboardGui:Destroy()
			end
		end
	end
end
