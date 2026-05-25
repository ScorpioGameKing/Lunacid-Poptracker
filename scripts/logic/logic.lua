---@module 'scripts.logic.logic_utils'
ScriptHost:LoadScript("/scripts/logic/logic_utils.lua")
---@module 'scripts.logic.graph_defs'
ScriptHost:LoadScript("/scripts/logic/graph_defs.lua")
---@module 'scripts.logic.map_logic'
ScriptHost:LoadScript("/scripts/logic/map_logic.lua")
---@module 'scripts.logic.location_rules'
ScriptHost:LoadScript("/scripts/logic/location_rules.lua")
---@module 'scripts.logic.drop_logic'
ScriptHost:LoadScript("/scripts/logic/drop_logic.lua")
---@module 'scripts.logic.break_logic'
ScriptHost:LoadScript("/scripts/logic/break_logic.lua")
---@module 'scripts.logic.material_logic'
ScriptHost:LoadScript("/scripts/logic/material_logic.lua")

function ClassBasedGift()
    if Tracker:FindObjectForCode("starting_class").AcquiredCount == 5 then
        return false
    end
    return true
end