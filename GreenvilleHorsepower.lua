-- Made by TrashScripterF

for i, v in pairs(getgc()) do 
	if typeof(v) == "function" then 
		for i, v in pairs(debug.getupvalues(v)) do 
			if type(v) == "table" and rawget(v, "Horsepower") then
				rawset(v,"Horsepower",Horsepower)
			end
		end
	end
end

game.StarterGui:SetCore("SendNotification", {
	Title = "Script Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})

print("https://discord.gg/czXkbCS")
