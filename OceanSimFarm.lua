local DoCurrency = false
local DoBubbles = false
local DoUpgrades = false
local p = game.Players.LocalPlayer
local RS = game:GetService("ReplicatedStorage")
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripter/Scripts/master/WallyGUILibV1.lua", true))()
local Auto = library:CreateWindow({
  text = "Ocean Sim Autofarm"
})

local mute = Auto:AddButton("Mute Music", function()
    game:GetService("SoundService").Day:Destroy()
    game:GetService("SoundService").Notif:Destroy()
end)

local currency = Auto:AddToggle("Farm XP/Gems", function(state)
    DoCurrency = state
    while DoCurrency do
        wait(0.1)
        for k, v in pairs(workspace.CoinSpawns:GetChildren()) do
            if v:FindFirstChild("Chest") and v:FindFirstChild("Chest"):FindFirstChild("Coin") then
                v.Chest.Coin.CFrame = p.Character.HumanoidRootPart.CFrame
            elseif v:FindFirstChild("Coin") and v:FindFirstChild("Coin"):FindFirstChild("Coin") then
                v.Coin.Coin.CFrame = p.Character.HumanoidRootPart.CFrame
            end
        end
        for k, v in pairs(workspace.XpSpawns:GetChildren()) do
            if v:FindFirstChild("Chest") and v:FindFirstChild("Chest"):FindFirstChild("Coin") then
                v.Chest.Coin.CFrame = p.Character.HumanoidRootPart.CFrame
            elseif v:FindFirstChild("Coin") and v:FindFirstChild("Coin"):FindFirstChild("Coin") then
                v.Coin.Coin.CFrame = p.Character.HumanoidRootPart.CFrame
            end
        end
        for k, v in pairs(workspace.GemSpawns:GetChildren()) do
            if v:FindFirstChild("Chest") and v:FindFirstChild("Chest"):FindFirstChild("Coin") then
                v.Chest.Coin.CFrame = p.Character.HumanoidRootPart.CFrame
            elseif v:FindFirstChild("Coin") and v:FindFirstChild("Coin"):FindFirstChild("Coin") then
                v.Coin.Coin.CFrame = p.Character.HumanoidRootPart.CFrame
            end
        end
    end
end)

local money = Auto:AddToggle("Farm Money", function(state)
    DoBubbles = state
    while DoBubbles do
        wait(.05)
        RS.CreateTrail:FireServer()
        RS.SellDonutsEvent:FireServer()
    end
end)

local upgrades = Auto:AddToggle("Auto Upgrade", function(state)
    DoUpgrades = state
    while DoUpgrades do
        wait(1)
        for x=1,21 do
            RS.TridentBuyEvent:FireServer({x})
        end
        for x=1,20 do
            RS.FightEventTwo:FireServer({x})
        end
    end
end)

local credits = library:CreateWindow({text='Credits'})
credits:AddLabel("Made by: CyberSamurai\nGUI Lib: Wally")
