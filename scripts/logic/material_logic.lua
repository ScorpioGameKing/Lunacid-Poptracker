MATERIAL_LOGIC = {
    ["ashes"] = function() return Or(
        CanEnter("Hollow Basin"),
        CanEnter("The Fetid Mire"), 
        CanEnter("Accursed Tomb"), 
        And(CanEnter("Castle Le Fanu"), CanEnterCastleStage(1)), 
        And(CanEnter("Terminus Prison"), WasItemReceived("terminusprisonkey")),
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
        CanEnter("Yosei Forest"), 
        CanReachAndKill(ENEMY.yakul), 
        CanReachAndKill(ENEMY.kodama)
    ) end,

    ["yellowmorel"] = function() return Or(
        CanEnter("Yosei Forest"), 
        CanReachAndKill(ENEMY.venus), 
        CanReachAndKill(ENEMY.neptune)
    ) end,

    ["lotusseedpod"] = function() return Or(
        CanEnter("The Fetid Mire"), 
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
            CanEnter("Yosei Forest"),
            CanReachAndKill(ENEMY.venus),
            CanReachAndKill(ENEMY.neptune),
            CanReachAndKill(ENEMY.unilateralis),
            CanReachAndKill(ENEMY.gloom_wood),
            CanReachAndKill(ENEMY.ceres)
        )
    end,

    ["oceanboneshard"] = function() return Or(
        CanEnter("Yosei Forest"), 
        CanReachAndKill(ENEMY.snail),
        CanReachAndKill(ENEMY.milk_snail)
    ) end,

    ["oceanboneshell"] = function() return Or(
        CanReachAndKill(ENEMY.mi_go), 
        CanReachAndKill(ENEMY.enlightened_one)
    ) end,

    ["moonpetal"] = function() return And(CanEnter("Castle Le Fanu"), CanEnterCastleStage(0)) end,

    ["bloodweed"] = function() return Or(
        And(CanEnter("Castle Le Fanu"), CanEnterCastleStage(1)),
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

    ["firecoral"] = function() return CanEnter("Boiling Grotto") end,

    ["fiddlehead"] = function() return CanEnter("Forlorn Arena") end,
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