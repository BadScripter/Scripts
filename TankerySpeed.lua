-- Made by TrashScripterF

game.StarterGui:SetCore("SendNotification", {
	Title = "GUI Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})

_G.speed = 1
_G.on = false

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripter/Scripts/master/WallyGUILibV1.lua", true))()
local Speed = library:CreateWindow({
  text = "Tankery Speed GUI"
})

local credits = library:CreateWindow({text='Credits'})
credits:AddLabel("Scripter: TrashScripterF\nGUI Lib: Wally")

Speed:AddToggle("Speed", function(state)
    _G.on = state
end)

Speed:AddBox("Multiplier", function(object, focus)
	if focus then
        _G.speed = tonumber(object.Text)
	end
end)

local UIS = game:GetService('UserInputService')

while wait() do
    if _G.on then
        pcall(function()
            if UIS:IsKeyDown(Enum.KeyCode.W) then
                game.Players.LocalPlayer.PlayerGui.Throttle.Value = _G.speed
            elseif UIS:IsKeyDown(Enum.KeyCode.S) then
                game.Players.LocalPlayer.PlayerGui.Throttle.Value = -_G.speed
            end
        end)
    end
end

