local library = loadstring(game:HttpGet("https://pastebin.com/raw/7Z6TzFnv", true))()
local teles = library:CreateWindow({
  text = "Teleports"
})

local credits = library:CreateWindow({text='Credits'})
credits:AddLabel("Scripter: TrashScripterF\nGUI Lib: Wally")

local stations = {}
for i, v in pairs(workspace.Spawns.Stations:GetChildren()) do
	table.insert(stations, v.Name)
end

local dropdown;
dropdown = teles:AddDropdown(stations, function(a)
	for i, v in pairs(workspace.Spawns.Stations:GetChildren()) do
		if a == v.Name then
			local Character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
			Character.HumanoidRootPart.CFrame = v.CFrame
		end
	end
end)
