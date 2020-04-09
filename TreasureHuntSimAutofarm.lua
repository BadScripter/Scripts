
_G.KillAutoFarm = false
local plr = game.Players.LocalPlayer

function getNearest()
    local m = math.huge
    local c;
    for i, v in pairs(workspace.SandBlocks:GetChildren()) do
        if v:IsA("BasePart") then
            local mag = (plr.Character.HumanoidRootPart.Position - v.Position).magnitude
            if mag < m then
                m = mag
                c = v
            end
        end
    end
    return c
end

while true do
    wait(1)
    if _G.KillAutoFarm then return end
    local near = getNearest()
    local Event = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").RemoteClick
    Event:FireServer(near)
    local CurrentSand = string.split(game:GetService("Players").LocalPlayer.PlayerGui.Gui.Buttons.Sand.Amount.Text, "/")
    local MinSand = tonumber(CurrentSand[1])
    local MaxSand = tonumber(CurrentSand[2])

    if MinSand >= MaxSand then
        local old = plr.Character.HumanoidRootPart.CFrame
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(2.69424772, 10.2660398, -162.651047, -0.875676274, 5.6956651e-08, 0.482898653, 2.86357178e-08, 1, -6.60201351e-08, -0.482898653, -4.39841159e-08, -0.875676274)
        wait(0.22)
        plr.Character.HumanoidRootPart.CFrame = old
    end
end
