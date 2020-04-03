-- Made by mrnickson
 
local A_1 = -999999999
local Event = game:GetService("ReplicatedStorage").Events.Purchase
Event:FireServer(A_1)

game.StarterGui:SetCore("SendNotification", {
	Title = "Inf Money Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})
