ScriptHost:LoadScript("/scripts/logic/logic_utils.lua")
ScriptHost:LoadScript("/scripts/logic/location_logic.lua")
ScriptHost:LoadScript("/scripts/logic/map_logic.lua")
ScriptHost:LoadScript("/scripts/logic/drop_logic.lua")

function ClassBasedGift()
    if Tracker:FindObjectForCode("starting_class").AcquiredCount == 5 then
        return false
    end
    return true
end