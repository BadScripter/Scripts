-- Made by TrashScripterF
for i, v in pairs(getgc()) do 
	if typeof(v) == "function" then 
		local ups = debug.getupvalues(v)
		for c, d in pairs(ups) do 
			if typeof(d) == "table" then 
				if d["FireRate"] ~= nil then 
					d["FireRate"] = 20
				end
				if d["Recoil"] ~= nil then 
					d["Recoil"] = 0
				end
				if d["Spread"] ~= nil then 
					d["Spread"] = 0
				end
			end
		end
	end
end

game.StarterGui:SetCore("SendNotification", {
	Title = "Gun Mods Loaded",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})
