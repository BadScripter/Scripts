-- Made by TrashScripterF




local Camera = workspace.CurrentCamera
local Players = game.Players
local Player = Players.LocalPlayer
local Character = Player.Character
local Mouse = Player:GetMouse()

local Zombies = workspace.Zombies
local deb = false
local mousemoverel = mousemoverel or MoveMouse

function zombie()
    local nearestZombie = nil
	local mg = 13423432
    for i,v in pairs(Zombies:GetChildren()) do
       if v:FindFirstChild("Head") then
			local mag = (Character.HumanoidRootPart.Position - v.Torso.Position).magnitude
    		if mag < mg then
				nearestZombie = v
				mg = mag
			end
		end
	end
    return nearestZombie
end

function aim()
	local near = zombie()
    local look = Camera:WorldToScreenPoint(zombie().Head.Position)
    local mouseLocation = Camera:WorldToScreenPoint(Mouse.Hit.p)
    mousemoverel(look.X - mouseLocation.X, look.Y - mouseLocation.Y)
end

spawn(function()
    game:GetService("RunService").RenderStepped:connect(function()
        if zombie() ~= nil then
            deb = false
            aim()
		Character:FindFirstChildWhichIsA("Tool"):Activate()
        end
    end)
end)

game.StarterGui:SetCore("SendNotification", {
	Title = "Autofarm Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})
