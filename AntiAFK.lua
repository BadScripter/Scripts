local VirtualUser=game:service'VirtualUser'

game:service('Players').LocalPlayer.Idled:connect(function()

VirtualUser:CaptureController()

VirtualUser:ClickButton2(Vector2.new())
end)

game.StarterGui:SetCore("SendNotification", {
	Title = "AntiAFK Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})
