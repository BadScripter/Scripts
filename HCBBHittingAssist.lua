  -- Made by TrashScripterF

local library = loadstring(game:HttpGet("https://pastebin.com/raw/7Z6TzFnv", true))()
local hb = library:CreateWindow({
  text = "Hitbox"
})

_G.Size = 0
_G.on = false

local credits = library:CreateWindow({text='Credits'})
credits:AddLabel("Scripter: TrashScripterF\nGUI Lib: Wally")


hb:AddToggle("Hitbox", function(state)
  if _G.Size == 0 then return end
  _G.on = state
   while _G.on do
    wait()
    if workspace.PP:FindFirstChild("Ball") then 
      workspace.PP.Ball.Size = Vector3.new(_G.Size,_G.Size,_G.Size)
      workspace.PP.Ball.Mesh.Scale = Vector3.new(_G.Size,_G.Size,_G.Size)
	  end
   end
end)

hb:AddBox("Size", function(object, focus)
	if focus then
    	_G.Size = tonumber(object.Text)
	end
end)



game.StarterGui:SetCore("SendNotification", {
	Title = "GUI Loaded",
	Text = "Join my discord for more scripts: https://discord.gg/czXkbCS",
	Duration = 5,
})

