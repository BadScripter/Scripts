-- Graphic Elements

local ScreenGui = Instance.new("ScreenGui")
local ScrollingFrame = Instance.new("ScrollingFrame")
local Face = Instance.new("ImageLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UIListLayout = Instance.new("UIListLayout")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ScrollingFrame.Parent = ScreenGui
ScrollingFrame.AnchorPoint = Vector2.new(0, 0.5)
ScrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ScrollingFrame.BackgroundTransparency = 0.69999998807907
ScrollingFrame.Position = UDim2.new(0, 0, 0.5, 0)
ScrollingFrame.Size = UDim2.new(0, 200, 0, 300)

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

UIAspectRatioConstraint.Parent = Face

local nonLobby = {}

function updateListings()
    local plrs = game.Players:GetChildren()
    nonLobby = {}
    for i, plr in pairs(plrs) do
        -- Add to table for simplification
        if plr.Team.Name ~= "Lobby" then
            table.insert(nonLobby, plr.Name)
        end
        
        f = ScrollingFrame:FindFirstChild(plr.Name)
        if f == nil and plr.Team.Name ~= "Lobby" then
            local Frame = Instance.new("Frame")
            local PlayerName = Instance.new("TextLabel")
            local Face = Instance.new("ImageLabel")
            
            Frame.Name = plr.Name
            Frame.Parent = ScrollingFrame
            if plr.Team.Name == "Framed" then
                Frame.BackgroundColor3 = Color3.new(0.8, 0.2, 0.2)
            elseif plr.Team.Name == "Police" then
                Frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.8)
            end
            
            Frame.BackgroundTransparency = 0.6
            Frame.Size = UDim2.new(1, -12, 0, 50)
            
            Face.Name = "Face"
            Face.Parent = Frame
            Face.BackgroundColor3 = Color3.new(1, 1, 1)
            Face.BackgroundTransparency = 1
            Face.Size = UDim2.new(0, 50, 1, 0)
            Face.Image = plr.Character.Head.face.Texture
            
            PlayerName.Name = "PlayerName"
            PlayerName.Parent = Frame
            PlayerName.BackgroundColor3 = Color3.new(1, 1, 1)
            PlayerName.BackgroundTransparency = 1
            PlayerName.Position = UDim2.new(0, 50, 0, 0)
            PlayerName.Size = UDim2.new(1, -50, 0, 50)
            PlayerName.Font = Enum.Font.SourceSans
            PlayerName.TextColor3 = Color3.new(0, 0, 0)
            PlayerName.TextSize = 14
            PlayerName.Text = plr.Name
        elseif f ~= nil and plr.Team.Name == "Lobby" then
            f:Destroy()
        elseif f ~= nil and plr.Team.Name ~= "Lobby" then
            if plr.Team.Name == "Framed" then
                f.BackgroundColor3 = Color3.new(0.8, 0.2, 0.2)
            elseif plr.Team.Name == "Police" then
                f.BackgroundColor3 = Color3.new(0.2, 0.2, 0.8)
            end
            f.Face.Image = plr.Character.Head.face.Texture
        end
    end
    local cansize = 50*#nonLobby
    if cansize <= 300 then
        cansize = 301
    end
    ScrollingFrame.CanvasSize = UDim2.new(0, 150, 0, cansize)
end

while true do
    updateListings()
    wait(5)
end
    
