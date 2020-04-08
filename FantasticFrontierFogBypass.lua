game.StarterGui:SetCore("SendNotification", {
	Title = "Fog Bypass Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})

for i, v in pairs(getconnections(game.Players.LocalPlayer.Character.DescendantRemoving)) do
    v:Disable()
end
game.Players.LocalPlayer.Character.Fogbox:Destroy()
game.Players.LocalPlayer.PlayerScripts.Fog.Disabled = true
