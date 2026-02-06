-- entry point for all lua code of the pack
-- more info on the lua API: https://github.com/black-sliver/PopTracker/blob/master/doc/PACKS.md#lua-interface
ENABLE_DEBUG_LOG = false

CURRENT_SCENE = "Hollow Basin"
TRAVERSED_ENTRANCES = {}
ENEMY_LOCATIONS = {}

-- get current variant
local variant = Tracker.ActiveVariantUID

print("-- Lunacid Tracker --")
print("Loaded variant: ", variant)
if ENABLE_DEBUG_LOG then
    print("Debug logging is enabled!")
end

-- Utility Script for helper functions etc.
ScriptHost:LoadScript("scripts/utils.lua")

-- Items
Tracker:AddItems("items/items.json")

-- Logic
ScriptHost:LoadScript("scripts/logic/logic.lua")

-- Custom Items
ScriptHost:LoadScript("scripts/custom_items/class.lua")
ScriptHost:LoadScript("scripts/custom_items/progressiveTogglePlus.lua")
ScriptHost:LoadScript("scripts/custom_items/progressiveTogglePlusWrapper.lua")

-- Maps
Tracker:AddMaps("maps/maps.json")

-- Locations
--Tracker:AddLocations("locations/locations.json")
Tracker:AddLocations("locations/A Holy Battlefield.json")
Tracker:AddLocations("locations/Accursed Tomb.json")
Tracker:AddLocations("locations/Boiling Grotto.json")
Tracker:AddLocations("locations/Castle Le Fanu.json")
Tracker:AddLocations("locations/Chamber of Fate.json")
Tracker:AddLocations("locations/Forbidden Archives.json")
Tracker:AddLocations("locations/Forest Canopy.json")
Tracker:AddLocations("locations/Forlorn Arena.json")
Tracker:AddLocations("locations/Great Well Surface.json")
Tracker:AddLocations("locations/Hollow Basin.json")
Tracker:AddLocations("locations/Labyrinth of Ash.json")
Tracker:AddLocations("locations/Laetus Chasm.json")
Tracker:AddLocations("locations/Sand Temple.json")
Tracker:AddLocations("locations/Sealed Ballroom.json")
Tracker:AddLocations("locations/Terminus Prison.json")
Tracker:AddLocations("locations/The Fetid Mire.json")
Tracker:AddLocations("locations/The Sanguine Sea.json")
Tracker:AddLocations("locations/Throne Chamber.json")
Tracker:AddLocations("locations/Tower of Abyss.json")
Tracker:AddLocations("locations/Wing's Rest.json")
Tracker:AddLocations("locations/Yosei Forest.json")

Tracker:AddLocations("locations/misc/LivingGates.json")
Tracker:AddLocations("locations/misc/Doors.json")
Tracker:AddLocations("locations/misc/Dropsanity.json")
Tracker:AddLocations("locations/misc/Overworld.json")
Tracker:AddLocations("locations/misc/Etna's Pupil.json")
Tracker:AddLocations("locations/misc/Quenchsanity.json")
Tracker:AddLocations("locations/misc/Shopsanity.json")
Tracker:AddLocations("locations/misc/Switchlocks.json")

Tracker:AddLocations("locations/breakable/Hollow Basin.json")
Tracker:AddLocations("locations/breakable/Castle Le Fanu.json")

-- Layout
Tracker:AddLayouts("layouts/tabs.json")
Tracker:AddLayouts("layouts/settings_popup.json")
Tracker:AddLayouts("layouts/items.json")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")

-- AutoTracking for Poptracker
if PopVersion and PopVersion >= "0.18.0" then
    ScriptHost:LoadScript("scripts/autotracking.lua")
end
