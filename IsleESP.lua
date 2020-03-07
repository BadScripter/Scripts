-- Made by TrashScripterF

assert(getrawmetatable, "Your exploit is not supported!")
local mt = getrawmetatable(game)
make_writeable(mt)
local old = mt.__namecall
local getnamecallmethod = getnamecallmethod or get_namecall_method

mt.__namecall = newcclosure(function(self,...)
    local a = {...}
    local m = getnamecallmethod()
    if m == "FireServer" or m == "InvokeServer" then 
        if self.Name:find("Kick") then 
            return false
        end
    end
    return old(self,...)
end)


local mes = Instance.new("Message", workspace)
mes.Text = "ESP LOADED, For more scripts check your console (F9) for the discord"
wait(2)
mes:Destroy()

print("https://discord.gg/czXkbCS")

if _G.options["Locations"] then
	for _, v in pairs(workspace.Markers:GetDescendants()) do
		if v:IsA("BillboardGui") then
			v.Enabled = true
			v.AlwaysOnTop = true
		end
	end
end

local m = game.Players.LocalPlayer:GetMouse()
m.KeyDown:connect(function(k)
	k = k:lower()
	if k == "b" then
		if _G.options["Hunters"] then
			for i,v in pairs(game.Workspace.AIHunter:GetDescendants()) do
				if v:IsA("BasePart") and v.Name == "HumanoidRootPart" then
					local b1 = Instance.new("BillboardGui")
					local t1 = Instance.new("TextLabel")
					BillboardGui = b1
					TextLabel = t1
					BillboardGui.Parent = v.Parent
					BillboardGui.AlwaysOnTop = true
					BillboardGui.LightInfluence = 1
					BillboardGui.Size = UDim2.new(0, 50, 0, 50)
					BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
					TextLabel.Parent = BillboardGui
					TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
					TextLabel.BackgroundTransparency = 1
					TextLabel.Size = UDim2.new(1, 0, 1, 0)
					TextLabel.Text = v.Parent.Name
					TextLabel.TextColor3 = Color3.new(1, 0, 0)
					TextLabel.TextScaled = true
				end
			end
		elseif _G.options["Traps"] then
			for i, v in pairs(workspace:GetChildren()) do 
				if v.Name:find("Trap") or v.Name:find("Tripwire") then 
					if v:FindFirstChildWhichIsA("BasePart") then 
						local b2 = Instance.new("BillboardGui")
						local t2 = Instance.new("TextLabel")
						BillboardGui = b2
						TextLabel = t2
						BillboardGui.Parent = v
						BillboardGui.AlwaysOnTop = true
						BillboardGui.LightInfluence = 1
						BillboardGui.Size = UDim2.new(0, 50, 0, 50)
						BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
						TextLabel.Parent = BillboardGui
						TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
						TextLabel.BackgroundTransparency = 1
						TextLabel.Size = UDim2.new(1, 0, 1, 0)
						TextLabel.Text = v.Name
						TextLabel.TextColor3 = Color3.new(1, 0, 0)
						TextLabel.TextScaled = true
					end
				end
			end
		elseif _G.options["Items"] then
			for i, v in pairs(workspace.Tools:GetChildren()) do 
				if v:FindFirstChild("Handle") then 
					local b3 = Instance.new("BillboardGui")
					local t3 = Instance.new("TextLabel")
					BillboardGui = b3
					TextLabel = t3
					BillboardGui.Parent = v
					BillboardGui.AlwaysOnTop = true
					BillboardGui.LightInfluence = 1
					BillboardGui.Size = UDim2.new(0, 50, 0, 50)
					BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
					TextLabel.Parent = BillboardGui
					TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
					TextLabel.BackgroundTransparency = 1
					TextLabel.Size = UDim2.new(1, 0, 1, 0)
					TextLabel.Text = v.Name
					TextLabel.TextColor3 = Color3.new(0, 1, 0)
					TextLabel.TextScaled = true
				end
			end
		elseif _G.options["Threats"] then
			for i, v in pairs(workspace.Threats:GetDescendants()) do 
				if v.Name:find("HumanoidRootPart") then 
					local b4 = Instance.new("BillboardGui")
					local t4 = Instance.new("TextLabel")
					BillboardGui = b4
					TextLabel = t4
					BillboardGui.Parent = v.Parent
					BillboardGui.AlwaysOnTop = true
					BillboardGui.LightInfluence = 1
					BillboardGui.Size = UDim2.new(0, 50, 0, 50)
					BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
					TextLabel.Parent = BillboardGui
					TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
					TextLabel.BackgroundTransparency = 1
					TextLabel.Size = UDim2.new(1, 0, 1, 0)
					TextLabel.Text = v.Parent.Name
					TextLabel.TextColor3 = Color3.new(1, 0, 0)
					TextLabel.TextScaled = true
				end
			end
		end
	end
end)

m.KeyDown:connect(function(k)
	k = k:lower()
	if k == "n" then
		-- Chest ESP delete
		for i,v in pairs(game.Workspace.AIHunter:GetDescendants()) do
			if v.Name == "BillboardGui" then
				v:Destroy()
			end
		end
		for i,v in pairs(workspace:GetChildren()) do 
			if v.Name:find("Trap") or v.Name:find("Tripwire") then 
				if v:FindFirstChildWhichIsA("BillboardGui") then 
					v.BillboardGui:Destroy()
				end
			end
		end
		for i,v in pairs(workspace.Tools:GetDescendants()) do 
			if v.Name == "BillboardGui" then
				v:Destroy()
			end
		end
		for i,v in pairs(workspace.Threats:GetDescendants()) do 
			if v.Name == "BillboardGui" then
				v:Destroy()
			end
		end
	end
end)
