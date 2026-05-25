local ENTRANCE_FROM = {}
local INCOMING = {}

for src_id, region in pairs(REGIONS) do
    for _, exit_id in ipairs(region.exits or {}) do
        local entrance = ENTRANCES[exit_id]
        if entrance then
            ENTRANCE_FROM[exit_id] = src_id
            local to = entrance.to
            if not INCOMING[to] then
                INCOMING[to] = {}
            end
            table.insert(INCOMING[to], {
                id = exit_id,
                source = src_id,
                warp = entrance.warp,
                rule = entrance.rule
            })
        end
    end
end

MAP_TO_REGION = {
    ["Hollow Basin"] = R_HOLLOW_BASIN,
    ["Wings Rest"] = R_WINGS_REST,
    ["Forbidden Archives"] = R_FORBIDDEN_ARCHIVES_1F_FRONT,
    ["The Fetid Mire"] = R_FETID_MIRE,
    ["Yosei Forest"] = R_YOSEI_FOREST,
    ["Forest Canopy"] = R_FOREST_CANOPY,
    ["The Sanguine Sea"] = R_SANGUINE_SEA,
    ["Castle Le Fanu"] = R_CASTLE_LE_FANU_ENTRANCE,
    ["A Holy Battlefield"] = R_HOLY_BATTLEGROUND,
    ["Accursed Tomb"] = R_ACCURSED_TOMB,
    ["Laetus Chasm"] = R_LAETUS_CHASM,
    ["Great Well Surface"] = R_GREAT_WELL_SURFACE,
    ["Boiling Grotto"] = R_BOILING_GROTTO,
    ["Tower of Abyss"] = R_TOWER_OF_ABYSS,
    ["Throne Chamber"] = R_THRONE_CHAMBER,
    ["Sealed Ballroom"] = R_SEALED_BALLROOM,
    ["Terminus Prison"] = R_TERMINUS_PRISON_1F,
    ["Labyrinth of Ash"] = R_LABYRINTH_OF_ASH,
    ["Forlorn Arena"] = R_FORLORN_ARENA,
    ["Chamber of Fate"] = R_CHAMBER_OF_FATE
}

local STARTING_AREA_REGIONS = {
    [0] = R_HOLLOW_BASIN,
    [1] = R_FETID_MIRE,
    [2] = R_YOSEI_FOREST,
    [3] = R_FORBIDDEN_ARCHIVES_2F,
    [4] = R_ACCURSED_TOMB,
    [5] = R_CASTLE_LE_FANU_ENTRANCE,
    [6] = R_BOILING_GROTTO,
    [7] = R_TERMINUS_PRISON_3F,
    [8] = R_FORLORN_ARENA,
    [9] = R_LABYRINTH_OF_ASH,
}

local visiting = {}

function CanReachRegion(region_id)

    if visiting[region_id] then
        return AccessibilityLevel.None
    end
    visiting[region_id] = true

    local result = AccessibilityLevel.None
    local er = Tracker:FindObjectForCode('entrance_toggle').Active
        or Tracker:FindObjectForCode("starting_area").AcquiredCount > 0

    if region_id == R_STARTING_AREA or region_id == R_WINGS_REST then
        visiting[region_id] = nil
        return AccessibilityLevel.Normal
    end

    local start_region = STARTING_AREA_REGIONS[Tracker:FindObjectForCode('starting_area').AcquiredCount]
    if start_region and region_id == start_region then
        visiting[region_id] = nil
        return AccessibilityLevel.Normal
    end

    local incoming = INCOMING[region_id]

    if incoming then
        for _, entry in ipairs(incoming) do
            local traverse_ok
            local needs_source = true

            if er and entry.warp then
                traverse_ok = HasConnection(entry.warp)
                needs_source = false
            else
                traverse_ok = entry.rule()
                needs_source = true
            end

            if traverse_ok then
                if not needs_source then
                    result = Or(result, traverse_ok)
                elseif entry.source then
                    local src_result = CanReachRegion(entry.source)
                    result = Or(result, And(src_result, traverse_ok))
                end
            end
        end
    end

    if result == AccessibilityLevel.Normal then
        print(region_id)
    end

    visiting[region_id] = nil
    return result
end

function CanEnter(map)
    local region_id = MAP_TO_REGION[map]
    if not region_id then
        return AccessibilityLevel.None
    end
    return CanReachRegion(region_id)
end

function CanEnterRegion(region)
    return CanReachRegion(region)
end

function StartingIn(region_id)
    local region = STARTING_AREA_REGIONS[Tracker:FindObjectForCode('starting_area').AcquiredCount]
    if region and region_id == region then
        return AccessibilityLevel.Normal
    end
    return AccessibilityLevel.None
end
