
game.StarterGui:SetCore("SendNotification", {
	Title = "Script Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})

print("https://discord.gg/czXkbCS")

local mt = getrawmetatable(game)
make_writeable(mt)
local old = mt.__namecall

mt.__namecall = newcclosure(function(self,...)
    local a = {...}
    local m = getnamecallmethod()
    if m == "FireServer" then 
        if a[1] ~= nil then 
            if a[1] == "BladeHealth" then 
                return false
            end
        end
    end
    return old(self,...)
end)

while wait(3) do 
    for i, v in pairs(workspace:GetChildren()) do 
        if v.Name:find("Charge") and v:FindFirstChildWhichIsA("ClickDetector") then 
            fireclickdetector(v.ClickDetector)
        end
    end
end
