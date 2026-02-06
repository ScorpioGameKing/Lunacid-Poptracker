VANILLA_MAP_LOGIC = {
    ["Hollow Basin"] = function() return AccessibilityLevel.Normal end,

    ["Wing's Rest"] = function() return AccessibilityLevel.Normal end,

    ["Forbidden Archives"] = function() return Or(HasDoorKey("brokenstepsdoorkey"), And(CanEnter("Laetus Chasm"), HasDoorKey("brokenstepsdoorkey"))) end,

    ["The Fetid Mire"] = function() return Or(And(CanEnterTemple(), HasSwitch("templeofsilenceswitchkey"), HasDoorKey("sewersdoorkey")),
                                            And(CanEnter("The Sanguine Sea"), HasDoorKey("sewersseadoorkey"))) end,

    ["Yosei Forest"] = function() return Or(And(CanEnterTemple(), HasSwitch("templeofsilenceswitchkey"), HasDoorKey("lowerricketybridgedoorkey")),
                                            And(CanEnter("Accursed Tomb"), CanJumpHeight("High"), HasDoorKey("tombsecretdoorkey"), HasLightSource())) end,

    ["Forest Canopy"] = function() return And(CanEnter("Yosei Forest"), HandleGate('forest'), HasDoorKey("treetopdoorkey")) end,

    ["The Sanguine Sea"] = function() return Or(And(CanEnter("The Fetid Mire"), HasDoorKey("sewersseadoorkey")),
                                                And(CanEnter("Accursed Tomb"), HasDoorKey("accurseddoorkey"), HasLightSource())) end,

    ["Castle Le Fanu"] = function() return And(CanEnter("The Sanguine Sea"), HasDoorKey("castledoorskey")) end,

    ["A Holy Battlefield"] = function() return CanEnter("Castle Le Fanu") end,

    ["Accursed Tomb"] = function() return Or(And(CanEnter("The Sanguine Sea"), HasDoorKey("accurseddoorkey")),
                                             And(CanEnter("Yosei Forest"), HasDoorKey("tombsecretdoorkey"))) end,

    ["Laetus Chasm"] = function() return Or(And(IsItemStageAtLeastN("progressivevampiricsymbol", 2), Or(HasSwitch("forbiddenarchiveselevatorswitchkeyring"), CanJumpHeight("High"))), -- via Library
                                                CanEnter("Great Well Surface"), HasDoorKey("surfacedoorkey")) end, -- via GWS

    ["Great Well Surface"] = function() return Or(And(CanEnter("Laetus Chasm"), HasDoorKey("surfacedoorkey")), CanJumpHeight("High")) end,

    ["Boiling Grotto"] = function() return And(CanEnter("Castle Le Fanu"), IsItemStageAtLeastN("progressivevampiricsymbol", 2), HasDoorKey("burninghotkey")) end,

    ["Tower of Abyss"] = function() return And(CanEnter("Boiling Grotto"), HasDustyOrb()) end,

    ["Throne Chamber"] = function() return And(CanEnter("Castle Le Fanu"), IsItemStageAtLeastN("progressivevampiricsymbol", 3), HasDoorKey("queen'sthronedoorkey")) end,

    ["Sealed Ballroom"] = function() return And(CanEnter("Castle Le Fanu"), IsItemStageAtLeastN("progressivevampiricsymbol", 2), HasDoorKey("lightaccurseddoorkey"),
                                                And(Or(HasElement("ele_dark"), HasElement("ele_poison")), Or(CanJumpHeight("High"), WasItemReceived("ranged_attacks")))) end, -- can activate switch

    ["Terminus Prison"] = function() return And(CanEnter("Throne Chamber"), HasDoorKey("prisonmaindoorkey")) end,

    ["Labyrinth of Ash"] = function() return And(CanEnter("Terminus Prison"), HasDoorKey("forbiddendoorkey")) end,

    ["Forlorn Arena"] = function() return And(CanEnter("Terminus Prison"), WasItemReceived("terminusprisonkey"), HasDoorKey("secondarylockkey"), HasSwitch("forlornarenagateswitchkey")) end,

    ["Chamber of Fate"] = function() return And(CanEnter("Forlorn Arena"), WereAllItemsReceived({"watertalisman", "earthtalisman"}), HasDoorKey("sucsariankey")) end,
}

ER_MAP_LOGIC = {
    ["Hollow Basin"] = function() return HasAnyConnection({
        "Hollow Basin Ceiling",
        "Broken Steps Door (Hollow Basin Side)",
        "Sewers Door (Hollow Basin Side)",
        "Rickety Bridge Door (Hollow Basin Side)"
    }) end,

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

    ["Great Well Surface"] = function() return Or(HasConnection("Surface Door (Great Well Surface Side)"), CanJumpHeight("High")) end,

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

local visiting = {}

function CanEnter(map)
    if visiting[map] then
        return AccessibilityLevel.None
    end

    visiting[map] = true

    local result

    if StartingIn(map) == AccessibilityLevel.Normal then
        result = AccessibilityLevel.Normal

    elseif Tracker:FindObjectForCode('entrance_toggle').Active or Tracker:FindObjectForCode("starting_area").AcquiredCount > 0 then
        if type(ER_MAP_LOGIC[map]) == "function" then
            result = ER_MAP_LOGIC[map]()
        end
    end

    if not result and type(VANILLA_MAP_LOGIC[map]) == "function" then
        result = VANILLA_MAP_LOGIC[map]()
    end

    visiting[map] = nil

    return result or AccessibilityLevel.None
end
