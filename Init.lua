-- Made by TrashScripterF
-- Other Scripters: mrnickson, Sky, and StayBlue

local scripts = {
  ["2686500207"] = "ABizarreDayBanknoteTP.lua",
  ["3224790922"] = "AOTInfBladeAndGas.lua",
  ["3582153031"] = "AOTInfBladeAndGas.lua",
  ["2394658527"] = "BloxnoHero2AutoFarm.lua",
  ["536102540"] = "DBZFinalStandAutoFarm",
  ["3221241066"] = "DeadzoneESP.lua",
  ["4477226641"] = "DemonJourneyAutofarm.lua",
  ["566399244"] = "ElementalBattlegroundsInfStam.lua",
  ["2569625809"] = "ElementalBattlegroundsInfStam.lua",
  ["3095204897"] = {"IsleESP.lua","IsleHunterHitbox.lua"},
  ["745844303"] = "JojoBizarreWorldPunchSpam.lua",
  ["4760622859"] = "KurokoBasukeHitboxExpander.lua",
  ["4694533755"] = "LeeLineageArtifactTP.lua",
  ["1525936952"] = "LostESP.lua",
  ["4296632651"] = "MyHeroLegendaryAutofarm.lua",
  ["3127808194"] = "OnePieceAwakeningGUI.lua",
  ["2098516465"] = "RHS2ItemGrabber.lua",
  ["3198259055"] = "SoulShattersInfStam.lua",
  ["261290060"] = "TerminalRailwaysTeles.lua",
  ["133815151"] = "TheFinalStandAutofarm.lua",
  ["1103751037"] = "TheFinalStandAutofarm.lua",
  ["328028363"] = "TypicalColors2Backstab.lua",
  ["198817751"] = "VampireHunters2ESP.lua",
  ["2809202155"] = "YourBizzareAdventureItemESP.lua",
  ["3759927663"] = "ZombieStrikeGunMods.lua",
  ["3803533582"] = "ZombieStrikeGunMods.lua",
  ["2622527242"] = "rBreachSCPGUI.lua",
  ["4340636621"] = "MilitaryMadnessGUI.lua",
  ["3340155139"] = "MilitaryMadnessGUI.lua",
  ["3144140570"] = "HoopVerseAimbot.lua",
  ["3073974886"] = "HoopVerseAimbot.lua",
  ["797772998"] = "LundenwicInfMoney.lua",
  ["287999508"] = "TankerySpeed.lua",
  ["761903717"] = "TankerySpeed.lua",
  ["4488998649"] = "TankerySpeed.lua",
  ["3025990139"] = "UnboxingSimAutofarm.lua",
  ["29812337"] = "FramedFaceList.lua",
  ["445265003"] = "SCPNineTailedFoxESP.lua",
  ["3722931411"] = "SouthLondonAutograb.lua",
  ["301549746"] = "CBROTriggerBot.lua",
  ["510411669"] = "FantasticFrontierFogBypass.lua",
  ["142823291"] = "MM2Coins.lua",
  ["1345139196"] = "TreasureHuntSimAutofarm.lua",
  ["2821311961"] = "LandOfKings2AFKBypass.lua",
  ["3734765037"] = "SchoolSimulatorFarm.lua",
  ["1284995092"] = "HxHWorldsInfStam.lua", ["1271540988"] = "HxHWorldsInfStam.lua", ["2985324747"] = "HxHWorldsInfStam.lua", ["1377051471"] = "HxHWorldsInfStam.lua", ["1267706319"] = "HxHWorldsInfStam.lua", ["2666628845"] = "HxHWorldsInfStam.lua", ["1659370517"] = "HxHWorldsInfStam.lua", ["1658595723"] = "HxHWorldsInfStam.lua", ["1284995092"] = "HxHWorldsInfStam.lua", ["2822139147"] = "HxHWorldsInfStam.lua", ["2914207477"] = "HxHWorldsInfStam.lua", ["4683548487"] = "HxHWorldsInfStam.lua", ["1331553051"] = "HxHWorldsInfStam.lua", ["2723224683"] = "HxHWorldsInfStam.lua", ["3017625278"] = "HxHWorldsInfStam.lua", ["1663316935"] = "HxHWorldsInfStam.lua", ["2690587765"] = "HxHWorldsInfStam.lua", ["1759719157"] = "HxHWorldsInfStam.lua", ["1754083847"] = "HxHWorldsInfStam.lua", 
  ["UniBypass"] = "BasicWSandJPBypass.lua",
  ["Hitbox"] = "HitboxExpander.lua",
  ["R2S"] = "R2S.lua",
  ["AntiAFK"] = "AntiAFK.lua",
}

function load(name)
    if pcall(function() return scripts[name] end) then
        if type(scripts[name]) == "string" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripter/Scripts/master/"..scripts[name],true))()
        else
            for i, v in pairs(scripts[name]) do        
                loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripter/Scripts/master/"..v,true))()
            end
        end
    end
end

if scripts[tostring(game.PlaceId)] ~= nil and checkGame then
    load(tostring(game.PlaceId))
else
    if checkGame then
        setclipboard(tostring(game.PlaceId))
        local mes = Instance.new("Message")
        mes.Parent = workspace
        mes.Text = "Game is not detected; its ID is copied automatically.  Make a new ticket and please paste the ID that has been copied."
        setclipboard(tostring(game.PlaceId))
        wait(10)
        mes:Destroy()
    end
end

