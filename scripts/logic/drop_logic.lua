ENEMY = {
    snail = "Snail",
    milk_snail = "Milk Snail",
    mummy = "Mummy",
    mummy_knight = "Mummy Knight",
    shulker = "Shulker",
    ankou = "Ankou",
    spectre = "Spectre",

    slime = "Slime",
    slime_skeleton = "Slime Skeleton",
    skeleton = "Skeleton",
    skeleton_weapon = "Skeleton (Weapon)",
    rat = "Rat",
    rat_king = "Rat King",
    rat_queen = "Rat Queen",
    mimic = "Mimic",
    devil_slime = "Devil Slime",

    yakul = "Yakul",
    kodama = "Kodama",
    lunaga = "Lunaga",
    ga_mangetsu = "Ga-Mangetsu",
    venus = "Venus",
    neptune = "Neptune",
    unilateralis = "Unilateralis",
    tillandsia = "Tillandsia",

    enlightened_one = "Enlightened One",
    necronomicon = "Necronomicon",
    chimera = "Chimera",

    hemalith = "Hemalith",

    mare = "Mare",
    mi_go = "Mi-Go",
    phantom = "Phantom",
    cursed_painting = "Cursed Painting",

    poltergeist = "Poltergeist",
    vampire = "Vampire",
    vampire_page = "Vampire Page",
    great_bat = "Great Bat",
    malformed = "Malformed",

    malformed_horse = "Malformed Horse",
    hallowed_husk = "Hallowed Husk",

    ikurrilb = "Ikurr'ilb",
    obsidian_skeleton = "Obsidian Skeleton",
    serpent = "Serpent",
    anpu = "Anpu",
    anpu_sword = "Anpu (Sword)",
    embalmed = "Embalmed",

    lunam = "Cerritulus Lunam",
    jailor = "Jailor",
    lupine_skeleton = "Lupine Skeleton",
    giant_skeleton = "Giant Skeleton",
    infested_corpse = "Infested Corpse",

    sucsarian_dagger = "Sucsarian (Dagger)",
    sucsarian_spear = "Sucsarian (Spear)",
    ceres = "Ceres",
    vesta = "Vesta",
    gloom_wood = "Gloom Wood",

    centaur = "Centaur",
    cetea = "Cetea",

    demon = "Abyssal Demon",

    umbra = "Sanguis Umbra",
}

ENEMY_LOGIC = {
    [ENEMY.demon]               = function() return AccessibilityLevel.Normal end,
    [ENEMY.anpu]                = function() return AccessibilityLevel.Normal end,
    [ENEMY.anpu_sword]          = function() return AccessibilityLevel.Normal end,
    [ENEMY.lunam]               = function() return HasElementOtherThan({"ele_light"}) end,
    [ENEMY.ceres]               = function() return AccessibilityLevel.Normal end,
    [ENEMY.cetea]               = function() return AccessibilityLevel.Normal end,
    [ENEMY.chimera]             = function() return AccessibilityLevel.Normal end,
    [ENEMY.cursed_painting]     = function() return AccessibilityLevel.Normal end,
    [ENEMY.embalmed]            = function() return AccessibilityLevel.Normal end,
    [ENEMY.enlightened_one]     = function() return HasElementOtherThan({"ele_light", "ele_dark"}) end,
    [ENEMY.giant_skeleton]      = function() return AccessibilityLevel.Normal end,
    [ENEMY.gloom_wood]          = function() return AccessibilityLevel.Normal end,
    [ENEMY.great_bat]           = function() return AccessibilityLevel.Normal end,
    [ENEMY.hallowed_husk]       = function() return AccessibilityLevel.Normal end,
    [ENEMY.hemalith]            = function() return AccessibilityLevel.Normal end,
    [ENEMY.ikurrilb]            = function() return HasElementOtherThan({"ele_fire"}) end,
    [ENEMY.jailor]              = function() return AccessibilityLevel.Normal end,
    [ENEMY.kodama]              = function() return HasElementOtherThan({"ele_light"}) end,
    [ENEMY.malformed]           = function() return AccessibilityLevel.Normal end,
    [ENEMY.malformed_horse]     = function() return AccessibilityLevel.Normal end,
    [ENEMY.mare]                = function() return HasElementOtherThan({"ele_normal", "ele_dark"}) end,
    [ENEMY.mi_go]               = function() return HasElementOtherThan({"ele_normal"}) end,
    [ENEMY.milk_snail]          = function() return AccessibilityLevel.Normal end,
    [ENEMY.mimic]               = function() return AccessibilityLevel.Normal end,
    [ENEMY.mummy]               = function() return AccessibilityLevel.Normal end,
    [ENEMY.mummy_knight]        = function() return AccessibilityLevel.Normal end,
    [ENEMY.necronomicon]        = function() return AccessibilityLevel.Normal end,
    [ENEMY.neptune]             = function() return AccessibilityLevel.Normal end,
    [ENEMY.obsidian_skeleton]   = function() return AccessibilityLevel.Normal end,
    [ENEMY.phantom]             = function() return HasElementOtherThan({"ele_normal"}) end,
    [ENEMY.poltergeist]         = function() return HasElementOtherThan({"ele_normal"}) end,
    [ENEMY.rat]                 = function() return AccessibilityLevel.Normal end,
    [ENEMY.rat_king]            = function() return AccessibilityLevel.Normal end,
    [ENEMY.rat_queen]           = function() return AccessibilityLevel.Normal end,
    [ENEMY.umbra]               = function() return HasElementOtherThan({"ele_normal"}) end,
    [ENEMY.serpent]             = function() return AccessibilityLevel.Normal end,
    [ENEMY.shulker]             = function() return AccessibilityLevel.Normal end,
    [ENEMY.skeleton]            = function() return AccessibilityLevel.Normal end,
    [ENEMY.skeleton_weapon]     = function() return AccessibilityLevel.Normal end,
    [ENEMY.slime_skeleton]      = function() return AccessibilityLevel.Normal end,
    [ENEMY.snail]               = function() return AccessibilityLevel.Normal end,
    [ENEMY.sucsarian_dagger]    = function() return AccessibilityLevel.Normal end,
    [ENEMY.sucsarian_spear]     = function() return AccessibilityLevel.Normal end,
    [ENEMY.unilateralis]        = function() return AccessibilityLevel.Normal end,
    [ENEMY.vampire]             = function() return AccessibilityLevel.Normal end,
    [ENEMY.vampire_page]        = function() return AccessibilityLevel.Normal end,
    [ENEMY.venus]               = function() return AccessibilityLevel.Normal end,
    [ENEMY.vesta]               = function() return AccessibilityLevel.Normal end,
    [ENEMY.yakul]               = function() return HasElementOtherThan({"ele_light"}) end,
    [ENEMY.tillandsia]          = function() return AccessibilityLevel.Normal end,
}

