-- Made by TrashScripterF


local UIS = game:GetService("UserInputService")
local on = false

UIS.InputEnded:Connect(function(i,g)
    if g then return end
    if i.KeyCode == Enum.KeyCode[_G.Toggle:upper()] then
        on = not on
        if not on then
            for i, v in pairs(workspace["Item_Spawns"].Items:GetChildren()) do
                if v:FindFirstChild("Base") then
                    local BillboardGui = Instance.new("BillboardGui")
                    local TextLabel = Instance.new("TextLabel")
                    BillboardGui.Parent = v.Base
                    TextLabel.Parent = BillboardGui
                    BillboardGui.AlwaysOnTop = true
                    BillboardGui.LightInfluence = 1
                    BillboardGui.Size = UDim2.new(0, 50, 0, 50)
                    BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
                    TextLabel.Parent = BillboardGui
                    TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
                    TextLabel.BackgroundTransparency = 1
                    TextLabel.Size = UDim2.new(1, 0, 1, 0)
                    TextLabel.Text = "Item"
                    TextLabel.TextColor3 = Color3.new(1, 0, 0)
                    TextLabel.TextScaled = true
                end
            end
        else
            for i, v in pairs(workspace["Item_Spawns"].Items:GetChildren()) do
                if v:FindFirstChild("Base") then
                    if v.Base:FindFirstChild("BillboardGui") then
                        v:Destroy()
                    end
                end
            end
        end
    end
end

game.StarterGui:SetCore("SendNotification", {
	Title = "ESP Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})

