-- Made by TrashScripterF
game.StarterGui:SetCore("SendNotification", {
	Title = "Trigger Bot Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})

_G.Toggle = "e"
local UIS = game:GetService("UserInputService")
local mouse = game.Players.LocalPlayer:GetMouse()

while wait() do
    if UIS:IsKeyDown(Enum.KeyCode[_G.Toggle:upper()]) then
        for i, v in pairs(game.Players:GetPlayers()) do
            if v.Character and v.Team ~= game.Players.LocalPlayer.Team then 
                if mouse.Target:IsDescendantOf(v.Character) and v ~= game.Players.LocalPlayer then
                    mouse1press()
                    wait(0.1)
                    mouse1release()
                end
            end
        end
    end
end
                