ENEMY_POSITIONS = {
    ["PITT_A1|SmallGroupPittA1|0"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Pillar Room Back Left")) end, -- LunacidRegion.temple_secret
    ["PITT_A1|SmallGroupPittA1|1"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Pillar Room Back Left")) end, -- LunacidRegion.temple_secret
    ["PITT_A1|SmallGroupPittA1|2"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Pillar Room Back Left")) end, -- LunacidRegion.temple_secret

    ["PITT_A1|StartSnailPittA1|0"] = function() return And(CanEnter("Hollow Basin"), CanReach("Encouraging Statue")) end, -- LunacidRegion.hollow_basin
    ["PITT_A1|StartSnailPittA1|1"] = function() return And(CanEnter("Hollow Basin"), CanReach("Encouraging Statue")) end, -- LunacidRegion.hollow_basin
    ["PITT_A1|StartSnailPittA1|2"] = function() return And(CanEnter("Hollow Basin"), CanReach("Encouraging Statue")) end, -- LunacidRegion.hollow_basin
    ["PITT_A1|StartSnailPittA1|3"] = function() return And(CanEnter("Hollow Basin"), CanReach("Encouraging Statue")) end, -- LunacidRegion.hollow_basin
    ["PITT_A1|StartSnailPittA1|4"] = function() return And(CanEnter("Hollow Basin"), CanReach("Encouraging Statue")) end, -- LunacidRegion.hollow_basin

    ["PITT_A1|MainPittA1|6"] = function() return And(CanEnter("Hollow Basin"), CanReach("Encouraging Statue")) end, -- LunacidRegion.hollow_basin
    ["PITT_A1|MainPittA1|7"] = function() return And(CanEnter("Hollow Basin"), CanReach("Encouraging Statue")) end, -- LunacidRegion.hollow_basin
    ["PITT_A1|MainPittA1|8"] = function() return And(CanEnter("Hollow Basin"), CanReach("Encouraging Statue")) end, -- LunacidRegion.hollow_basin
    ["PITT_A1|MainPittA1|9"] = function() return And(CanEnter("Hollow Basin"), CanReach("Encouraging Statue")) end, -- LunacidRegion.hollow_basin
    ["PITT_A1|MainPittA1|10"] = function() return And(CanEnter("Hollow Basin"), CanReach("Encouraging Statue")) end, -- LunacidRegion.hollow_basin
    ["PITT_A1|MainPittA1|11"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Pillar Room Back Left")) end, -- LunacidRegion.temple_secret
    ["PITT_A1|MainPittA1|12"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Pillar Room Back Left")) end, -- LunacidRegion.temple_secret
    ["PITT_A1|MainPittA1|13"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Pillar Room Back Left")) end, -- LunacidRegion.temple_secret
    ["PITT_A1|MainPittA1|14"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Pillar Room Back Left")) end, -- LunacidRegion.temple_secret
    ["PITT_A1|MainPittA1|15"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Pillar Room Back Left")) end, -- LunacidRegion.temple_secret
    ["PITT_A1|MainPittA1|16"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Pillar Room Back Left")) end, -- LunacidRegion.temple_secret
    ["PITT_A1|MainPittA1|17"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Pillar Room Back Left")) end, -- LunacidRegion.temple_secret
    ["PITT_A1|MainPittA1|18"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Pillar Room Back Left")) end, -- LunacidRegion.temple_secret

    ["PITT_A1|HiddenPittA1|0"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Altar Chest"), HasSwitch("templeofsilenceswitchkey")) end, -- LunacidRegion.temple_locked
    ["PITT_A1|HiddenPittA1|1"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Altar Chest"), HasSwitch("templeofsilenceswitchkey")) end, -- LunacidRegion.temple_locked
    ["PITT_A1|HiddenPittA1|2"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Altar Chest"), HasSwitch("templeofsilenceswitchkey")) end, -- LunacidRegion.temple_locked
    ["PITT_A1|HiddenPittA1|3"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Altar Chest"), HasSwitch("templeofsilenceswitchkey")) end, -- LunacidRegion.temple_locked
    ["PITT_A1|HiddenPittA1|4"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Altar Chest"), HasSwitch("templeofsilenceswitchkey")) end, -- LunacidRegion.temple_locked
    ["PITT_A1|HiddenPittA1|5"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Altar Chest"), HasSwitch("templeofsilenceswitchkey")) end, -- LunacidRegion.temple_locked
    ["PITT_A1|HiddenPittA1|6"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Altar Chest"), HasSwitch("templeofsilenceswitchkey")) end, -- LunacidRegion.temple_locked
    ["PITT_A1|HiddenPittA1|7"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Altar Chest"), HasSwitch("templeofsilenceswitchkey")) end, -- LunacidRegion.temple_locked
    ["PITT_A1|HiddenPittA1|8"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Altar Chest"), HasSwitch("templeofsilenceswitchkey")) end, -- LunacidRegion.temple_locked
    ["PITT_A1|HiddenPittA1|9"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Altar Chest"), HasSwitch("templeofsilenceswitchkey")) end, -- LunacidRegion.temple_locked

    ["PITT_A1|CrawlingPittA1|0"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Table in Sewer")) end, -- LunacidRegion.temple_locked
    ["PITT_A1|CrawlingPittA1|1"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Table in Sewer")) end, -- LunacidRegion.temple_locked
    ["PITT_A1|CrawlingPittA1|2"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Table in Sewer")) end, -- LunacidRegion.temple_locked
    ["PITT_A1|CrawlingPittA1|3"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Table in Sewer")) end, -- LunacidRegion.temple_locked
    ["PITT_A1|CrawlingPittA1|4"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Pillar Room Back Left")) end, -- LunacidRegion.temple_secret
    ["PITT_A1|CrawlingPittA1|5"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Table in Sewer")) end, -- LunacidRegion.temple_locked
    ["PITT_A1|CrawlingPittA1|6"] = function() return And(CanEnter("Hollow Basin"), CanReach("Temple Table in Sewer")) end, -- LunacidRegion.temple_locked

    -- Yosei Forest
    ["FOREST_A1|LowerFrontForestA1|0"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_forest
    ["FOREST_A1|LowerFrontForestA1|1"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_forest
    ["FOREST_A1|LowerFrontForestA1|2"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_forest
    ["FOREST_A1|LowerFrontForestA1|3"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_forest
    ["FOREST_A1|LowerFrontForestA1|4"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_forest

    ["FOREST_A1|LowerBackYakulForestA1|0"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_forest
    ["FOREST_A1|LowerBackYakulForestA1|1"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_forest

    ["FOREST_A1|LowerBackBunForestA1|0"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_forest
    ["FOREST_A1|LowerBackBunForestA1|1"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_forest
    ["FOREST_A1|LowerBackBunForestA1|2"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_forest
    ["FOREST_A1|LowerBackBunForestA1|3"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_forest
    ["FOREST_A1|LowerBackBunForestA1|4"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_forest
    ["FOREST_A1|LowerBackBunForestA1|5"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_forest

    ["FOREST_A1|MainForestA1|10"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_lower
    ["FOREST_A1|MainForestA1|11"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_lower
    ["FOREST_A1|MainForestA1|12"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_lower
    ["FOREST_A1|MainForestA1|13"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_lower
    ["FOREST_A1|MainForestA1|14"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_forest
    ["FOREST_A1|MainForestA1|15"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_lower
    ["FOREST_A1|MainForestA1|16"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_lower
    ["FOREST_A1|MainForestA1|17"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_lower
    ["FOREST_A1|MainForestA1|18"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_lower
    ["FOREST_A1|MainForestA1|19"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_lower
    ["FOREST_A1|MainForestA1|20"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_lower
    ["FOREST_A1|MainForestA1|21"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_lower
    ["FOREST_A1|MainForestA1|22"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_lower
    ["FOREST_A1|MainForestA1|23"] = function() return And(CanEnter("Yosei Forest"), CanReach("Chest Near Tree")) end, -- LunacidRegion.yosei_lower

    -- The Fetid Mire
    ["SEWER_A1|MainSewerA1|8"] = function() return CanEnter("The Fetid Mire") end, -- LunacidRegion.fetid_mire
    ["SEWER_A1|MainSewerA1|9"] = function() return CanEnter("The Fetid Mire") end, -- LunacidRegion.fetid_mire
    ["SEWER_A1|MainSewerA1|10"] = function() return CanEnter("The Fetid Mire") end, -- LunacidRegion.fetid_mire
    ["SEWER_A1|MainSewerA1|12"] = function() return CanEnter("The Fetid Mire") end, -- LunacidRegion.fetid_mire
    ["SEWER_A1|MainSewerA1|13"] = function() return CanEnter("The Fetid Mire") end, -- LunacidRegion.fetid_mire
    ["SEWER_A1|MainSewerA1|14"] = function() return CanEnter("The Fetid Mire") end, -- LunacidRegion.fetid_mire
    ["SEWER_A1|MainSewerA1|15"] = function() return CanEnter("The Fetid Mire") end, -- LunacidRegion.fetid_mire
    ["SEWER_A1|MainSewerA1|17"] = function() return CanEnter("The Fetid Mire") end, -- LunacidRegion.fetid_mire
    ["SEWER_A1|MainSewerA1|18"] = function() return CanEnter("The Fetid Mire") end, -- LunacidRegion.fetid_mire
    ["SEWER_A1|MainSewerA1|19"] = function() return CanEnter("The Fetid Mire") end, -- LunacidRegion.fetid_mire
    ["SEWER_A1|MainSewerA1|22"] = function() return CanEnter("The Fetid Mire") end, -- LunacidRegion.fetid_mire
    ["SEWER_A1|MainSewerA1|23"] = function() return CanEnter("The Fetid Mire") end, -- LunacidRegion.fetid_mire
    ["SEWER_A1|MainSewerA1|24"] = function() return CanEnter("The Fetid Mire") end, -- LunacidRegion.fetid_mire
    ["SEWER_A1|MainSewerA1|25"] = function() return CanEnter("The Fetid Mire") end, -- LunacidRegion.fetid_mire
    ["SEWER_A1|MainSewerA1|26"] = function() return CanEnter("The Fetid Mire") end, -- LunacidRegion.fetid_mire
    ["SEWER_A1|MainSewerA1|27"] = function() return CanEnter("The Fetid Mire") end, -- LunacidRegion.fetid_mire
    ["SEWER_A1|MainSewerA1|28"] = function() return CanEnter("The Fetid Mire") end, -- LunacidRegion.fetid_mire
    ["SEWER_A1|MainSewerA1|29"] = function() return CanEnter("The Fetid Mire") end, -- LunacidRegion.fetid_mire
    ["SEWER_A1|MainSewerA1|30"] = function() return CanEnter("The Fetid Mire") end, -- LunacidRegion.fetid_mire
    ["SEWER_A1|MainSewerA1|31"] = function() return CanEnter("The Fetid Mire") end, -- LunacidRegion.fetid_mire
    ["SEWER_A1|MainSewerA1|36"] = function() return CanEnter("The Fetid Mire") end, -- LunacidRegion.fetid_mire
    ["SEWER_A1|MainSewerA1|37"] = function() return CanEnter("The Fetid Mire") end, -- LunacidRegion.fetid_mire

    -- Forest Canopy
    ["FOREST_B1|NestForestB1|0"] = function() return CanEnter("Forest Canopy") end, -- LunacidRegion.forest_canopy
    ["FOREST_B1|NestForestB1|1"] = function() return CanEnter("Forest Canopy") end, -- LunacidRegion.forest_canopy
    ["FOREST_B1|NestForestB1|2"] = function() return CanEnter("Forest Canopy") end, -- LunacidRegion.forest_canopy

    ["FOREST_B1|MainForestB1|2"] = function() return CanEnter("Forest Canopy") end, -- LunacidRegion.forest_canopy
    ["FOREST_B1|MainForestB1|3"] = function() return CanEnter("Forest Canopy") end, -- LunacidRegion.forest_canopy
    ["FOREST_B1|MainForestB1|4"] = function() return CanEnter("Forest Canopy") end, -- LunacidRegion.forest_canopy
    ["FOREST_B1|MainForestB1|5"] = function() return CanEnter("Forest Canopy") end, -- LunacidRegion.forest_canopy
    ["FOREST_B1|MainForestB1|6"] = function() return CanEnter("Forest Canopy") end, -- LunacidRegion.forest_canopy
    ["FOREST_B1|MainForestB1|7"] = function() return CanEnter("Forest Canopy") end, -- LunacidRegion.forest_canopy
    ["FOREST_B1|MainForestB1|8"] = function() return CanEnter("Forest Canopy") end, -- LunacidRegion.forest_canopy
    ["FOREST_B1|MainForestB1|9"] = function() return CanEnter("Forest Canopy") end, -- LunacidRegion.forest_canopy
    ["FOREST_B1|MainForestB1|10"] = function() return CanEnter("Forest Canopy") end, -- LunacidRegion.forest_canopy
    ["FOREST_B1|MainForestB1|11"] = function() return CanEnter("Forest Canopy") end, -- LunacidRegion.forest_canopy
    ["FOREST_B1|MainForestB1|12"] = function() return CanEnter("Forest Canopy") end, -- LunacidRegion.forest_canopy
    ["FOREST_B1|MainForestB1|13"] = function() return CanEnter("Forest Canopy") end, -- LunacidRegion.forest_canopy
    ["FOREST_B1|MainForestB1|15"] = function() return CanEnter("Forest Canopy") end, -- LunacidRegion.forest_canopy
    ["FOREST_B1|MainForestB1|16"] = function() return CanEnter("Forest Canopy") end, -- LunacidRegion.forest_canopy
    ["FOREST_B1|MainForestB1|17"] = function() return CanEnter("Forest Canopy") end, -- LunacidRegion.forest_canopy
    ["FOREST_B1|MainForestB1|18"] = function() return CanEnter("Forest Canopy") end, -- LunacidRegion.forest_canopy
    ["FOREST_B1|MainForestB1|19"] = function() return CanEnter("Forest Canopy") end, -- LunacidRegion.forest_canopy

    -- Sanguine Sea.
    ["LAKE|DryLake|3"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea
    ["LAKE|DryLake|4"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea
    ["LAKE|DryLake|5"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea
    ["LAKE|DryLake|6"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea
    ["LAKE|DryLake|7"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea
    ["LAKE|DryLake|8"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea
    ["LAKE|DryLake|9"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea
    ["LAKE|DryLake|10"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea
    ["LAKE|DryLake|11"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea

    ["LAKE|DryNest1Lake|0"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea
    ["LAKE|DryNest1Lake|1"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea
    ["LAKE|DryNest1Lake|2"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea

    ["LAKE|DryNest2Lake|0"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea
    ["LAKE|DryNest2Lake|1"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea

    ["LAKE|MainLake|1"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea
    ["LAKE|MainLake|2"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea
    ["LAKE|MainLake|3"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea
    ["LAKE|MainLake|4"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea
    ["LAKE|MainLake|7"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea
    ["LAKE|MainLake|8"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea
    ["LAKE|MainLake|9"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea
    ["LAKE|MainLake|10"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea
    ["LAKE|MainLake|11"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea
    ["LAKE|MainLake|12"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea
    ["LAKE|MainLake|13"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea
    ["LAKE|MainLake|14"] = function() return CanEnter("The Sanguine Sea") end, -- LunacidRegion.sanguine_sea

    -- Forbidden Archives
    ["ARCHIVES|MainArchives|1"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_2f
    ["ARCHIVES|MainArchives|2"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_2f
    ["ARCHIVES|MainArchives|3"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_2f
    ["ARCHIVES|MainArchives|4"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_2f
    ["ARCHIVES|MainArchives|5"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_2f
    ["ARCHIVES|MainArchives|6"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_2f
    ["ARCHIVES|MainArchives|7"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_2f
    ["ARCHIVES|MainArchives|8"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_1f_front
    ["ARCHIVES|MainArchives|9"] = function() return And(CanEnter("Forbidden Archives"), CanReach("Rooftops")) end, -- LunacidRegion.forbidden_archives_3f
    ["ARCHIVES|MainArchives|10"] = function() return And(CanEnter("Forbidden Archives"), CanReach("Rooftops")) end, -- LunacidRegion.forbidden_archives_3f
    ["ARCHIVES|MainArchives|11"] = function() return And(CanEnter("Forbidden Archives"), CanReach("Rooftops")) end, -- LunacidRegion.forbidden_archives_3f
    ["ARCHIVES|MainArchives|12"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_1f_front
    ["ARCHIVES|MainArchives|32"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_1f_front

    ["ARCHIVES|ChimeraTopArchives|0"] = function() return And(CanEnter("Forbidden Archives"), CanReach("Rooftops")) end, -- LunacidRegion.forbidden_archives_3f
    ["ARCHIVES|ChimeraLowerArchives|0"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_1f_front

    ["ARCHIVES|SnailNest1Archives|0"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_1f_front
    ["ARCHIVES|SnailNest1Archives|1"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_1f_front
    ["ARCHIVES|SnailNest1Archives|2"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_1f_front
    ["ARCHIVES|SnailNest1Archives|3"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_1f_front
    ["ARCHIVES|SnailNest1Archives|4"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_1f_front

    ["ARCHIVES|SnailNest2Archives|0"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_1f_front
    ["ARCHIVES|SnailNest2Archives|1"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_1f_front

    ["ARCHIVES|SnailNest3Archives|0"] = function() return And(CanEnter("Forbidden Archives"), CanReach("Rooftops")) end, -- LunacidRegion.forbidden_archives_3f
    ["ARCHIVES|SnailNest3Archives|1"] = function() return And(CanEnter("Forbidden Archives"), CanReach("Rooftops")) end, -- LunacidRegion.forbidden_archives_3f

    ["ARCHIVES|NerveNest1Archives|0"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_1f_front
    ["ARCHIVES|NerveNest1Archives|1"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_1f_front
    ["ARCHIVES|NerveNest2Archives|0"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_1f_front

    ["ARCHIVES|RandomNest1Archives|0"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_2f
    ["ARCHIVES|RandomNest1Archives|1"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_2f
    ["ARCHIVES|RandomNest1Archives|2"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_2f

    ["ARCHIVES|NerveNest3Archives|0"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_1f_front
    ["ARCHIVES|NerveNest3Archives|1"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_1f_front

    ["ARCHIVES|RandomNest2Archives|0"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_1f_front
    ["ARCHIVES|RandomNest2Archives|1"] = function() return And(CanEnter("Forbidden Archives"), CanReach("uwu")) end, -- LunacidRegion.forbidden_archives_1f_front

    ["HAUNT|JumpscareHaunt|0"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Catacombs Coffins Near Stairs")) end, -- LunacidRegion.accursed_tomb

    ["HAUNT|NestHaunt|0"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Catacombs Coffins Near Stairs")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|NestHaunt|1"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Catacombs Coffins Near Stairs")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|NestHaunt|2"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Catacombs Coffins Near Stairs")) end, -- LunacidRegion.accursed_tomb

    ["HAUNT|MainHaunt|2"] = function() return And(CanEnter("Accursed Tomb "), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.vampire_tomb
    ["HAUNT|MainHaunt|3"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|4"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|5"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|6"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|7"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|8"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|9"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|10"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|11"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|12"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|13"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|14"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|15"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|16"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|17"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|18"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|19"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|20"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|21"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|22"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|23"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Demi Chest")) end, -- LunacidRegion.accursed_tomb_platform
    ["HAUNT|MainHaunt|24"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Demi Chest")) end, -- LunacidRegion.accursed_tomb_platform
    ["HAUNT|MainHaunt|25"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Demi Chest")) end, -- LunacidRegion.accursed_tomb_platform
    ["HAUNT|MainHaunt|26"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Demi Chest")) end, -- LunacidRegion.accursed_tomb_platform
    ["HAUNT|MainHaunt|28"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|29"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|30"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|31"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|32"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|33"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.accursed_tomb
    ["HAUNT|MainHaunt|34"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.vampire_tomb
    ["HAUNT|MainHaunt|35"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Deep Coffin Storage")) end, -- LunacidRegion.vampire_tomb
    ["HAUNT|MainHaunt|36"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Demi Chest")) end, -- LunacidRegion.accursed_tomb_platform
    ["HAUNT|MainHaunt|37"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Demi Chest")) end, -- LunacidRegion.accursed_tomb_platform
    ["HAUNT|MainHaunt|39"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Mausoleum Central Room (Back)")) end, -- LunacidRegion.mausoleum
    ["HAUNT|MainHaunt|40"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Mausoleum Central Room (Back)")) end, -- LunacidRegion.mausoleum
    ["HAUNT|MainHaunt|41"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Mausoleum Central Room (Back)")) end, -- LunacidRegion.mausoleum
    ["HAUNT|MainHaunt|42"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Mausoleum Central Room (Back)")) end, -- LunacidRegion.mausoleum
    ["HAUNT|MainHaunt|43"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Mausoleum Central Room (Back)")) end, -- LunacidRegion.mausoleum
    ["HAUNT|MainHaunt|44"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Mausoleum Central Room (Back)")) end, -- LunacidRegion.mausoleum
    ["HAUNT|MainHaunt|45"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Mausoleum Central Room (Back)")) end, -- LunacidRegion.mausoleum
    ["HAUNT|MainHaunt|46"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Mausoleum Central Room (Back)")) end, -- LunacidRegion.mausoleum
    ["HAUNT|MainHaunt|47"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Mausoleum Central Room (Back)")) end, -- LunacidRegion.mausoleum
    ["HAUNT|MainHaunt|48"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Mausoleum Central Room (Back)")) end, -- LunacidRegion.mausoleum
    ["HAUNT|MainHaunt|49"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Mausoleum Central Room (Back)")) end, -- LunacidRegion.mausoleum
    ["HAUNT|MainHaunt|50"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Mausoleum Central Room (Back)")) end, -- LunacidRegion.mausoleum
    ["HAUNT|MainHaunt|51"] = function() return And(CanEnter("Accursed Tomb"), CanReach("Mausoleum Central Room (Back)")) end, -- LunacidRegion.mausoleum

    -- Castle Le Fanu
    ["CAS_1|RedAreaCas1|0"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Cattle Cell (South)")) end, -- LunacidRegion.castle_le_fanu_cattle_prison
    ["CAS_1|RedAreaCas1|1"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Cattle Cell (South)")) end, -- LunacidRegion.castle_le_fanu_cattle_prison
    ["CAS_1|RedAreaCas1|2"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Cattle Cell (South)")) end, -- LunacidRegion.castle_le_fanu_cattle_prison
    ["CAS_1|RedAreaCas1|3"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Cattle Cell (South)")) end, -- LunacidRegion.castle_le_fanu_cattle_prison
    ["CAS_1|RedAreaCas1|4"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Cattle Cell (South)")) end, -- LunacidRegion.castle_le_fanu_cattle_prison
    ["CAS_1|RedAreaCas1|5"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Cattle Cell (South)")) end, -- LunacidRegion.castle_le_fanu_cattle_prison
    ["CAS_1|RedAreaCas1|6"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Cattle Cell (North)")) end, -- LunacidRegion.castle_le_fanu_cattle_prison_deep
    ["CAS_1|RedAreaCas1|8"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Cattle Cell (North)")) end, -- LunacidRegion.castle_le_fanu_cattle_prison_deep
    ["CAS_1|RedAreaCas1|9"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Cattle Cell (North)")) end, -- LunacidRegion.castle_le_fanu_cattle_prison_deep
    ["CAS_1|RedAreaCas1|10"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Cattle Cell (North)")) end, -- LunacidRegion.castle_le_fanu_cattle_prison_deep
    ["CAS_1|RedAreaCas1|11"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Cattle Cell (North)")) end, -- LunacidRegion.castle_le_fanu_cattle_prison_deep
    ["CAS_1|RedAreaCas1|12"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Hidden Cattle Cell")) end, -- LunacidRegion.castle_le_fanu_cattle_prison_secret
    ["CAS_1|RedAreaCas1|13"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Hidden Cattle Cell")) end, -- LunacidRegion.castle_le_fanu_cattle_prison_secret
    ["CAS_1|RedAreaCas1|14"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Hidden Cattle Cell")) end, -- LunacidRegion.castle_le_fanu_cattle_prison_secret
    ["CAS_1|RedAreaCas1|15"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Hidden Cattle Cell")) end, -- LunacidRegion.castle_le_fanu_cattle_prison_secret
    ["CAS_1|RedAreaCas1|16"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Hidden Cattle Cell")) end, -- LunacidRegion.castle_le_fanu_cattle_prison_secret

    ["CAS_1|RedAreaNestCas1|0"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Upper Floor Coffin Room (Hallway)")) end, -- LunacidRegion.castle_le_fanu_cattle_prison_back
    ["CAS_1|RedAreaNestCas1|1"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Upper Floor Coffin Room (Hallway)")) end, -- LunacidRegion.castle_le_fanu_cattle_prison_back

    ["CAS_1|EntryCas1|0"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Outside Corner")) end, -- LunacidRegion.castle_le_fanu_entrance
    ["CAS_1|EntryCas1|1"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Outside Corner")) end, -- LunacidRegion.castle_le_fanu_entrance
    ["CAS_1|EntryCas1|2"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Outside Corner")) end, -- LunacidRegion.castle_le_fanu_entrance
    ["CAS_1|EntryCas1|3"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Outside Corner")) end, -- LunacidRegion.castle_le_fanu_entrance

    ["CAS_1|InteriorPhantomCas1|0"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Hallway Rubble Room")) end, -- LunacidRegion.castle_le_fanu_main_halls
    ["CAS_1|InteriorPhantomCas1|1"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Hallway Rubble Room")) end, -- LunacidRegion.castle_le_fanu_main_halls
    ["CAS_1|InteriorPhantomCas1|2"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Hallway Rubble Room")) end, -- LunacidRegion.castle_le_fanu_main_halls
    ["CAS_1|InteriorPhantomCas1|3"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Hallway Rubble Room")) end, -- LunacidRegion.castle_le_fanu_main_halls

    ["CAS_1|UndergroundNest1Cas1|0"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Upper Floor Coffin Room (Hallway)")) end, -- LunacidRegion.castle_le_fanu_cattle_prison_back
    ["CAS_1|UndergroundNest1Cas1|1"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Upper Floor Coffin Room (Hallway)")) end, -- LunacidRegion.castle_le_fanu_cattle_prison_back
    ["CAS_1|UndergroundNest1Cas1|2"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Upper Floor Coffin Room (Hallway)")) end, -- LunacidRegion.castle_le_fanu_cattle_prison_back

    ["CAS_1|UndergroundNest2Cas1|0"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Upper Floor Coffin Room (Hallway)")) end, -- LunacidRegion.castle_le_fanu_cattle_prison_back
    ["CAS_1|UndergroundNest2Cas1|1"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Upper Floor Coffin Room (Hallway)")) end, -- LunacidRegion.castle_le_fanu_cattle_prison_back

    ["CAS_1|InteriorOtherCas1|0"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Hallway Rubble Room")) end, -- LunacidRegion.castle_le_fanu_main_halls
    ["CAS_1|InteriorOtherCas1|1"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Hallway Rubble Room")) end, -- LunacidRegion.castle_le_fanu_main_halls
    ["CAS_1|InteriorOtherCas1|2"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Hallway Rubble Room")) end, -- LunacidRegion.castle_le_fanu_main_halls
    ["CAS_1|InteriorOtherCas1|3"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Hallway Rubble Room")) end, -- LunacidRegion.castle_le_fanu_main_halls
    ["CAS_1|InteriorOtherCas1|4"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Hallway Rubble Room")) end, -- LunacidRegion.castle_le_fanu_main_halls
    ["CAS_1|InteriorOtherCas1|5"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Hallway Rubble Room")) end, -- LunacidRegion.castle_le_fanu_main_halls

    ["CAS_1|UpstairsCas1|0"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Upper Floor Coffin Room (Hallway)")) end, -- LunacidRegion.castle_le_fanu_upstairs_area
    ["CAS_1|UpstairsCas1|1"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Upper Floor Coffin Room (Hallway)")) end, -- LunacidRegion.castle_le_fanu_upstairs_area
    ["CAS_1|UpstairsCas1|2"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Upper Floor Coffin Room (Hallway)")) end, -- LunacidRegion.castle_le_fanu_upstairs_area
    ["CAS_1|UpstairsCas1|3"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Upper Floor Coffin Room (Hallway)")) end, -- LunacidRegion.castle_le_fanu_upstairs_area
    ["CAS_1|UpstairsCas1|4"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Upper Floor Coffin Room (Hallway)")) end, -- LunacidRegion.castle_le_fanu_upstairs_area
    ["CAS_1|UpstairsCas1|6"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Upper Floor Coffin Room (Hallway)")) end, -- LunacidRegion.castle_le_fanu_upstairs_area
    ["CAS_1|UpstairsCas1|7"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Upper Floor Coffin Room (Hallway)")) end, -- LunacidRegion.castle_le_fanu_upstairs_area
    ["CAS_1|UpstairsCas1|8"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Upper Floor Coffin Room (Hallway)")) end, -- LunacidRegion.castle_le_fanu_upstairs_area

    ["CAS_1|UpstairsNestCas1|0"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Upper Floor Coffin Room (Hallway)")) end, -- LunacidRegion.castle_le_fanu_upstairs_area
    ["CAS_1|UpstairsNestCas1|1"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Upper Floor Coffin Room (Hallway)")) end, -- LunacidRegion.castle_le_fanu_upstairs_area
    ["CAS_1|UpstairsNestCas1|2"] = function() return And(CanEnter("Castle Le Fanu"), CanReach("Upper Floor Coffin Room (Hallway)")) end, -- LunacidRegion.castle_le_fanu_upstairs_area

    -- Boiling Grotto
    ["CAVE|SnakeDen1Cave|0"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.deep_snake_pit
    ["CAVE|SnakeDen1Cave|1"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.deep_snake_pit
    ["CAVE|SnakeDen1Cave|2"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.deep_snake_pit
    ["CAVE|SnakeDen1Cave|3"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.deep_snake_pit

    ["CAVE|SnakeDen2Cave|0"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.secret_snake_pit
    ["CAVE|SnakeDen2Cave|1"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.secret_snake_pit
    ["CAVE|SnakeDen2Cave|2"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.secret_snake_pit
    ["CAVE|SnakeDen2Cave|3"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.secret_snake_pit
    ["CAVE|SnakeDen2Cave|4"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.secret_snake_pit
    ["CAVE|SnakeDen2Cave|5"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.secret_snake_pit
    ["CAVE|SnakeDen2Cave|6"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.secret_snake_pit

    ["CAVE|AnpuSpawnCave|0"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.sand_temple
    ["CAVE|MimicSpawnCave|0"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Hidden Chest")) end, -- LunacidRegion.boiling_grotto_secret
    ["CAVE|MummyUpCave|1"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.sand_temple

    ["CAVE|MainCave|0"] = function() return CanEnter("Boiling Grotto") end, -- LunacidRegion.boiling_grotto
    ["CAVE|MainCave|1"] = function() return CanEnter("Boiling Grotto") end, -- LunacidRegion.boiling_grotto
    ["CAVE|MainCave|2"] = function() return CanEnter("Boiling Grotto") end, -- LunacidRegion.boiling_grotto
    ["CAVE|MainCave|3"] = function() return CanEnter("Boiling Grotto") end, -- LunacidRegion.boiling_grotto
    ["CAVE|MainCave|4"] = function() return CanEnter("Boiling Grotto") end, -- LunacidRegion.boiling_grotto
    ["CAVE|MainCave|5"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.sand_temple
    ["CAVE|MainCave|6"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.sand_temple
    ["CAVE|MainCave|7"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.sand_temple
    ["CAVE|MainCave|8"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.sand_temple
    ["CAVE|MainCave|9"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.sand_temple
    ["CAVE|MainCave|13"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.sand_temple
    ["CAVE|MainCave|14"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.sand_temple
    ["CAVE|MainCave|15"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.sand_temple
    ["CAVE|MainCave|16"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.sand_temple
    ["CAVE|MainCave|18"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus"), HasDustyOrb()) end, -- LunacidRegion.secret_snake_pit
    ["CAVE|MainCave|20"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Hidden Chest")) end, -- LunacidRegion.boiling_grotto_secret
    ["CAVE|MainCave|23"] = function() return CanEnter("Boiling Grotto") end, -- LunacidRegion.boiling_grotto
    ["CAVE|MainCave|24"] = function() return CanEnter("Boiling Grotto") end, -- LunacidRegion.boiling_grotto
    ["CAVE|MainCave|25"] = function() return CanEnter("Boiling Grotto") end, -- LunacidRegion.boiling_grotto
    ["CAVE|MainCave|26"] = function() return CanEnter("Boiling Grotto") end, -- LunacidRegion.boiling_grotto
    ["CAVE|MainCave|27"] = function() return CanEnter("Boiling Grotto") end, -- LunacidRegion.boiling_grotto
    ["CAVE|MainCave|28"] = function() return CanEnter("Boiling Grotto") end, -- LunacidRegion.boiling_grotto
    ["CAVE|MainCave|29"] = function() return CanEnter("Boiling Grotto") end, -- LunacidRegion.boiling_grotto
    ["CAVE|MainCave|33"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.sand_temple
    ["CAVE|MainCave|34"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.sand_temple
    ["CAVE|MainCave|35"] = function() return And(CanEnter("Boiling Grotto"), CanReach("Triple Sarcophagus")) end, -- LunacidRegion.sand_temple

    -- Sealed Ballroom
    ["CAS_3|HallowNest1Cas3|0"] = function() return CanEnter("Sealed Ballroom") end, -- LunacidRegion.sealed_ballroom
    ["CAS_3|HallowNest1Cas3|1"] = function() return CanEnter("Sealed Ballroom") end, -- LunacidRegion.sealed_ballroom
    ["CAS_3|HallowNest1Cas3|2"] = function() return CanEnter("Sealed Ballroom") end, -- LunacidRegion.sealed_ballroom
    ["CAS_3|HallowNest1Cas3|3"] = function() return CanEnter("Sealed Ballroom") end, -- LunacidRegion.sealed_ballroom

    ["CAS_3|HallowNest2Cas3|0"] = function() return And(CanEnter("Sealed Ballroom"), CanReach("Side Hidden Casket Room")) end, -- LunacidRegion.sealed_ballroom_secret_walls
    ["CAS_3|HallowNest2Cas3|1"] = function() return And(CanEnter("Sealed Ballroom"), CanReach("Side Hidden Casket Room")) end, -- LunacidRegion.sealed_ballroom_secret_walls

    ["CAS_3|HallowNest3Cas3|0"] = function() return And(CanEnter("Sealed Ballroom"), CanReach("Entry Small Room Lounge")) end, -- LunacidRegion.sealed_ballroom_rooms
    ["CAS_3|HallowNest3Cas3|1"] = function() return And(CanEnter("Sealed Ballroom"), CanReach("Entry Small Room Lounge")) end, -- LunacidRegion.sealed_ballroom_rooms
    ["CAS_3|HallowNest3Cas3|2"] = function() return And(CanEnter("Sealed Ballroom"), CanReach("Entry Small Room Lounge")) end, -- LunacidRegion.sealed_ballroom_rooms

    ["CAS_3|HorseJumpscareCas3|0"] = function() return And(CanEnter("Sealed Ballroom"), CanReach("Entry Small Room Lounge")) end, -- LunacidRegion.sealed_ballroom_rooms

    ["CAS_3|MainCas3|3"] = function() return CanEnter("Sealed Ballroom") end, -- LunacidRegion.sealed_ballroom
    ["CAS_3|MainCas3|4"] = function() return CanEnter("Sealed Ballroom") end, -- LunacidRegion.sealed_ballroom
    ["CAS_3|MainCas3|5"] = function() return CanEnter("Sealed Ballroom") end, -- LunacidRegion.sealed_ballroom
    ["CAS_3|MainCas3|6"] = function() return CanEnter("Sealed Ballroom") end, -- LunacidRegion.sealed_ballroom
    ["CAS_3|MainCas3|7"] = function() return CanEnter("Sealed Ballroom") end, -- LunacidRegion.sealed_ballroom
    ["CAS_3|MainCas3|8"] = function() return CanEnter("Sealed Ballroom") end, -- LunacidRegion.sealed_ballroom
    ["CAS_3|MainCas3|9"] = function() return CanEnter("Sealed Ballroom") end, -- LunacidRegion.sealed_ballroom
    ["CAS_3|MainCas3|10"] = function() return CanEnter("Sealed Ballroom") end, -- LunacidRegion.sealed_ballroom
    ["CAS_3|MainCas3|11"] = function() return CanEnter("Sealed Ballroom") end, -- LunacidRegion.sealed_ballroom
    ["CAS_3|MainCas3|12"] = function() return CanEnter("Sealed Ballroom") end, -- LunacidRegion.sealed_ballroom
    ["CAS_3|MainCas3|13"] = function() return CanEnter("Sealed Ballroom") end, -- LunacidRegion.sealed_ballroom

    -- Terminus Prison
    ["PRISON|MainPrison|5"] = function() return And(CanEnter("Terminus Prison"), CanReach("Fourth Floor Jailer Break Room")) end, -- LunacidRegion.terminus_prison_4f
    ["PRISON|MainPrison|8"] = function() return And(CanEnter("Terminus Prison"), CanReach("Fourth Floor Jailer Break Room")) end, -- LunacidRegion.terminus_prison_4f
    ["PRISON|MainPrison|9"] = function() return And(CanEnter("Terminus Prison"), CanReach("Fourth Floor Jailer Break Room")) end, -- LunacidRegion.terminus_prison_4f
    ["PRISON|MainPrison|11"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|MainPrison|12"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|MainPrison|13"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|MainPrison|15"] = function() return And(CanEnter("Terminus Prison"), CanReach("Fourth Floor Jailer Break Room")) end, -- LunacidRegion.terminus_prison_4f
    ["PRISON|MainPrison|16"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_3f
    ["PRISON|MainPrison|17"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_2f
    ["PRISON|MainPrison|18"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_2f
    ["PRISON|MainPrison|19"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_2f
    ["PRISON|MainPrison|20"] = function() return And(CanEnter("Terminus Prison"), CanReach("Fourth Floor Jailer Break Room")) end, -- LunacidRegion.terminus_prison_4f
    ["PRISON|MainPrison|21"] = function() return And(CanEnter("Terminus Prison"), CanReach("Fourth Floor Jailer Break Room")) end, -- LunacidRegion.terminus_prison_4f
    ["PRISON|MainPrison|22"] = function() return And(CanEnter("Terminus Prison"), CanReach("Fourth Floor Jailer Break Room")) end, -- LunacidRegion.terminus_prison_4f
    ["PRISON|MainPrison|23"] = function() return And(CanEnter("Terminus Prison"), CanReach("Fourth Floor Jailer Break Room")) end, -- LunacidRegion.terminus_prison_4f
    ["PRISON|MainPrison|24"] = function() return And(CanEnter("Terminus Prison"), CanReach("Fourth Floor Jailer Break Room")) end, -- LunacidRegion.terminus_prison_4f
    ["PRISON|MainPrison|27"] = function() return And(CanEnter("Terminus Prison"), CanReach("Third Floor Locked Cell Left")) end, -- LunacidRegion.terminus_prison_3f_rooms
    ["PRISON|MainPrison|29"] = function() return And(CanEnter("Terminus Prison"), CanReach("Fourth Floor Jailer Break Room")) end, -- LunacidRegion.terminus_prison_4f
    ["PRISON|MainPrison|30"] = function() return And(CanEnter("Terminus Prison"), CanReach("Fourth Floor Jailer Break Room")) end, -- LunacidRegion.terminus_prison_4f
    ["PRISON|MainPrison|31"] = function() return And(CanEnter("Terminus Prison"), CanReach("Fourth Floor Jailer Break Room")) end, -- LunacidRegion.terminus_prison_4f
    ["PRISON|MainPrison|32"] = function() return And(CanEnter("Terminus Prison"), CanReach("Fourth Floor Jailer Break Room")) end, -- LunacidRegion.terminus_prison_4f
    ["PRISON|MainPrison|33"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_basement
    ["PRISON|MainPrison|34"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_basement
    ["PRISON|MainPrison|35"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_basement
    ["PRISON|MainPrison|37"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|MainPrison|38"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|MainPrison|39"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|MainPrison|40"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|MainPrison|41"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|MainPrison|42"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|MainPrison|43"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|MainPrison|44"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|MainPrison|45"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|MainPrison|46"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|MainPrison|47"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|MainPrison|49"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_basement
    ["PRISON|MainPrison|50"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_basement
    ["PRISON|MainPrison|51"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_basement

    ["PRISON|CellPrison|0"] = function() return And(CanEnter("Terminus Prison"), CanReach("Third Floor Locked Cell Left")) end, -- LunacidRegion.terminus_prison_3f_rooms
    ["PRISON|CellPrison|1"] = function() return And(CanEnter("Terminus Prison"), CanReach("Third Floor Locked Cell Left")) end, -- LunacidRegion.terminus_prison_3f_rooms

    ["PRISON|AliveCorpsesPrison|0"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|AliveCorpsesPrison|1"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|AliveCorpsesPrison|2"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f

    ["PRISON|NoAggroCorpsesPrison|0"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|NoAggroCorpsesPrison|1"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|NoAggroCorpsesPrison|2"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|NoAggroCorpsesPrison|3"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|NoAggroCorpsesPrison|4"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|NoAggroCorpsesPrison|5"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|NoAggroCorpsesPrison|6"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|NoAggroCorpsesPrison|7"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|NoAggroCorpsesPrison|8"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|NoAggroCorpsesPrison|9"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|NoAggroCorpsesPrison|10"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|NoAggroCorpsesPrison|11"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|NoAggroCorpsesPrison|12"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|NoAggroCorpsesPrison|13"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|NoAggroCorpsesPrison|14"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|NoAggroCorpsesPrison|15"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|NoAggroCorpsesPrison|16"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|NoAggroCorpsesPrison|17"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|NoAggroCorpsesPrison|18"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|NoAggroCorpsesPrison|19"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f
    ["PRISON|NoAggroCorpsesPrison|20"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_1f


    ["PRISON|SkelNest1Prison|0"] = function() return And(CanEnter("Terminus Prison"), CanReach("Fourth Floor Jailer Break Room")) end, -- LunacidRegion.terminus_prison_4f
    ["PRISON|SkelNest1Prison|1"] = function() return And(CanEnter("Terminus Prison"), CanReach("Fourth Floor Jailer Break Room")) end, -- LunacidRegion.terminus_prison_4f

    ["PRISON|SkelNest2Prison|0"] = function() return And(CanEnter("Terminus Prison"), CanReach("Fourth Floor Jailer Break Room")) end, -- LunacidRegion.terminus_prison_4f
    ["PRISON|SkelNest2Prison|1"] = function() return And(CanEnter("Terminus Prison"), CanReach("Fourth Floor Jailer Break Room")) end, -- LunacidRegion.terminus_prison_4f

    ["PRISON|DogPackPrison|11"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_basement
    ["PRISON|DogPackPrison|12"] = function() return CanEnter("Terminus Prison") end, -- LunacidRegion.terminus_prison_basement

    ["PRISON|SkelSpawnPrison|0"] = function() return CanEnter("Terminus Prison")end, -- LunacidRegion.terminus_prison_1f

    ["PRISON|RatNestPrison|0"] = function() return And(CanEnter("Terminus Prison"), CanReach("Fourth Floor Jailer Break Room")) end, -- LunacidRegion.terminus_prison_4f
    ["PRISON|RatNestPrison|1"] = function() return And(CanEnter("Terminus Prison"), CanReach("Fourth Floor Jailer Break Room")) end, -- LunacidRegion.terminus_prison_4f
    ["PRISON|RatNestPrison|2"] = function() return And(CanEnter("Terminus Prison"), CanReach("Fourth Floor Jailer Break Room")) end, -- LunacidRegion.terminus_prison_4f
    ["PRISON|RatNestPrison|3"] = function() return And(CanEnter("Terminus Prison"), CanReach("Fourth Floor Jailer Break Room")) end, -- LunacidRegion.terminus_prison_4f

    -- Forlorn Arena
    ["ARENA|MainArena|0"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.forlorn_arena
    ["ARENA|MainArena|1"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.forlorn_arena
    ["ARENA|MainArena|2"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.forlorn_arena
    ["ARENA|MainArena|3"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.forlorn_arena
    ["ARENA|MainArena|4"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.forlorn_arena
    ["ARENA|MainArena|5"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.forlorn_arena
    ["ARENA|MainArena|6"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.forlorn_arena
    ["ARENA|MainArena|7"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.forlorn_arena
    ["ARENA|MainArena|8"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water
    ["ARENA|MainArena|9"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water
    ["ARENA|MainArena|10"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water
    ["ARENA|MainArena|11"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water_lower
    ["ARENA|MainArena|12"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water_lower
    ["ARENA|MainArena|13"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water_lower
    ["ARENA|MainArena|14"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water_lower
    ["ARENA|MainArena|15"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water_lower
    ["ARENA|MainArena|16"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water_lower
    ["ARENA|MainArena|17"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water_lower
    ["ARENA|MainArena|18"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water
    ["ARENA|MainArena|19"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water
    ["ARENA|MainArena|20"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water
    ["ARENA|MainArena|21"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water
    ["ARENA|MainArena|22"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water
    ["ARENA|MainArena|23"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water_lower
    ["ARENA|MainArena|24"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water_lower
    ["ARENA|MainArena|25"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water_lower
    ["ARENA|MainArena|26"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water_lower
    ["ARENA|MainArena|27"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water_lower
    ["ARENA|MainArena|28"] = function() return And(CanEnter("Forlorn Arena"), CanReach("Temple of Water Hidden Laser Room")) end, -- LunacidRegion.temple_of_water_lower_secrets
    ["ARENA|MainArena|29"] = function() return And(CanEnter("Forlorn Arena"), CanReach("Temple of Water Hidden Laser Room")) end, -- LunacidRegion.temple_of_water_lower_secrets
    ["ARENA|MainArena|30"] = function() return And(CanEnter("Forlorn Arena"), CanReach("Temple of Water Hidden Laser Room")) end, -- LunacidRegion.temple_of_water_lower_secrets
    ["ARENA|MainArena|31"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water_lower
    ["ARENA|MainArena|32"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water_lower
    ["ARENA|MainArena|33"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water_lower
    ["ARENA|MainArena|34"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water
    ["ARENA|MainArena|35"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water
    ["ARENA|MainArena|36"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water
    ["ARENA|MainArena|37"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water_lower
    ["ARENA|MainArena|38"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water_lower
    ["ARENA|MainArena|39"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water_lower
    ["ARENA|MainArena|40"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_water_lower
    ["ARENA|MainArena|41"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_earth
    ["ARENA|MainArena|42"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_earth
    ["ARENA|MainArena|43"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_earth
    ["ARENA|MainArena|44"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_earth
    ["ARENA|MainArena|45"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_earth
    ["ARENA|MainArena|46"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_earth
    ["ARENA|MainArena|47"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_earth
    ["ARENA|MainArena|48"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_earth
    ["ARENA|MainArena|49"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_earth
    ["ARENA|MainArena|50"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_earth
    ["ARENA|MainArena|51"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_earth
    ["ARENA|MainArena|52"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_earth
    ["ARENA|MainArena|53"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_earth
    ["ARENA|MainArena|54"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_earth
    ["ARENA|MainArena|55"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_earth
    ["ARENA|MainArena|56"] = function() return CanEnter("Forlorn Arena") end, -- LunacidRegion.temple_of_earth
    ["ARENA|MainArena|57"] = function() return And(CanEnter("Forlorn Arena"), CanReach("Temple of Earth Hidden Plant Haven")) end, -- LunacidRegion.temple_of_earth_secret
    ["ARENA|MainArena|58"] = function() return And(CanEnter("Forlorn Arena"), CanReach("Temple of Earth Hidden Plant Haven")) end, -- LunacidRegion.temple_of_earth_secret
    ["ARENA|MainArena|59"] = function() return And(CanEnter("Forlorn Arena"), CanReach("Temple of Earth Hidden Plant Haven")) end, -- LunacidRegion.temple_of_earth_secret
    ["ARENA|MainArena|60"] = function() return And(CanEnter("Forlorn Arena"), CanReach("Temple of Earth Hidden Plant Haven")) end, -- LunacidRegion.temple_of_earth_secret
    ["ARENA|MainArena|61"] = function() return And(CanEnter("Forlorn Arena"), CanReach("Temple of Earth Hidden Plant Haven")) end, -- LunacidRegion.temple_of_earth_secret
    ["ARENA|MainArena|62"] = function() return And(CanEnter("Forlorn Arena"), CanReach("Temple of Earth Hidden Plant Haven")) end, -- LunacidRegion.temple_of_earth_secret
    ["ARENA|MainArena|63"] = function() return And(CanEnter("Forlorn Arena"), CanReach("Temple of Earth Hidden Plant Haven")) end, -- LunacidRegion.temple_of_earth_secret

    -- Labyrinth of Ash
    ["VOID|RayNestVoid|0"] = function() return And(CanEnter("Labyrinth of Ash"), CanReach("Behind Statue")) end, -- LunacidRegion.labyrinth_of_ash
    ["VOID|RayNestVoid|1"] = function() return And(CanEnter("Labyrinth of Ash"), CanReach("Behind Statue")) end, -- LunacidRegion.labyrinth_of_ash

    ["VOID|MainVoid|0"] = function() return CanEnter("Labyrinth of Ash") end, -- LunacidRegion.labyrinth_of_ash
    ["VOID|MainVoid|1"] = function() return CanEnter("Labyrinth of Ash") end, -- LunacidRegion.labyrinth_of_ash
    ["VOID|MainVoid|2"] = function() return And(CanEnter("Labyrinth of Ash"), HasDoorKey("ashendoorskeyring")) end, -- LunacidRegion.labyrinth_of_ash
    ["VOID|MainVoid|3"] = function() return And(CanEnter("Labyrinth of Ash"), HasDoorKey("ashendoorskeyring")) end, -- LunacidRegion.labyrinth_interior
    ["VOID|MainVoid|4"] = function() return CanEnter("Labyrinth of Ash") end, -- LunacidRegion.labyrinth_of_ash
    ["VOID|MainVoid|6"] = function() return And(CanEnter("Labyrinth of Ash"), HasDoorKey("ashendoorskeyring")) end, -- LunacidRegion.labyrinth_interior
    ["VOID|MainVoid|7"] = function() return And(CanEnter("Labyrinth of Ash"), HasDoorKey("ashendoorskeyring")) end, -- LunacidRegion.labyrinth_interior
    ["VOID|MainVoid|8"] = function() return And(CanEnter("Labyrinth of Ash"), HasDoorKey("ashendoorskeyring")) end, -- LunacidRegion.labyrinth_interior
    ["VOID|MainVoid|10"] = function() return And(CanEnter("Labyrinth of Ash"), HasDoorKey("ashendoorskeyring")) end, -- LunacidRegion.labyrinth_interior
    ["VOID|MainVoid|11"] = function() return And(CanEnter("Labyrinth of Ash"), HasDoorKey("ashendoorskeyring")) end, -- LunacidRegion.labyrinth_interior
    ["VOID|MainVoid|12"] = function() return And(CanEnter("Labyrinth of Ash"), HasDoorKey("ashendoorskeyring")) end, -- LunacidRegion.labyrinth_interior
    ["VOID|MainVoid|13"] = function() return CanEnter("Labyrinth of Ash") end, -- LunacidRegion.labyrinth_of_ash
    ["VOID|MainVoid|14"] = function() return And(CanEnter("Labyrinth of Ash"), HasDoorKey("ashendoorskeyring")) end, -- LunacidRegion.holy_seat_of_gold
    ["VOID|MainVoid|15"] = function() return And(CanEnter("Labyrinth of Ash"), HasDoorKey("ashendoorskeyring")) end, -- LunacidRegion.holy_seat_of_gold
    ["VOID|MainVoid|16"] = function() return And(CanEnter("Labyrinth of Ash"), HasDoorKey("ashendoorskeyring")) end, -- LunacidRegion.holy_seat_of_gold
    ["VOID|MainVoid|17"] = function() return And(CanEnter("Labyrinth of Ash"), HasDoorKey("ashendoorskeyring")) end, -- LunacidRegion.holy_seat_of_gold
    ["VOID|MainVoid|18"] = function() return And(CanEnter("Labyrinth of Ash"), HasDoorKey("ashendoorskeyring")) end, -- LunacidRegion.holy_seat_of_gold
    ["VOID|MainVoid|19"] = function() return And(CanEnter("Labyrinth of Ash"), HasDoorKey("ashendoorskeyring")) end, -- LunacidRegion.holy_seat_of_gold
    ["VOID|MainVoid|20"] = function() return And(CanEnter("Labyrinth of Ash"), HasDoorKey("ashendoorskeyring")) end, -- LunacidRegion.holy_seat_of_gold
    ["VOID|MainVoid|21"] = function() return And(CanEnter("Labyrinth of Ash"), HasDoorKey("ashendoorskeyring")) end, -- LunacidRegion.holy_seat_of_gold
    ["VOID|MainVoid|22"] = function() return And(CanEnter("Labyrinth of Ash"), HasDoorKey("ashendoorskeyring")) end, -- LunacidRegion.holy_seat_of_gold
    ["VOID|MainVoid|23"] = function() return And(CanEnter("Labyrinth of Ash"), HasDoorKey("ashendoorskeyring")) end, -- LunacidRegion.holy_seat_of_gold
    ["VOID|MainVoid|24"] = function() return And(CanEnter("Labyrinth of Ash"), HasDoorKey("ashendoorskeyring")) end, -- LunacidRegion.holy_seat_of_gold
    ["VOID|MainVoid|25"] = function() return And(CanEnter("Labyrinth of Ash"), HasDoorKey("ashendoorskeyring")) end, -- LunacidRegion.holy_seat_of_gold
}

function CanReachAndKill(enemy)
    local highestLevel = AccessibilityLevel.None
    if ENEMY_LOCATIONS and ENEMY_LOCATIONS[enemy] and CanKillEnemy(enemy) == AccessibilityLevel.Normal then
        
        for _, loc in ipairs(ENEMY_LOCATIONS[enemy]) do
            if type(ENEMY_POSITIONS[loc]) == "function" then
                local level = ENEMY_POSITIONS[loc]()
                if level > highestLevel then
                    highestLevel = level
                end
            end
        end
    end
    return highestLevel
end

function CanKillEnemy(enemy)
    if type(ENEMY_LOGIC[enemy]) == "function" then
        return ENEMY_LOGIC[enemy]()
    end
    return AccessibilityLevel.None
end