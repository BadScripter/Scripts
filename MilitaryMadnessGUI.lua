  -- Made by TrashScripterF, GUI Lib by Wally

_G.Fast = false

function Notify(mes,desc)
    game.StarterGui:SetCore("SendNotification", {
    	Title = mes,
    	Text = desc,
    	Duration = 5,
    })
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripter/Scripts/master/WallyGUILibV1.lua", true))()
local Auto = library:CreateWindow({
  text = "Military Madness GUI"
})

local credits = library:CreateWindow({text='Credits'})
credits:AddLabel("Scripter: TrashScripterF\nGUI Lib: Wally")

Auto:AddToggle("Money + Rank Farm", function(state)
    _G.PP = state
    if not _G.PP then
        return
    end
    local tycoon;
    for i, v in pairs(workspace.Tycoons:GetChildren()) do
        if v.Owner.Value == game.Players.LocalPlayer.Name then
            tycoon = v
        end
    end
    
    local upgrader;
    local furnace;
    local dropper;
    local mult;
    for i, v in pairs(tycoon.ItemHolder:GetChildren()) do
        if v:FindFirstChild("Drop") then
            dropper = v
        elseif v:FindFirstChild("Upgrader") then
            upgrader = v
        elseif v:FindFirstChild("FurnacePart") then
            furnace = v
            if v.FurnacePart.MoneyScript:FindFirstChild("Multiplier") then
                mult = v.FurnacePart.MoneyScript.Multiplier.Value
            end
        end
    end
    
    if not dropper then
        Notify("An error occured", "No dropper detected")
        return
    elseif not furnace then
        Notify("An error occured", "No furnace detected")
        return
    elseif not upgrader then
        Notify("An error occured", "No upgrader detected")
        return
    end
    
    local val = dropper.Drop.Cash.Value + upgrader.Upgrader.Upgrade.Value*300
    
    if mult then
        val = val * mult
    end
    
    while _G.PP do
        local A_1 = {}
        
        for i=1, 300 do
            table.insert(A_1,upgrader)
        end
        local A_2 = val
        local A_3 = dropper
        local Event = furnace.RemoteEvent
        Event:FireServer(A_1, A_2, A_3)
        if _G.Fast then
            game:GetService("RunService").Stepped:Wait()
        else
            wait()
        end
    end
end)

Auto:AddToggle("Faster (Can cause lag)", function(state)
  	_G.Fast = state
end)

Notify("GUI Loaded", "Join my discord for more scripts: https://discord.gg/czXkbCS")

print("https://discord.gg/czXkbCS")
