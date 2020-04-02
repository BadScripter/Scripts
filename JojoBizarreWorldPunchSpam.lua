-- Made by TrashScripterF

if not _G.Toggle then
	local mes = Instance.new("Message")
	mes.Text = "Please set a toggle keybind (_G.Toggle = 'f') and then rerun the script."
	wait(5)
	mes:Destroy()
	return
end

_G.on = false
local UIS = game:GetService("UserInputService")

UIS.InputEnded:Connect(function(i,g)
	if g then return end
	if i.KeyCode == Enum.KeyCode[_G.Toggle:upper()] then 
		_G.on = not _G.on
		while _G.on do 
			local Event = game:GetService("Players").poke7667.Backpack.Controller.Fists
			Event:FireServer()
			wait()
		end
	end
end)

game.StarterGui:SetCore("SendNotification", {
	Title = "Spammer Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})
