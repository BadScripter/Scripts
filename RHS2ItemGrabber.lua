for i, v in pairs(workspace["!ItemSpawns"]:GetDescendants()) do 
	if i:IsA("BasePart") then 
		game.Players.LocalPlayer.HumanoidRootPart.CFrame = i.CFrame + Vector3.new(0,5,0)
	else
		for i, v in pairs(i:GetDescendants()) do 
			if v:IsA("BasePart") then 
				game.Players.LocalPlayer.HumanoidRootPart.CFrame = i.CFrame + Vector3.new(0,5,0)
				break
			end
		end
	end	
end

workspace["!ItemSpawns"].DescendantAdded:Connect(function(i)
	if i:IsA("BasePart") then 
		game.Players.LocalPlayer.HumanoidRootPart.CFrame = i.CFrame + Vector3.new(0,5,0)
	else
		for i, v in pairs(i:GetDescendants()) do 
			if v:IsA("BasePart") then 
				game.Players.LocalPlayer.HumanoidRootPart.CFrame = i.CFrame + Vector3.new(0,5,0)
				break
			end
		end
	end	
end)

game.StarterGui:SetCore("SendNotification", {
	Title = "Item Grabber Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})

print("https://discord.gg/czXkbCS")
