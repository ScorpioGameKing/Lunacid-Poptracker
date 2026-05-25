MATERIAL_LOGIC = {
    ["ashes"] = function() return Or(
        CanReachRegion(R_HOLLOW_BASIN),
        CanReachRegion(R_FETID_MIRE), 
        CanReachRegion(R_ACCURSED_TOMB), 
        And(CanReachRegion(R_CASTLE_LE_FANU_ENTRANCE), CanEnterCastleStage(1)), 
        And(CanReachRegion(R_TERMINUS_PRISON_1F), WasItemReceived("terminusprisonkey")),
        CanReachAndKill(ENEMY.slime_skeleton)
    ) 
    end,

    ["fireopal"] = function() return Or(
        CanReachAndKill(ENEMY.anpu),
        CanReachAndKill(ENEMY.cursed_painting), 
        CanReachAndKill(ENEMY.yakul), 
        CanReachAndKill(ENEMY.necronomicon)
    ) end,

    ["opal"] = function() return Or(
        CanReachRegion(R_YOSEI_FOREST), 
        CanReachAndKill(ENEMY.yakul), 
        CanReachAndKill(ENEMY.kodama)
    ) end,

    ["yellowmorel"] = function() return Or(
        CanReachRegion(R_YOSEI_FOREST), 
        CanReachAndKill(ENEMY.venus), 
        CanReachAndKill(ENEMY.neptune)
    ) end,

    ["lotusseedpod"] = function() return Or(
        CanReachRegion(R_FETID_MIRE), 
        CanReachAndKill(ENEMY.rat_king)
    ) end,

    ["snowflakeobsidian"] = function() return Or(
        CanReachAndKill(ENEMY.ikurrilb), 
        CanReachAndKill(ENEMY.mi_go)
    ) end,

    ["onyx"] = function() return Or(
        CanReachAndKill(ENEMY.shulker),
        CanReachAndKill(ENEMY.mummy),
        CanReachAndKill(ENEMY.mummy_knight),
        CanReachAndKill(ENEMY.skeleton_weapon),
        CanReachAndKill(ENEMY.mare),
        CanReachAndKill(ENEMY.giant_skeleton)
    ) end,

    ["obsidian"] = function() return Or(
        CanReachAndKill(ENEMY.shulker),
        CanReachAndKill(ENEMY.mare),
        CanReachAndKill(ENEMY.great_bat), 
        CanReachAndKill(ENEMY.mimic),
        CanReachAndKill(ENEMY.obsidian_skeleton), 
        CanReachAndKill(ENEMY.sucsarian_dagger),
        CanReachAndKill(ENEMY.sucsarian_spear)
    ) end,

    ["destroyingangelmushroom"] = function()
        return Or(
                CanReachRegion(R_YOSEI_FOREST),
            CanReachAndKill(ENEMY.venus),
            CanReachAndKill(ENEMY.neptune),
            CanReachAndKill(ENEMY.unilateralis),
            CanReachAndKill(ENEMY.gloom_wood),
            CanReachAndKill(ENEMY.ceres)
        )
    end,

    ["oceanboneshard"] = function() return Or(
        CanReachRegion(R_YOSEI_FOREST), 
        CanReachAndKill(ENEMY.snail),
        CanReachAndKill(ENEMY.milk_snail)
    ) end,

    ["oceanboneshell"] = function() return Or(
        CanReachAndKill(ENEMY.mi_go), 
        CanReachAndKill(ENEMY.enlightened_one)
    ) end,

    ["moonpetal"] = function() return And(CanReachRegion(R_CASTLE_LE_FANU_ENTRANCE), CanEnterCastleStage(0)) end,

    ["bloodweed"] = function() return Or(
        And(CanReachRegion(R_CASTLE_LE_FANU_ENTRANCE), CanEnterCastleStage(1)),
        CanReachAndKill(ENEMY.hemalith)
    ) end,

    ["ectoplasm"] = function()
        return Or(
            CanReachAndKill(ENEMY.phantom),
            CanReachAndKill(ENEMY.poltergeist),
            CanReachAndKill(ENEMY.lunam)
        )
    end,

    ["bones"] = function() return Or(
        CanReachAndKill(ENEMY.embalmed),
        CanReachAndKill(ENEMY.giant_skeleton),
        CanReachAndKill(ENEMY.lupine_skeleton),
        CanReachAndKill(ENEMY.infested_corpse),
        CanReachAndKill(ENEMY.obsidian_skeleton),
        CanReachAndKill(ENEMY.hallowed_husk),
        CanReachAndKill(ENEMY.skeleton_weapon)
    ) end,

    ["ikurrilbroot"] = function() return CanReachAndKill(ENEMY.ikurrilb) end,

    ["firecoral"] = function() return CanReachRegion(R_BOILING_GROTTO) end,

    ["fiddlehead"] = function() return CanReachRegion(R_FORLORN_ARENA) end,
}

function CanGetMaterial(material)
    local level = AccessibilityLevel.SequenceBreak

    if type(MATERIAL_LOGIC[material]) == "function" then
        level = MATERIAL_LOGIC[material]()
        if level < AccessibilityLevel.SequenceBreak then
            return AccessibilityLevel.SequenceBreak
        end
    end

    return level
end