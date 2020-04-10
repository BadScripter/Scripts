-- Made by TrashScripterF

game.StarterGui:SetCore("SendNotification", {
	Title = "AFK Bypass Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})



while wait(3) do
    for i, v in pairs(game.Players.LocalPlayer.PlayerGui.GamerGui.Windows:GetChildren()) do
        local ar = string.split(v.Name,"C")
        if #ar == 2 or v.Name:find("Check") then
            if tonumber(ar[2]) or v.Name:find("Check") then
                if v.Visible then
                    local ar2 = string.split(v.Question.Text, " ")
                    local ans = ar2[3]
                    local mat = false
                    for c, d in pairs(v:GetChildren()) do
                        if d.Name:find("Option") then
                            print(d.Text, ans)
                            if d.Text:find(ans) then
                                mat = true
                                local ar3 = string.split(d.Name, "Option")
                                local A_1 = "r"..tostring(ar3[2])
                                local Event = game:GetService("Workspace")["Remote_Events"]["event_Risposta"]
                                Event:FireServer(A_1)
                                print(d.Name)
                                v.Visible = false
                            end
                        end
                    end
                    if not mat then
                        local real = string.split(v.Question.Text, "=")
                        func = loadstring("return "..real[1]:sub(2,real[1]:len()))
                        y = func()
                        for c, d in pairs(v:GetChildren()) do
                            if d.Name:find("Option") then
                                if d.Text:find(tostring(y)) then
                                    mat = true
                                    local ar3 = string.split(d.Name, "Option")
                                    local A_1 = "r"..tostring(ar3[2])
                                    local Event = game:GetService("Workspace")["Remote_Events"]["event_Risposta"]
                                    Event:FireServer(A_1)
                                    v.Visible = false
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
