-- Made by TrashScripterF

local mt = getrawmetatable(game)
local make_writeable = make_writeable or setreadonly
make_writeable(mt,false)
local old = mt.__index 

mt.__index = newcclosure(function(t,k)	
	if k == "WalkSpeed" then 
		return 16
	elseif k == "JumpPower" then 
		return 50
	end
	return old(t,k)
end)

game.StarterGui:SetCore("SendNotification", {
	Title = "AC Bypass Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})
