-- Made by TrashScripterF

assert(getrawmetatable,"Your exploit is not supported!")
local mt = getrawmetatable(game)
local make_writeable = make_writeable or setreadonly
assert(make_writeable,"Your exploit is not supported!")
make_writeable(mt,false)
local old = mt.__namecall
local getnamecallmethod = getnamecallmethod or get_namecall_method
assert(getnamecallmethod,"Your exploit is not supported!")

mt.__namecall = newcclosure(function(self,...)
	local a = {...}
	local m = getnamecallmethod()
	if m == "FireServer" then 
		if self.Name == "PlayerData" then 
			if a[1] ~= nil then 
				if a[1] == "Flip" then 
					return false
				end
			end
		end
	end
	return old(self,...)
end)

game.StarterGui:SetCore("SendNotification", {
	Title = "Inf Stamina Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})
