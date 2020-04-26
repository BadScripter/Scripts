-- Made by TrashScripterF

for i, v in pairs(getgc()) do
    if typeof(v) == "function" then
        for c, d in pairs(debug.getupvalues(v)) do
            if typeof(d) == "table" then
                if rawget(d, "damage") then
                    d["damage"] = 1000
                end
                if rawget(d, "rate") then
                    d["rate"] = 0
                end
                if rawget(d, "spread") then
                    d["spread"] = 0
                end
                if rawget(d, "magazine") then
                    d["magazine"] = math.huge
                end
            end
        end
    end
end

game.StarterGui:SetCore("SendNotification", {
	Title = "Gun Mods Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})

            
