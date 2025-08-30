-- Dropsanity & Enemizer
VANILLA_ENEMY_LOGIC = {
    ["Snail"] = function() return And(CanEnter("Hollow Basin"), AccessibilityLevel.Normal) end,

    ["Milk Snail"] = function() return Or(CanEnter("Hollow Basin"),
        And(CanEnter("Forbidden Archives"), Or(CanJumpHeight("High"), HasSwitch("forbiddenarchiveselevatorswitchkeyring"))))
    end,

    -- ["Mummy"] = function() return And(CanEnter("Hollow Basin"), CanEnterTemple(), HasSwitch("templeofsilenceswitchkey")) end,

    ["Mummy Knight"] = function() return And(CanEnterTemple(), HasSwitch("templeofsilenceswitchkey")) end,

    -- ["Shulker"] = function() return AccessibilityLevel.Normal end,

    -- ["Necronomicon"] = function() return AccessibilityLevel.Normal end,

    -- ["Chimera"] = function() return Or(CanJumpHeight("High"), HasSwitch("forbiddenarchiveselevatorswitchkeyring")) end,

    -- ["Enlightened One"] = function() return Or(CanJumpHeight("High"), HasSwitch("forbiddenarchiveselevatorswitchkeyring")) end,

    -- ["Slime Skeleton"] = function() return AccessibilityLevel.Normal end,

    ["Skeleton"] = function() return Or(
        And(CanEnter("Accursed Tomb"), And(Or(CanJumpHeight("Medium"), HasElement("ele_light")), HasLightSource())),
        CanEnter("Terminus Prison"),
        CanEnter("The Sanguine Sea"),
        CanEnter("The Fetid Mire"),
        CanEnter("Boiling Grotto")
    )

    end,

    -- ["Rat King"] = function() return AccessibilityLevel.Normal end,

    -- ["Rat Queen"] = function() return AccessibilityLevel.Normal end,

    -- ["Rat"] = function() return AccessibilityLevel.Normal end,

    ["Kodama"] = function() return CanEnter("Yosei Forest") end,

    -- ["Yakul"] = function() return AccessibilityLevel.Normal end,

    -- ["Venus"] = function() And(CanEnter("Forlorn Arena"), HasDustyOrb()) end,

    -- ["Neptune"] = function()
    --    if sceneName == "FOREST_B1" then
    --        return AccessibilityLevel.Normal
    --   end
    --    return Or(CanJumpHeight("Medium"), WasItemReceived("ele_blood"))
    --end,

    -- ["Unilateralis"] = function() return AccessibilityLevel.Normal end,

    -- ["Mimic"] = function() return HasDustyOrb() end,

    -- ["Hemalith"] = function() return AccessibilityLevel.Normal end,

    -- ["Mare"] = function() return HasLightSource() end,

    -- ["Mi-Go"] = function() return HasLightSource() end,

    ["Phantom"] = function() Or(And(CanEnter("Accursed Tomb"), HasLightSource(), HasElement("ele_light")),
        CanEnter("Castle Le Fanu"))end,

    -- ["Cursed Painting"] = function(sceneName)
    --    if sceneName == "HAUNT" then
    --        return HasLightSource()
    --    end
    --    return IsItemStageAtLeastN("progressivevampiricsymbol", 2)
    -- end,

    -- ["Malformed"] = function() return Or(And(WasItemReceived("ele_blood"), HasDustyOrb()),
    --                   IsItemStageAtLeastN("progressivevampiricsymbol", 2)) end,

    -- ["Poltergeist"] = function() return IsItemStageAtLeastN("progressivevampiricsymbol", 2) end,

    -- ["Great Bat"] = function() return Or(IsItemStageAtLeastN("progressivevampiricsymbol", 1)) end,

    -- ["Vampire"] = function() return Or(WasItemReceived("ele_blood")) end,

    ["Vampire Page"] = function() return And(CanEnter("Castle Le Fanu"),Or(WasItemReceived("ele_blood"),
                         IsItemStageAtLeastN("progressivevampiricsymbol", 1))) end,

    -- ["Malformed Horse"] = function() return AccessibilityLevel.Normal end,

    -- ["Hallowed Husk"] = function() return AccessibilityLevel.Normal end,

    -- ["Ikurr'Ilb"] = function() return AccessibilityLevel.Normal end,

    ["Obsidian Skeleton"] = function() return Or(CanEnter("Boiling Grotto"),
        And(CanEnter("Terminus Prison"), HasLightSource())) end,

    -- ["Serpent"] = function() return HasSwitch("grottofireswitchkeyring") end,

    ["Anpu"] = function() return And(CanEnter("Boiling Grotto"), HasSwitch("grottofireswitchkeyring")) end,

    -- ["Embalmed"] = function() return HasSwitch("grottofireswitchkeyring") end,

    -- ["Cerritulus Lunam"] = function() return HasLightSource() end,

    ["Jailor"] = function() return CanEnter("Terminus Prison") end,

    -- ["Giant Skeleton"] = function() return HasLightSource() end,

    ["Sucsarian"] = function() return CanEnter("Forlorn Arena") end,

    -- ["Ceres"] = function() return CanJumpHeight("High") end,

    -- ["Vesta"] = function() return CanJumpHeight("High") end,

    -- ["Gloom Wood"] = function() return AccessibilityLevel.Normal end,

    ["Cetea"] = function() return CanEnter("Labyrinth of Ash") end,

    ["Abyssal Demon"] = function() return Or(CanEnter("The Sanguine Sea"),
        And(CanEnter("Accursed Tomb"), HasLightSource(), HasElement("ele_light"))) end,

    ["Sanguine Umbra"] = function() return CanEnter("A Holy Battlefield") end,
}

