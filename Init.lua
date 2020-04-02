local scripts = {
  ["2686500207"] = "ABizarreDayBanknoteTP.lua",
  ["3224790922"] = "AOTInfBladeAndGas.lua",
  ["2394658527"] = "BloxnoHero2AutoFarm.lua",
  ["536102540"] = "DBZFinalStandAutoFarm",
  ["3221241066"] = "DeadzoneESP.lua",
  ["4477226641"] = "DemonJourneyAutofarm.lua",
  ["566399244"] = "ElementalBattlegroundsInfStam.lua",
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
  ["328028363"] = "TypicalColors2Backstab.lua",
  ["198817751"] = "VampireHunters2ESP.lua",
  ["2809202155"] = "YourBizzareAdventureItemESP.lua",
  ["3759927663"] = "ZombieStrikeGunMods.lua",
  ["2622527242"] = "rBreachSCPGUI.lua",
  ["UniBypass"] = "BasicWSandJPBypass.lua",
  ["Hitbox"] = "HitboxExpander.lua",
  ["R2S"] = "R2S.lua",
}

function load(name)
    if pcall(function() return scripts[name] end) then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BadScripter/Scripts/master/"..scripts[name],true))()
    end
end

if pcall(function() return scripts[tostring(game.PlaceId)] end) and checkGame then
    load(tostring(game.PlaceId))
end
