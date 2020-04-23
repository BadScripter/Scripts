-- Made by TrashScripterF, GUI Lib by Wally

_G.set = false
_G.as = false

local sh = workspace.MapNoRaycast:FindFirstChild("ShopDecor") or workspace.MapNoRaycast:FindFirstChild("TitleParts")
local sell;
for i, v in pairs(sh:GetChildren()) do
    if v:FindFirstChildOfClass("BillboardGui") then
        if v:FindFirstChildOfClass("BillboardGui"):FindFirstChildOfClass("TextLabel") then
            if v:FindFirstChildOfClass("BillboardGui"):FindFirstChildOfClass("TextLabel").Text == "Sell" then
                sell = v
            end
        end
    end
end

function getNearest()
    local m = math.huge
    local c;
    for i, v in pairs(workspace.Ghosts:GetChildren()) do
        if v:FindFirstChild("HumanoidRootPart") then
            local mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude
            if mag < m then
                m = mag
                c = v
            end
        end
    end
    return c
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripter/Scripts/master/WallyGUILibV1.lua", true))()
local Auto = library:CreateWindow({
  text = "Ghost Simulator Autofarm"
})

local credits = library:CreateWindow({text='Credits'})
credits:AddLabel("Scripter: TrashScripterF\nGUI Lib: Wally")

Auto:AddToggle("Autofarm", function(state)
    _G.set = state

    local pg = game.Players.LocalPlayer.PlayerGui
    
    while wait() and _G.set do
        local v = getNearest()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
        local A_1 = v
        local Event = game:GetService("ReplicatedStorage").Network.ToServer.Requests.VacuumEnemy
        Event:FireServer(A_1)
        local sb = string.split(pg.UI.MainGui.PackStatus.FillBar.Label.Text, " / ")
        if tonumber(sb[1]) >= tonumber(sb[2]) and _G.as then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = sell.CFrame
            wait(0.5)
        end
    end
end)

Auto:AddToggle("Auto Sell", function(state)
    _G.as = state
end)


game.StarterGui:SetCore("SendNotification", {
	Title = "Autofarm Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})

print("https://discord.gg/czXkbCS")
