local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripter/Scripts/master/WallyGUILibV1.lua", true))()
local Auto = library:CreateWindow({
  text = "MM2 Coin Script"
})

local map;
local ts = game:GetService("TweenService")

function main()
    for i, child in ipairs(map.CoinContainer:GetChildren()) do
        if not _G.bb then
            break
        elseif child.name == "Coin_Server" then
            local coin = {}
            coin.CFrame = CFrame.new(Vector3.new(child.CFrame.X, child.CFrame.Y-1, child.CFrame.Z))
            local mag = (child.CFrame.p - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.p).Magnitude
            local timeTo = mag / _G.speed
            local tweenInfo = TweenInfo.new(timeTo)
            local tween = ts:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, tweenInfo, coin)
            tween:Play()
            wait(timeTo + .25)
        end
    end
end

function findMap()
    local maps = {"PoliceStation", "MilBase", "Bank2", "House2", "Hotel", "Mansion2", "Factory", "nSOffice", "Hospital3", "Workplace", "ResearchFacility", "Office2"}
    for i, map in ipairs(maps) do
        if workspace:FindFirstChild(map) then
            return workspace:FindFirstChild(map)
        end
    end
    return nil
end

local executeS = Auto:AddToggle("Farm Coins", function(state)
    _G.bb = state
    map = findMap()
    if not _G.bb then
        return
    end
    main()
end)

local credits = library:CreateWindow({text='Credits'})
credits:AddLabel("Scripter: Sky\nGUI Lib: Wally")