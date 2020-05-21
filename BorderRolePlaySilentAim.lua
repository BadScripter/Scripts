function getNearest() 
    local m = math.huge
    local c;
    for i, v in pairs(game.Players:GetPlayers()) do
        if v.Character then
            local mag = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
            if mag < m then
                m = mag
                c = v.Character
            end
        end
    end
    if c then
        return c
    else
        return nil
    end
end

function callBack(but)
    if but == "Yes" then 
        local mt = getrawmetatable(game)
        make_writeable(mt)
        local old = mt.__index
        mt.__index = newcclosure(function(t,k)
            if k:lower() == "hit" then
                if getNearest() then
                    return getNearest().Head.CFrame
                else
                    return old(t,k)
                end
            end
            return old(t,k)
        end)
        game.StarterGui:SetCore("SendNotification", {
        	Title = "Silent Aim Loaded!",
        	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
        	Duration = 5,
        })
    else
        return 
    end
end

local func = Instance.new("BindableFunction")
func.OnInvoke = callBack

game.StarterGui:SetCore("SendNotification", {
	Title = "Load Silent Aim?",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
    Callback = func,
    Button1 = "Yes",
    Button2 = "No",
	Duration = 5,
})
