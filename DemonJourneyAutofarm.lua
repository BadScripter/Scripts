-- Made by TrashScripterF

game.StarterGui:SetCore("SendNotification", {
	Title = "Autofarm Loaded",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})

-- Made by TrashScripterF

game.StarterGui:SetCore("SendNotification", {
	Title = "Autofarm Loaded",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})

local mt = getrawmetatable(game)
make_writeable(mt)
local old = mt.__namecall

mt.__namecall = newcclosure(function(self,...)
    local a = {...}
    local m = getnamecallmethod()
    if m == "FireServer" and self.Name == "notify" then
        return wait(9e9)
    end
    return old(self,...)
end)

while wait() do
    for i, v in pairs(workspace.LivingThings:GetChildren()) do
    if not game.Players:FindFirstChild(v.Name) and v:FindFirstChild("HumanoidRootPart") and not v.Name:find("Boul") then
		repeat wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame + v.HumanoidRootPart.CFrame.lookVector * -2
		    game.Players.LocalPlayer.Character.Character.Remotes.M1:FireServer()
		until v.Humanoid.Health <= 0
    end
end
end
