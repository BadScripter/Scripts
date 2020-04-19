local DoCoins = false
local DoUpgrades = false
local AAMax = false
local p = game.Players.LocalPlayer
local RS = game:GetService("ReplicatedStorage")
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripter/Scripts/master/WallyGUILibV1.lua", true))()
local Auto = library:CreateWindow({
  text = "School Sim Autofarm"
})

local itemTable = {
    [1] = "2",
    [2] = "3",
    [3] = "4",
    [4] = "5",
    [5] = "6",
    [6] = "7",
    [8] = "8",
    [10] = "9",
    [12] = "10",
    [15] = "11",
    [25] = "12",
    [50] = "13",
}

local mute = Auto:AddButton("Mute Music", function()
    workspace.Music:Destroy()
    workspace.OldMusic:Destroy()
    game:GetService("SoundService").SoundGroup:Destroy()
end)

local coins = Auto:AddToggle("Farm Coins", function(state)
    DoCoins = state
    while DoCoins do
        wait(0.5)
        for k, v in pairs(workspace.CoinHolder:GetChildren()) do
            v.CFrame = p.Character.HumanoidRootPart.CFrame
        end
    end
end)

local upgrades = Auto:AddToggle("Farm Upgrades", function(state)
    DoUpgrades = state
    while DoUpgrades do
        wait(1)
        local buy = RS.Remotes.UpgradeRequest
        buy:InvokeServer(RS.Gears["popularity" .. itemTable[p.PlayerValues.popularityIncrement.Value]])
        buy:InvokeServer(RS.Gears["athleticism" .. itemTable[p.PlayerValues.athleticismIncrement.Value]])
        buy:InvokeServer(RS.Gears["intelligence" .. itemTable[p.PlayerValues.intelligenceIncrement.Value]])
    end
end)

local aa = Auto:AddToggle("Auto Equip Max", function(state)
    AAMax = state
    while AAMax do
        wait(1)
        local equip = RS.Remotes.Equip
        equip:InvokeServer(RS.Gears["popularity" .. itemTable[p.PlayerValues.popularityIncrement.Value]])
        equip:InvokeServer(RS.Gears["athleticism" .. itemTable[p.PlayerValues.athleticismIncrement.Value]])
        equip:InvokeServer(RS.Gears["intelligence" .. itemTable[p.PlayerValues.intelligenceIncrement.Value]])
    end
end)

local credits = library:CreateWindow({text='Credits'})
credits:AddLabel("Made by: CyberSamurai\nGUI Lib: Wally")
