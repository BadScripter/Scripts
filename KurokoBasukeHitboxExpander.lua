
local on = false
local init = false

game:GetService("UserInputService").InputEnded:Connect(function(i,g)
  if g then return end
  if i.KeyCode == Enum.KeyCode[_G.Toggle:upper()] then
    on = not on
    game.StarterGui:SetCore("SendNotification", {
      Title = "Hitbox Expander is now set to "..on.."!",
      Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
      Duration = 1.5,
    })
   end
end)

while wait() do
  if on then
      for i, v in pairs(workspace:GetDescendants()) do
        if v.Name == "Basketball" and v:FindFirstChild("HitBox") then 
            if not init then init = v.HitBox.Size end
            v.Size = init * 1.15
            v.HitBox.Size = init * 1.15
        end
      end
   else
      for i, v in pairs(workspace:GetDescendants()) do
        if v.Name == "Basketball" and v:FindFirstChild("HitBox") then 
            if not init then init = v.HitBox.Size end
            v.Size = init
            v.HitBox.Size = init
        end
      end
   end
end
