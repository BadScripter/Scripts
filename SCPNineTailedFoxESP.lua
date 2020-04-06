game.StarterGui:SetCore("SendNotification", {
	Title = "ESP Loaded!",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})

print("https://discord.gg/czXkbCS")


local RunService = game:GetService("RunService");
local Players = game:GetService("Players");

local Player = Players.LocalPlayer;
local Character = Player.Character;

function round(n) 
    return math.floor(n + 0.5);
end;

getgenv().Settings = {
    Enabled = false;
    Titles = {
        Enabled = true;
        Name = true;
        Distance = true;
        DefaultColor = Color3.fromRGB(255, 255, 255)
    };
    HeadDot = {
        Enabled = true;
        Transparency = 0.5;
        DefaultColor = Color3.fromRGB(255, 0, 0)
    }
};

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripter/Scripts/master/WallyGUILibV2.lua", true))()
local ESPSet = library:CreateWindow("ESP")
ESPSet:Section("ESP Toggle")
ESPSet:Toggle("ESP", {location = Settings, flag = "Enabled"})
ESPSet:Section("Settings")
ESPSet:Toggle("Names", {location = Settings["Titles"], flag = "Name"})
ESPSet:Toggle("Distances", {location = Settings["Titles"], flag = "Distance"})
ESPSet:Toggle("Head Dot", {location = Settings["HeadDot"], flag = "Enabled"})
local GunMods = library:CreateWindow("Gun Mods")
GunMods:Toggle("Rapid Fire", {flag="Rapid"}, function(state)
	while GunMods.flags.Rapid do
		wait(3)
		if Character:FindFirstChildOfClass("Tool") then
    		local senv = getsenv(Character:FindFirstChildOfClass("Tool").Server.ClientTrigger)
    		senv.Automatic = true
    		senv.FireRate = 0
	    end
	end
end)
local Credits = library:CreateWindow("Credits")
Credits:Section("Scripter: TrashScripterF")
Credits:Section("Scripter: StayBlue")
Credits:Section("GUI Lib: Wally")

RunService.RenderStepped:Connect(function()
    
	for _,v in pairs(workspace:GetChildren()) do
		if v:FindFirstChildOfClass("Humanoid") then
			if v.Name:find("SCP") then
				local Head = v:FindFirstChild("Head");
				if not Settings.Enabled then  
				    for i, v in pairs(Head:GetChildren()) do
				        if v:IsA("BillboardGui") or v:IsA("BoxHandleAdornment") then
				            v:Destroy()
				        end
				    end
				end
				if Head:FindFirstChild("Label") then Head.Label:Destroy() end
                if Settings.HeadDot.Enabled and not Head:FindFirstChildOfClass("BoxHandleAdornment") and Settings.Enabled then
                    local Box = Instance.new('BoxHandleAdornment', Head);
                    Box.Size = Box.Parent.Size;
                    Box.Transparency = Settings.HeadDot.Transparency;
                    Box.Adornee = Box.Parent;
                    Box.AlwaysOnTop = true;
                    Box.Visible = true;
                    Box.ZIndex = 5;
                    Box.Color3 = Settings.HeadDot.DefaultColor;
                    Box.Name = "🐒";
                else
                    if Head:FindFirstChildOfClass("BoxHandleAdornment") then
                        Head:FindFirstChildOfClass("BoxHandleAdornment"):Destroy()
                    end;
                end;

                if Settings.Titles.Enabled and Settings.Enabled then
                    local GUI;
                    local Label;
                    if not Head:FindFirstChildOfClass("BillboardGui") then
                        GUI = Instance.new('BillboardGui', Head);
                        Label = Instance.new('TextLabel', GUI);
                        
                        GUI.Enabled = true
                        GUI.Active = true
                        GUI.LightInfluence = 1
                        GUI.Size = UDim2.new(0,50,0,50);
                        GUI.StudsOffset = Vector3.new(0, 2, 0);
                        GUI.Parent = Head;
                        GUI.AlwaysOnTop = true;
                                             
                        Label.BackgroundTransparency = 1;
                        Label.ZIndex = 5;
                        Label.Size = UDim2.new(1, 0, 1, 0);
                        Label.TextColor3 = Settings.Titles.DefaultColor;
                        Label.TextScaled = true;
                        Label.TextStrokeTransparency = 0;
                        Label.TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
                        Label.Text = ""
                    end
                end;
                if Settings.Titles.Name and Settings.Enabled then
                    local gui = Head:FindFirstChildOfClass("BillboardGui")
                    if gui then
                        local Label = gui:FindFirstChildOfClass("TextLabel")
                        if Label then
                            Label.Text = v.Name
                        end
                    end
                end
                if Settings.Titles.Distance and Settings.Titles.Enabled and Settings.Enabled then 
                    local DistanceFromPlayer = (Character.PrimaryPart.Position - Head.Position).Magnitude;                
                	local gui = Head:FindFirstChildOfClass("BillboardGui")
                    if gui then
                        local Label = gui:FindFirstChildOfClass("TextLabel")
                        if Label and Settings.Titles.Name then
                            Label.Text = v.Name.."\n[" .. round(DistanceFromPlayer) .. "] Studs Away"; 
                        elseif Label and not Settings.Titles.Name then
                             Label.Text = "[" .. round(DistanceFromPlayer) .. "] Studs Away"; 
                        end
                    end
                end;
			end;
		end;
	end;
end);
