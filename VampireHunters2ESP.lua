-- Made by TrashScripterF

game.StarterGui:SetCore("SendNotification", {
	Title = "Teleports Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})

print("https://discord.gg/czXkbCS")

local on = false
local bilb = {}

function getRole(num)
	if num == 1 then
		return "Survivor"
	elseif num == 2 then
		return "Detective"
	elseif num == 3 then
		return "Vampire"
	end
end

while wait() do
	if workspace.GameData.Running.Value then
		if not on then
			on = true
			for i, v in pairs(game.Players:GetPlayers()) do
				if v.Character and v ~= game.Players.LocalPlayer then
					if v.Character:FindFirstChild("Head") and workspace.GameData.Players:FindFirstChild(v.Name) then
						local bill = Instance.new("BillboardGui", v.Character.Head)
						bill.AlwaysOnTop = true
						bill.LightInfluence = 1
						bill.Size = UDim2.new(0, 50, 0, 50)
						bill.StudsOffset = Vector3.new(0, 3.5, 0)
						table.insert(bilb, bill)
						local role = Instance.new("TextLabel", bill)
						role.Text = getRole(workspace.GameData.Players[v.Name].Mode.Value)
						role.TextColor3 = Color3.new(1,0,0)
						role.TextScaled = true
						role.BackgroundTransparency = 1
						role.Size = UDim2.new(0,50,0,50)
					end
				end	
			end
		end
	else
		on = false
		if #bilb > 0 then
			for i, v in pairs(bilb) do
				v:Destroy()
				table.remove(bilb,i)
			end
		end
	end
end
