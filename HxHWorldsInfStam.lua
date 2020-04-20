-- Made by TrashScripterF

assert(getrawmetatable, "NO")
local mt = getrawmetatable(game)
local make_writeable = make_writeable or setreadonly
assert(make_writeable, "NO")
make_writeable(mt,false)
local old = mt.__namecall

mt.__namecall = newcclosure(function(self,...)
    local a = {...}
    local m = getnamecallmethod()
    if m == "FireServer" and self.Name:find("Stamina") or self.Name:find("Run") and m == "FireServer" then
        return false
    end    
    return old(self,...)
end)

game.StarterGui:SetCore("SendNotification", {
	Title = "Inf Stam Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})


local plr = game.Players.LocalPlayer

while wait() do
    if plr.Character then
        if plr.Character:FindFirstChild("Dashing") then
            plr.Character.Dashing:Destroy()
        end
    end     
end