ER_ENEMY_LOGIC = {
    ["Snail"] = function() return HasAccessToEnemy() end,

    ["Milk Snail"] = function() return Or(CanEnter("Hollow Basin"),
        And(CanEnter("Forbidden Archives"), Or(CanJumpHeight("High"), HasSwitch("forbiddenarchiveselevatorswitchkeyring"))))
    end,

    -- ["Mummy"] = function() return And(CanEnter("Hollow Basin"), CanEnterTemple(), HasSwitch("templeofsilenceswitchkey")) end,

    -- ["Mummy Knight"] = function() return And(CanEnterTemple(), HasSwitch("templeofsilenceswitchkey")) end,

    -- ["Shulker"] = function() return AccessibilityLevel.Normal end,

    -- ["Necronomicon"] = function() return AccessibilityLevel.Normal end,

    -- ["Chimera"] = function() return Or(CanJumpHeight("High"), HasSwitch("forbiddenarchiveselevatorswitchkeyring")) end,

    -- ["Enlightened One"] = function() return Or(CanJumpHeight("High"), HasSwitch("forbiddenarchiveselevatorswitchkeyring")) end,

    -- ["Slime Skeleton"] = function() return AccessibilityLevel.Normal end,

    ["Skeleton"] = function() return Or(
        And(CanEnter("Accursed Tomb"), And(Or(CanJumpHeight("Medium"), HasElement("ele_light")), HasLightSource())),
        CanEnter("Terminus Prison"),
        CanEnter("The Sanguine Sea"),
        CanEnter("The Fetid Mire"),
        CanEnter("Boiling Grotto")
    )

    end,

    -- ["Rat King"] = function() return AccessibilityLevel.Normal end,

    -- ["Rat Queen"] = function() return AccessibilityLevel.Normal end,

    -- ["Rat"] = function() return AccessibilityLevel.Normal end,

    ["Kodama"] = function() return CanEnter("Yosei Forest") end,

    -- ["Yakul"] = function() return AccessibilityLevel.Normal end,

    -- ["Venus"] = function() And(CanEnter("Forlorn Arena"), HasDustyOrb()) end,

    -- ["Neptune"] = function()
    --    if sceneName == "FOREST_B1" then
    --        return AccessibilityLevel.Normal
    --   end
    --    return Or(CanJumpHeight("Medium"), WasItemReceived("ele_blood"))
    --end,

    -- ["Unilateralis"] = function() return AccessibilityLevel.Normal end,

    -- ["Mimic"] = function() return HasDustyOrb() end,

    -- ["Hemalith"] = function() return AccessibilityLevel.Normal end,

    -- ["Mare"] = function() return HasLightSource() end,

    -- ["Mi-Go"] = function() return HasLightSource() end,

    ["Phantom"] = function() Or(And(CanEnter("Accursed Tomb"), HasLightSource(), HasElement("ele_light")),
        CanEnter("Castle Le Fanu"))end,

    -- ["Cursed Painting"] = function(sceneName)
    --    if sceneName == "HAUNT" then
    --        return HasLightSource()
    --    end
    --    return IsItemStageAtLeastN("progressivevampiricsymbol", 2)
    -- end,

    -- ["Malformed"] = function() return Or(And(WasItemReceived("ele_blood"), HasDustyOrb()),
    --                   IsItemStageAtLeastN("progressivevampiricsymbol", 2)) end,

    -- ["Poltergeist"] = function() return IsItemStageAtLeastN("progressivevampiricsymbol", 2) end,

    -- ["Great Bat"] = function() return Or(IsItemStageAtLeastN("progressivevampiricsymbol", 1)) end,

    -- ["Vampire"] = function() return Or(WasItemReceived("ele_blood")) end,

    ["Vampire Page"] = function() return And(CanEnter("Castle Le Fanu"),Or(WasItemReceived("ele_blood"),
                         IsItemStageAtLeastN("progressivevampiricsymbol", 1))) end,

    -- ["Malformed Horse"] = function() return AccessibilityLevel.Normal end,

    -- ["Hallowed Husk"] = function() return AccessibilityLevel.Normal end,

    -- ["Ikurr'Ilb"] = function() return AccessibilityLevel.Normal end,

    ["Obsidian Skeleton"] = function() return Or(CanEnter("Boiling Grotto"),
        And(CanEnter("Terminus Prison"), HasLightSource())) end,

    -- ["Serpent"] = function() return HasSwitch("grottofireswitchkeyring") end,

    ["Anpu"] = function() return And(CanEnter("Boiling Grotto"), HasSwitch("grottofireswitchkeyring")) end,

    -- ["Embalmed"] = function() return HasSwitch("grottofireswitchkeyring") end,

    -- ["Cerritulus Lunam"] = function() return HasLightSource() end,

    ["Jailor"] = function() return CanEnter("Terminus Prison") end,

    -- ["Giant Skeleton"] = function() return HasLightSource() end,

    ["Sucsarian"] = function() return CanEnter("Forlorn Arena") end,

    -- ["Ceres"] = function() return CanJumpHeight("High") end,

    -- ["Vesta"] = function() return CanJumpHeight("High") end,

    -- ["Gloom Wood"] = function() return AccessibilityLevel.Normal end,

    ["Cetea"] = function() return CanEnter("Labyrinth of Ash") end,

    ["Abyssal Demon"] = function() return Or(CanEnter("The Sanguine Sea"),
        And(CanEnter("Accursed Tomb"), HasLightSource(), HasElement("ele_light"))) end,
        
    ["Sanguine Umbra"] = function() return CanEnter("A Holy Battlefield") end,
}

