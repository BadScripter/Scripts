-- Made by TrashScripterF

assert(getsenv, "exploit not supported!")
assert(debug.setupvalue,"exploit not supported!")

for i, v in pairs(getsenv(game.Players.LocalPlayer.Character.CharacterScript)) do
    if i == "handleAction" then
        debug.setupvalue(v,19,math.huge)
    end
end

game.StarterGui:SetCore("SendNotification", {
	Title = "Inf Stam Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})
