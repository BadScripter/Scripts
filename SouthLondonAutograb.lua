game.StarterGui:SetCore("SendNotification", {
	Title = "Autograb Loaded",
	Text = "Credit to Sky. Join our Discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})

while true do
    for i, v in pairs(workspace:GetChildren()) do 
    	if v:IsA("Tool") then
    		local x = v:FindFirstChild("Handle")
    		if x ~= nil then
    		    x.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    		end
    	end
    end
    wait(.1)
end