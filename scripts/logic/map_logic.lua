VANILLA_MAP_LOGIC = {
    ["Hollow Basin"] = function() return AccessibilityLevel.Normal end,

    ["Wing's Rest"] = function() return AccessibilityLevel.Normal end,

    ["Forbidden Archives"] = function() return AccessibilityLevel.Normal end,

    ["The Fetid Mire"] = function() return And(CanEnterTemple(), HasSwitch("templeofsilenceswitchkey")) end,

    ["Yosei Forest"] = function() return And(CanEnterTemple(), HasSwitch("templeofsilenceswitchkey")) end,

    ["Forest Canopy"] = function() return And(CanEnter("Yosei Forest"), HandleGate('forest')) end,

    ["The Sanguine Sea"] = function() return CanEnter("The Fetid Mire") end,

    ["Castle Le Fanu"] = function() return CanEnter("The Fetid Mire") end,

    ["A Holy Battlefield"] = function() return CanEnter("Castle Le Fanu") end,

    ["Accursed Tomb"] = function() return CanEnter("The Fetid Mire") end,

    ["Laetus Chasm"] = function() return Or(And(IsItemStageAtLeastN("progressivevampiricsymbol", 2), HasSwitch("forbiddenarchiveselevatorswitchkeyring")), -- via Library
                                                CanJumpHeight("High")) end, -- via GWS

    ["Great Well Surface"] = function() return Or(CanReach("Laetus Chasm"), CanJumpHeight("High")) end,

    ["Boiling Grotto"] = function() return And(CanReach("Castle Le Fanu"), IsItemStageAtLeastN("progressivevampiricsymbol", 2)) end,

    ["Tower of Abyss"] = function() return CanEnter("Boiling Grotto") end,

    ["Throne Chamber"] = function() return And(CanReach("Castle Le Fanu"), IsItemStageAtLeastN("progressivevampiricsymbol", 3)) end,

    ["Sealed Ballroom"] = function() return And(CanReach("Castle Le Fanu"), IsItemStageAtLeastN("progressivevampiricsymbol", 2),
                                                And(HasElement("ele_dark"), Or(CanJumpHeight("High"), WasItemReceived("ranged_attacks")))) end, -- can activate switch

    ["Terminus Prison"] = function() return CanEnter("Throne Chamber") end,

    ["Labyrinth of Ash"] = function() return CanEnter("Terminus Prison") end,

    ["Forlorn Arena"] = function() return And(CanEnter("Terminus Prison"), WasItemReceived("terminusprisonkey")) end,

    ["Chamber of Fate"] = function() return And(CanEnter("Forlorn Arena"), WereAllItemsReceived({"watertalisman", "earthtalisman"})) end,
}

ER_MAP_LOGIC = {
    ["Hollow Basin"] = function() return Or(HasConnection("Broken Steps Door (Hollow Basin Side)"),
                                            HasConnection("Sewers Door (Hollow Basin Side)"),
                                            HasConnection("Rickety Bridge Door (Hollow Basin Side)")) end,

    ["Forbidden Archives"] = function() return Or(HasConnection("Broken Steps Door (Forbidden Archives Side)"),
                                            And(HasConnection('Library Exit Door (Forbidden Archives Side)'), IsItemStageAtLeastN("progressivevampiricsymbol", 2))) end,

    ["The Fetid Mire"] = function() return Or(HasConnection('Sewers Door (The Fetid Mire Side)'),
                                        HasConnection('Sewers Sea Door (The Fetid Mire Side)')) end,

    ["Yosei Forest"] = function() return Or(HasConnection('Rickety Bridge Door (Yosei Forest Side)'),
                                            And(HasConnection('Tomb Secret Door (Yosei Forest Side)'), CanJumpHeight('High')),
                                            And(HasConnection('Treetop Door (Yosei Forest Side)'), HandleGate('forest'))) end,

    ["Forest Canopy"] = function() return HasConnection('Treetop Door (Forest Canopy Path)') end,

    ["The Sanguine Sea"] = function() return Or(HasConnection('Sewers Sea Door (Sanguine Sea Side)'),
                                                HasConnection('Castle Doors (Sanguine Sea Side)'),
                                                HasConnection('Accursed Door (Sanguine Sea Side)')) end,

    ["Castle Le Fanu"] = function() return Or(HasConnection('Castle Doors (Castle Le Fanu Side)'),
                                              HasConnection("Burning Hot Door (Castle Le Fanu Side)"),
                                              HasConnection("Jump from Castle Le Fanu Walls"),
                                              And(HasConnection("Queen's Throne Door (Castle Le Fanu Side)"), IsItemStageAtLeastN("progressivevampiricsymbol", 3))) end,

    ["A Holy Battlefield"] = function() return HasConnection('Climb Rope Out Of Battlefield') end,

    ["Accursed Tomb"] = function() return Or(HasConnection('Accursed Door (Accursed Tomb Side)'),
                                             HasConnection('Tomb Secret Door (Accursed Tomb Side)')) end,

    ["Laetus Chasm"] = function() return Or(HasConnection('Library Exit Door (Laetus Chasm Side)'),
                                            HasConnection('Surface Door (Laetus Chasm Side)')) end,

    ["Great Well Surface"] = function() return CanJumpHeight("High") end,

    ["Boiling Grotto"] = function() return HasConnection('Burning Hot Door (Boiling Grotto Side)') end,

    ["Tower of Abyss"] = function() return And(HasConnection('Burning Hot Door (Boiling Grotto Side)'), HasDustyOrb()) end,

    ["Throne Chamber"] = function() return Or(HasConnection('Prison Main Door (Throne Chamber Side)'),
                                           HasConnection("Queen's Throne Door (Throne Chamber Side)")) end,

    ["Sealed Ballroom"] = function() return Or(HasConnection('Light Accursed Door (Sealed Ballroom Side)')) end,

    ["Terminus Prison"] = function() return Or(HasConnection('Prison Main Door (Terminus Prison Side)'),
                                               HasConnection('Secondary Door (Terminus Prison Side)'),
                                               HasConnection('Forbidden Door (Terminus Prison Side)')) end,

    ["Labyrinth of Ash"] = function() return HasConnection("Forbidden Door (Labyrinth of Ash Side)") end,

    ["Forlorn Arena"] = function() return HasConnection("Secondary Door (Forlorn Arena Side)") end,

    ["Chamber of Fate"] = function() return And(HasConnection("Secondary Door (Forlorn Arena Side)"), WereAllItemsReceived({"watertalisman", "earthtalisman"})) end,
}

STARTING_AREA = {
    "Hollow Basin",
    "The Fetid Mire",
    "Yosei Forest",
    "Forbidden Archives",
    "Accursed Tomb",
    "Castle Le Fanu",
    "Boiling Grotto",
    "Terminus Prison",
    "Forlorn Arena",
    "Labyrinth of Ash"
}

function CanEnter(map)
    if StartingIn(map) == AccessibilityLevel.Normal then
        return AccessibilityLevel.Normal
    end
    if Tracker:FindObjectForCode('entrance_toggle').Active or Tracker:FindObjectForCode("starting_area").AcquiredCount > 0 then
        if type(ER_MAP_LOGIC[map]) == "function" then
            return ER_MAP_LOGIC[map]()
        end
    end
    if type(VANILLA_MAP_LOGIC[map]) == "function" then
        return VANILLA_MAP_LOGIC[map]()
    end
    return AccessibilityLevel.None
end