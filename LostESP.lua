-- Made by TrashScripterF

game.StarterGui:SetCore("SendNotification", {
	Title = "ESP Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})

while wait() do
  for i, v in pairs(workspace.ScavZones:GetDescendants()) do
    if v:FindFirstChild("Head") then
	if not v.Head:FindFirstChild("BillboardGui") then
		local bill = Instance.new("BillboardGui")
		bill.Parent = v.Head
		bill.AlwaysOnTop = true
		bill.LightInfluence = 1
		bill.Size = UDim2.new(0, 50, 0, 50)
		bill.StudsOffset = Vector3.new(0, 3.5, 0)
		local role = Instance.new("TextLabel")
		role.Parent = bill
		role.Text = v.Name
		role.TextColor3 = Color3.new(1,0,0)
		role.TextScaled = true
		role.BackgroundTransparency = 1
		role.Size = UDim2.new(0,50,0,50)
	end
    end	
  end
end