--ENEMY_POSITIONS = {
--    ["SmallGroupPittA1"]       = function() return Or(And(HasConnection("Broken Steps Door (Hollow Basin Side)"), CanEnterTemple()),
--                                                        HasConnection("Rickety Bridge Door (Hollow Basin Side)")) end,
--    ["StartSnailPittA1"]       = function() return Or(HasConnection("Broken Steps Door (Hollow Basin Side)"),
--                                                        HasConnection("Rickety Bridge Door (Hollow Basin Side)")) end,
--    ["MainPittA1"]             = function() return end,
--    ["HiddenPittA1"]           = function() return end,
--    ["CrawlingPittA1"]         = function() return end,
--    ["LowerFrontForestA1"]     = function() return end,
--    ["LowerBackYakulForestA1"] = function() return end,
--    ["LowerBackBunForestA1"]   = function() return end,
--    ["MainForestA1"]           = function() return end,
--    ["MainSewerA1"]            = function() return end,
--    ["NestForestB1"]           = function() return end,
--    ["MainForestB1"]           = function() return end,
--    ["DryLake"]                = function() return end,
--    ["DryNest1Lake"]           = function() return end,
--    ["DryNest2Lake"]           = function() return end,
--    ["MainLake"]               = function() return end,
--    ["MainArchives"]           = function() return end,
--    ["ChimeraTopArchives"]     = function() return end,
--    ["ChimeraLowerArchives"]   = function() return end,
--    ["SnailNest1Archives"]     = function() return end,
--    ["SnailNest2Archives"]     = function() return end,
--    ["SnailNest3Archives"]     = function() return end,
--    ["NerveNest1Archives"]     = function() return end,
--    ["NerveNest2Archives"]     = function() return end,
--    ["RandomNest1Archives"]    = function() return end,
--    ["NerveNest3Archives"]     = function() return end,
--    ["RandomNest2Archives"]    = function() return end,
--    ["JumpscareHaunt"]         = function() return end,
--    ["NestHaunt"]              = function() return end,
--    ["MainHaunt"]              = function() return end,
--    ["RedAreaCas1"]            = function() return end,
--    ["RedAreaNestCas1"]        = function() return end,
--    ["EntryCas1"]              = function() return end,
--    ["InteriorPhantomCas1"]    = function() return end,
--    ["UndergroundNest1Cas1"]   = function() return end,
--    ["UndergroundNest2Cas1"]   = function() return end,
--    ["InteriorOtherCas1"]      = function() return end,
--    ["UpstairsCas1"]           = function() return end,
--    ["UpstairsNestCas1"]       = function() return end,
--    ["SnakeDen1Cave"]          = function() return end,
--    ["SnakeDen2Cave"]          = function() return end,
--    ["AnpuSpawnCave"]          = function() return end,
--    ["MimicSpawnCave"]         = function() return end,
--    ["MummyUpCave"]            = function() return end,
--    ["MainCave"]               = function() return end,
--    ["HallowNest1Cas3"]        = function() return end,
--    ["HallowNest2Cas3"]        = function() return end,
--    ["HallowNest3Cas3"]        = function() return end,
--    ["HorseJumpscareCas3"]     = function() return end,
--    ["MainCas3"]               = function() return end,
--    ["MainPrison"]             = function() return end,
--    ["CellPrison"]             = function() return end,
--    ["AliveCorpsesPrison"]     = function() return end,
--    ["NoAggroCorpsesPrison"]   = function() return end,
--    ["SkelNest1Prison"]        = function() return end,
--    ["SkelNest2Prison"]        = function() return end,
--    ["DogPackPrison"]          = function() return end,
--    ["SkelSpawnPrison"]        = function() return end,
--    ["RatNestPrison"]          = function() return end,
--    ["MainArena"]              = function() return end,
--    ["RayNestVoid"]            = function() return end,
--    ["MainVoid"]               = function() return end
--}

function CanKill(enemy)
    if type(VANILLA_ENEMY_LOGIC[enemy]) == "function" then
        return VANILLA_ENEMY_LOGIC[enemy]()
    end
    return AccessibilityLevel.None
end