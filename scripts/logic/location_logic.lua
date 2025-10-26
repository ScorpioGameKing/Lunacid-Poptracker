-- This table reflects the logic requirement inside a map and gets called using CanReach in the location.json files
VANILLA_LOCATION_LOGIC = {
-- Wings Rest
    ["Starting Weapon Bench"]               = function() return AccessibilityLevel.Normal end,

    ["Rafters"]             = function() return AccessibilityLevel.Normal end,

    ["Clive's Gift"]        = function() return AccessibilityLevel.Normal end,

    ["Demi's Victory Gift"] = function() return CanEnterGrave() end,

    ["Demi's Class Based Gift"] = function() return AccessibilityLevel.Normal end,

    ["Demi's Spooky Treats"] = function() return AccessibilityLevel.Normal end,

    ["Demi's Reward for All Soul Candies"] = function() return HasMoreThenNConsumables("soulcandy", 34) end,

-- Etna's Pupil
    ["Alchemize Concentrated Lunacy"] = function() return And(CanGetMaterial("ashes"), CanGetMaterial("moonpetal"), CanGetMaterial("obsidian")) end,

    ["Alchemize Hostility Barrier"] = function() return And(CanGetMaterial("ectoplasm"), CanGetMaterial("ikurrilbroot"), CanGetMaterial("fireopal")) end,

    ["Alchemize Explosives"] = function() return And(CanGetMaterial("firecoral"), CanGetMaterial("ashes")) end,

    ["Alchemize Venomous Object"] = function() return And(CanGetMaterial("destroyingangelmushroom"), CanGetMaterial("oceanboneshard")) end,

    ["Alchemize Defense Construct"] = function() return And(CanGetMaterial("onyx"), CanGetMaterial("ikurrilbroot"), CanGetMaterial("bones")) end,

    ["Alchemize Concentrated Poison"] = function() return And(CanGetMaterial("destroyingangelmushroom"), CanGetMaterial("oceanboneshard"), CanGetMaterial("bloodweed")) end,

    ["Alchemize Nature"] = function() return And(CanGetMaterial("moonpetal"), CanGetMaterial("bloodweed"), CanGetMaterial("yellowmorel")) end,

    ["Alchemize Antivenom"] = function() return And(CanGetMaterial("destroyingangelmushroom"), CanGetMaterial("lotusseedpod")) end,

    ["Alchemize Cleromancy Tool"] = function() return And(CanGetMaterial("ashes"), CanGetMaterial("bones")) end,

    ["Alchemize Healing Remedy"] = function() return And(CanGetMaterial("opal"), CanGetMaterial("yellowmorel"), CanGetMaterial("lotusseedpod")) end,

    ["Alchemize Water of Life"] = function() return And(CanGetMaterial("moonpetal"), CanGetMaterial("opal")) end,

    ["Alchemize Sharp Object"] = function() return CanGetMaterial("oceanboneshard") end,

    ["Alchemize Mana Remedy"] = function() return And(CanGetMaterial("opal"), CanGetMaterial("onyx"), CanGetMaterial("lotusseedpod")) end,

    ["Alchemize Unstable Stone"] = function() return And(CanGetMaterial("snowflakeobsidian"), CanGetMaterial("onyx"), CanGetMaterial("obsidian")) end,

    ["Alchemize Simple Life"] = function() return And(CanGetMaterial("snowflakeobsidian"), CanGetMaterial("ectoplasm"), CanGetMaterial("moonpetal")) end,

    ["Alchemize Golden Sin of Abdul"] = function() return And(WereAllItemsReceived({"fractureddeath", "fracturedlife", "brokensword"})) end,

-- Hollow Basin
    ["Encouraging Statue"]                          = function() return AccessibilityLevel.Normal end,

    ["Rightmost Water Room (Right)"]                = function() return AccessibilityLevel.Normal end,

    ["Rightmost Water Room (Left)"]                 = function() return AccessibilityLevel.Normal end,

    ["Leftmost Water Room"]                         = function() return AccessibilityLevel.Normal end,

    ["Chest Near Demi"]                             = function() return AccessibilityLevel.Normal end,

    ["Near Enchanted Door"]                         = function() return AccessibilityLevel.Normal end,

    ["Dark Tunnel After Enchanted Door"]            = function() return CanEnterTemple() end,

    ["Temple Fountain"]                             = function() return CanEnterTemple() end,

    ["Temple Ritual Table"]                         = function() return CanEnterTemple() end,

    ["Temple Altar Chest"]                          = function() return CanEnterTemple() end,

    ["Temple Hidden Room Behind Pillar (Left)"]     = function() return And(CanEnterTemple(), HasSwitch("templeofsilenceswitchkey"), HasDustyOrb()) end,

    ["Temple Hidden Room Behind Pillar (Right)"]    = function() return And(CanEnterTemple(), HasSwitch("templeofsilenceswitchkey"), HasDustyOrb()) end,

    ["Temple Ritual Table After Bridge"]            = function() return And(CanEnterTemple(), HasSwitch("templeofsilenceswitchkey")) end,

    ["Temple Small Pillar Top"]                     = function() return And(CanEnterTemple(), HasSwitch("templeofsilenceswitchkey")) end,

    ["Temple Pillar Room Left"]                     = function() return And(CanEnterTemple(), HasSwitch("templeofsilenceswitchkey"), HasDustyOrb()) end,

    ["Temple Pillar Room Back Left"]                = function() return And(CanEnterTemple(), HasSwitch("templeofsilenceswitchkey"), HasDustyOrb()) end,

    ["Temple Pillar Room Back Right"]               = function() return And(CanEnterTemple(), HasSwitch("templeofsilenceswitchkey"), HasDustyOrb()) end,

    ["Temple Pillar Room Hidden Room"]              = function() return And(CanEnterTemple(), HasSwitch("templeofsilenceswitchkey"), HasDustyOrb()) end,

    ["Temple Hidden Room In Sewer"]                 = function() return And(CanEnterTemple(), HasSwitch("templeofsilenceswitchkey"), HasDustyOrb()) end,

    ["Temple Table in Sewer"]                       = function() return And(CanEnterTemple(), HasSwitch("templeofsilenceswitchkey")) end,

    ["Temple Sewer Puzzle"]                         = function() return And(CanEnterTemple(), HasSwitch("templeofsilenceswitchkey"), WasItemReceived("vhstape"),
                                                        HasElement("ele_light"), HasDustyOrb()) end,

    ["Temple Blood Altar"]                          = function() return And(CanEnterTemple(), HasElement("ele_blood")) end,

    ["Alcove on Path to Yosei Forest"]              = function() return And(CanEnterTemple(), HasSwitch("templeofsilenceswitchkey")) end,



-- The Fetide Mire
    ["Room Left of Foyer"]                  = function() return AccessibilityLevel.Normal end,

    ["Hidden Slimey Chest Near Entrance"]   = function() return HasDustyOrb() end,

    ["Hidden Upper Overlook (Left)"]        = function() return Or(HasDustyOrb(), WasItemReceived("icarianflight")) end,

    ["Hidden Upper Overlook (Right)"]       = function() return Or(HasDustyOrb(), WasItemReceived("icarianflight")) end,

    ["Bonenard's Trash"]                    = function() return AccessibilityLevel.Normal end,

    ["Rubble Near Overlook Bridge"]         = function() return AccessibilityLevel.Normal end,

    ["Slime Skeleton Chest"]                = function() return AccessibilityLevel.Normal end,

    ["Jellisha's Trash"]                    = function() return HasDustyOrb() end,

    ["Jellisha's Quest Reward"]             = function() return HasDustyOrb() end,

    ["Hidden Chest Near Underworks"]        = function() return HasDustyOrb() end,

    ["Rubble Near Illusory Wall"]           = function() return AccessibilityLevel.Normal end,

    ["Underwater Pipe"]                     = function() return AccessibilityLevel.Normal end,

    ["Underworks Waterfall"]                = function() return AccessibilityLevel.Normal end,

    ["Underworks Skeleton"]                 = function() return AccessibilityLevel.Normal end,

    ["Path to Sanguine Sea (Left)"]         = function() return AccessibilityLevel.Normal end,

    ["Path to Sanguine Sea (Right)"]        = function() return AccessibilityLevel.Normal end,

    ["Jellisha's Jelly Treats"]             = function() return HasDustyOrb() end,

    ["Headless Horseman"]                   = function() return HasElement(ELEMENT_CODE.fire) end,

-- Sanguine Sea
    ["Pillar In Front of Castle Le Fanu"]   = function() return CanJumpHeight("High") end,

    ["Underblood Near Castle Le Fanu"]      = function() return AccessibilityLevel.Normal end,

    ["Fairy Circle"]                        = function() return AccessibilityLevel.Normal end,

    ["Killing the Jotunn"]                  = function() return WasItemReceived("jotunnslayer") end,

-- Accursed Tomb
    ["Catacombs Coffins Near Stairs"]       = function() return HasLightSource() end,

    ["Catacombs Coffins With Blue Light"]   = function() return HasLightSource() end,

    ["Corrupted Room"]                      = function() return And(HasLightSource(), WasItemReceived("corruptkey")) end,

    ["Gated Tomb Near Corrupted Room"]      = function() return HasLightSource() end,

    ["Catacombs Hidden Room"]               = function() return And(HasLightSource(), HasDustyOrb(), HasElement("ele_light")) end,

    ["Deep Coffin Storage"]                 = function() return And(HasLightSource(), HasElement("ele_light")) end,

    ["Red Skeleton"]                        = function() return And(HasLightSource(), HasElement("ele_light"), WasItemReceived("ele_blood")) end,

    ["Mausoleum Hidden Chest"]              = function() return And(HasLightSource(), HasElement("ele_light"), HasDustyOrb()) end,

    ["Mausoleum Upper Alcove Table"]        = function() return And(HasLightSource(), HasElement("ele_light"), Or(CanJumpHeight("Medium"), AccessibilityLevel.SequenceBreak)) end,

    ["Mausoleum Maze (Early)"]              = function() return And(HasLightSource(), HasElement("ele_light")) end,

    ["Mausoleum Maze (Middle)"]             = function() return And(HasLightSource(), HasElement("ele_light")) end,

    ["Mausoleum Central Room (Right)"]      = function() return And(HasLightSource(), HasElement("ele_light")) end,

    ["Mausoleum Central Room (Left)"]       = function() return And(HasLightSource(), HasElement("ele_light")) end,

    ["Mausoleum Central Room (Back)"]       = function() return And(HasLightSource(), HasElement("ele_light")) end,

    ["Mausoleum Central Room (Left Path)"]  = function() return And(HasLightSource(), HasElement("ele_light")) end,

    ["Mausoleum Central Room (Right Path)"] = function() return And(HasLightSource(), HasElement("ele_light")) end,

    ["Kill Death"]                          = function() return And(HasLightSource(), HasElement("ele_light"), Or(
                                                And(EtnasPupil(), WasItemReceived("limbo")),
                                                And(NotEtnasPupil(), WereAllItemsReceived({"brokensword", "fractureddeath", "fracturedlife"})))) end,

    ["Tomb With Switch"]                    = function() return HasLightSource() end,

    ["Tomb With Sitting Corpse"]            = function() return HasLightSource() end,

    ["Demi Chest"]                          = function() return And(HasLightSource(), Or(CanJumpHeight("Medium"), AccessibilityLevel.SequenceBreak)) end,

    ["Near Light Switch"]                   = function() return HasLightSource() end,

    ["Hidden Room in Tomb"]                 = function() return And(HasLightSource(), HasDustyOrb()) end,

    ["Hidden Chest in Tomb"]                = function() return And(HasLightSource(), HasDustyOrb()) end,

-- Yosei Forest
    ["Barrel Group"]                    = function() return AccessibilityLevel.Normal end,

    ["Blood Pool"]                      = function() return AccessibilityLevel.Normal end,

    ["Branches Within Tree"]            = function() return AccessibilityLevel.Normal end,

    ["Chest Near Tree"]                 = function() return AccessibilityLevel.Normal end,

    ["Blood Plant's Insides"]           = function() return WasItemReceived("ele_blood") end,

    ["Hanging In The Trees"]            = function() return AccessibilityLevel.Normal end,

    ["YF: Hidden Chest"]                = function() return HasDustyOrb() end,

    ["Room Defended by Blood Plant"]    = function() return WasItemReceived("ele_blood") end,

    ["Patchouli's Canopy Offer"]        = function() return AccessibilityLevel.Normal end,

    ["Patchouli's Reward"]              = function() return WasItemReceived("skullofjosiah") end,

-- Forest Canopy
    ["Branch Lower Edge"]       = function() return AccessibilityLevel.Normal end,

    ["Branch Cave"]             = function() return AccessibilityLevel.Normal end,

    ["Chest"]                   = function() return AccessibilityLevel.Normal end,

    ["Wooden Statue (Josiah)"]  = function() return AccessibilityLevel.Normal end,

    ["Wooden Statue (Sitting)"] = function() return AccessibilityLevel.Normal end,

-- Forbidden Archives
    ["Back Room Past Bridge"]       = function() return AccessibilityLevel.Normal end,

    ["Strange Corpse"]              = function() return HasDustyOrb() end,

    ["Short Wall Near Trees"]       = function() return AccessibilityLevel.Normal end,

    ["Against Wall Near Trees"]     = function() return AccessibilityLevel.Normal end,

    ["Snail Lectern (Near)"]        = function() return Or(CanJumpHeight("High"), HasSwitch("forbiddenarchiveselevatorswitchkeyring")) end,

    ["Snail Lectern (Far)"]         = function() return Or(CanJumpHeight("High"), HasSwitch("forbiddenarchiveselevatorswitchkeyring")) end,

    ["Rug on Balcony"]              = function() return Or(CanJumpHeight("High"), HasSwitch("forbiddenarchiveselevatorswitchkeyring")) end,

    ["Rooftops"]                    = function() return Or(CanJumpHeight("High"), HasSwitch("forbiddenarchiveselevatorswitchkeyring")) end,

    ["Hidden Room Upper Floor"]     = function() return And(HasDustyOrb(), Or(CanJumpHeight("High"), HasSwitch("forbiddenarchiveselevatorswitchkeyring"))) end,

    ["Hidden Room Lower Floor"]     = function() return HasDustyOrb() end,

    ["Near Twisty Tree"]            = function() return AccessibilityLevel.Normal end,

    ["uwu"]                         = function() return AccessibilityLevel.Normal end,

    ["Daedalus Knowledge (First)"]  = function() return IsItemStageAtLeastN("blackbook", 1) end,

    ["Daedalus Knowledge (Second)"] = function() return IsItemStageAtLeastN("blackbook", 2) end,

    ["Daedalus Knowledge (Third)"]  = function() return IsItemStageAtLeastN("blackbook", 3) end,

    ["Daedalus' Blackened Treats"]  = function() return AccessibilityLevel.Normal end,

    ["Corner Near Daedalus"]        = function() return AccessibilityLevel.Normal end,

-- Castle Le Fanu
    ["Outside Corner"]                          = function() return AccessibilityLevel.Normal end,

    ["Cattle Cell (South)"]                     = function() return Or(CanEnterCattleCells(), IsItemStageAtLeastN("progressivevampiricsymbol", 2)) end,

    ["Cattle Cell (West)"]                      = function() return Or(CanEnterCattleCells(), IsItemStageAtLeastN("progressivevampiricsymbol", 2)) end,

    ["Cattle Cell (Center)"]                    = function() return And(Or(CanEnterCattleCells(), IsItemStageAtLeastN("progressivevampiricsymbol", 2)), HasElement("ele_fire")) end,

    ["Cattle Cell (North)"]                     = function() return WasItemReceived("ele_blood") end,

    ["Hidden Cattle Cell"]                      = function() return And(WasItemReceived("ele_blood"), HasDustyOrb()) end,

    ["Crilall's Bloody Treats"]                 = function() return IsItemStageAtLeastN("progressivevampiricsymbol", 1) end,

    ["Hallway Rubble Room"]                     = function() return IsItemStageAtLeastN("progressivevampiricsymbol", 1) end,

    ["Hallway Dining Room"]                     = function() return IsItemStageAtLeastN("progressivevampiricsymbol", 1) end,

    ["Garrat Resting Room (Fountain)"]          = function() return IsItemStageAtLeastN("progressivevampiricsymbol", 1) end,

    ["Garrat Resting Room (Wall)"]              = function() return IsItemStageAtLeastN("progressivevampiricsymbol", 1) end,

    ["Hallway Dead End Before Blue Doors"]      = function() return IsItemStageAtLeastN("progressivevampiricsymbol", 1) end,

    ["Upper Floor Coffin Room (Small Room)"]    = function() return IsItemStageAtLeastN("progressivevampiricsymbol", 2) end,

    ["Upper Floor Coffin Room (Large Room)"]    = function() return IsItemStageAtLeastN("progressivevampiricsymbol", 2) end,

    ["Upper Floor Coffin Room (Double)"]        = function() return And(IsItemStageAtLeastN("progressivevampiricsymbol", 3), HasDustyOrb()) end,

    ["Upper Floor Coffin Room (Hallway)"]       = function() return IsItemStageAtLeastN("progressivevampiricsymbol", 2) end,

-- Sealed Ballroom
    ["Entry Small Room Lounge"]         = function() return HasDoorKey("ballroomsideroomskeyring") end,

    ["Entry Hidden Couch Top"]          = function() return And(HasDoorKey("ballroomsideroomskeyring"), HasDustyOrb()) end,

    ["Entry Hidden Couch Bottom"]       = function() return And(HasDoorKey("ballroomsideroomskeyring"), HasDustyOrb()) end,

    ["Entry Hidden Cave in a Lounge"]   = function() return And(HasDoorKey("ballroomsideroomskeyring"), HasDustyOrb()) end,

    ["Entry Lounge Long Table"]         = function() return HasDoorKey("ballroomsideroomskeyring") end,

    ["Side Hidden Cave"]                = function() return HasDustyOrb() end,

    ["Side Chest Near Switch"]          = function() return HasDoorKey("ballroomsideroomskeyring") end,

    ["Side Painting Viewing Room"]      = function() return HasDoorKey("ballroomsideroomskeyring") end,

    ["Side Hidden Casket Room"]         = function() return HasDustyOrb() end,

    ["Side XP Drain Party Room"]        = function() return HasDoorKey("ballroomsideroomskeyring") end,

-- Laetus Chasm
    ["Hidden Room"]                 = function() return HasDustyOrb() end,

    ["Invisible Path to Cliffside"] = function() return WereAnyItemsReceived({"coffin", "icarianflight"}) end,

-- Great Well Surface
    ["Demi's Gift"] = function() return AccessibilityLevel.Normal end,

-- Throne Room
    ["Crilall's Book Repository"] = function() return AccessibilityLevel.Normal end,

-- A Holy Battlefield
    -- ["Sngula Umbra's Remains"] = function() return AccessibilityLevel.Normal end,

-- Boiling Grotto
    ["Slab of a Broken Bridge"]         = function() return AccessibilityLevel.Normal end,

    ["BG: Hidden Chest"]                = function() return HasDustyOrb() end,

    ["Corpse Beneath Entrance"]         = function() return AccessibilityLevel.Normal end,

    ["Shery's Delectable Treats"]       = function() return AccessibilityLevel.Normal end,

    ["Triple Hidden Chest"]             = function() return HasDustyOrb() end,

    ["Lava Overseeing Dragon Switch"]   = function() return AccessibilityLevel.Normal end,

    ["Through Dragon Switch Tunnel"]    = function() return AccessibilityLevel.Normal end,

-- Boiling Grotto (Sand Temple)
    ["Room Buried in Sand"]     = function() return HasSwitch("grottofireswitchkeyring") end,

    ["Top Right Sarcophagus"]   = function() return HasSwitch("grottofireswitchkeyring") end,

    ["Second Floor Snake Room"] = function() return And(CanJumpHeight("Medium"), HasSwitch("grottofireswitchkeyring")) end,

    ["Basement Snake Pit"]      = function() return And(CanJumpHeight("High"), HasSwitch("grottofireswitchkeyring"), HasDustyOrb()) end,

    ["Hidden Sarcophagus"]      = function() return And(HasDustyOrb(), HasSwitch("grottofireswitchkeyring")) end,

    ["Second Floor Dead End"]   = function() return And(CanJumpHeight("Medium"), HasSwitch("grottofireswitchkeyring")) end,

    ["Lunacid Sandwich"]        = function() return HasSwitch("grottofireswitchkeyring") end,

    ["Chest Near Switch"]       = function() return HasSwitch("grottofireswitchkeyring") end,

    ["Chest Overlooking Crypt"] = function() return And(CanJumpHeight("High"), HasSwitch("grottofireswitchkeyring")) end,

    ["Floor Switch Maze"]       = function() return HasSwitch("grottofireswitchkeyring") end,

    ["Basement Stone Rubble"]   = function() return HasSwitch("grottofireswitchkeyring") end,

    ["Triple Sarcophagus"]      = function() return HasSwitch("grottofireswitchkeyring") end,

-- Tower of Abyss
    ["Floor 5"]       = function() return HasDoorKey("towerofabysskeyring") end,

    ["Floor 10"]      = function() return HasDoorKey("towerofabysskeyring") end,

    ["Floor 15"]      = function() return HasDoorKey("towerofabysskeyring") end,

    ["Floor 20"]      = function() return HasDoorKey("towerofabysskeyring") end,

    ["Floor 25"]      = function() return HasDoorKey("towerofabysskeyring") end,

    ["Floor 30"]      = function() return HasDoorKey("towerofabysskeyring") end,

    ["Floor 35"]      = function() return HasDoorKey("towerofabysskeyring") end,

    ["Floor 40"]      = function() return HasDoorKey("towerofabysskeyring") end,

    ["Floor 45"]      = function() return HasDoorKey("towerofabysskeyring") end,

    ["Floor 50"]      = function() return HasDoorKey("towerofabysskeyring") end,

    ["Prize Beneath Tree"]  = function() return HasDoorKey("towerofabysskeyring") end,

-- Terminus Prison
    ["Lobos' Late Treats"]                          = function() return WasItemReceived("terminusprisonkey") end,

    ["Third Floor Locked Cell Left"]                = function() return WasItemReceived("terminusprisonkey") end,

    ["Third Floor Locked Cell Right"]               = function() return WasItemReceived("terminusprisonkey") end,

    ["Third Floor Locked Cell South"]               = function() return WasItemReceived("terminusprisonkey") end,

    ["Almost Bottomless Pit"]                       = function() return WasItemReceived("terminusprisonkey") end,

    ["Second Floor Broken Cell"]                    = function() return AccessibilityLevel.Normal end,

    ["Second Floor Jailer's Table"]                 = function() return AccessibilityLevel.Normal end,

    ["First Floor Hidden Cell"]                     = function() return And(HasDustyOrb(), HasLightSource()) end,

    ["First Floor Hidden Debris Room"]              = function() return And(HasDustyOrb(), HasLightSource()) end,

    ["First Floor Remains"]                         = function() return HasLightSource() end,

    ["Green Asylum Guarded Alcove (Left)"]          = function() return HasLightSource() end,

    ["Green Asylum Guarded Alcove (Right)"]         = function() return HasLightSource() end,

    ["Green Asylum Long Alcove"]                    = function() return HasLightSource() end,

    ["Green Asylum Bone Pit"]                       = function() return HasLightSource() end,

    ["Egg's Resting Place"]                         = function() return And(HasLightSource(), WasItemReceived("skeletonegg")) end,

    ["Fourth Floor Cell Hanging Remains"]           = function() return WasItemReceived("terminusprisonkey") end,

    ["Fourth Floor Maledictus Secret"]              = function() return And(WasItemReceived("terminusprisonkey"), HasDustyOrb()) end,

    ["Fourth Floor Hidden Jailer Sleeping Spot"]    = function() return And(WasItemReceived("terminusprisonkey"), HasDustyOrb()) end,

    ["Fourth Floor Jailer Break Room"]              = function() return WasItemReceived("terminusprisonkey") end,

    ["Etna's Resting Place Item 1"]                 = function() return WasItemReceived("terminusprisonkey") end,

    ["Etna's Resting Place Item 2"]                 = function() return WasItemReceived("terminusprisonkey") end,

    ["Etna's Resting Place Item 3"]                 = function() return WasItemReceived("terminusprisonkey") end,

    ["Fourth Floor Collapsed Tunnel"]               = function() return WasItemReceived("terminusprisonkey") end,

-- Forlorn Arena
    ["Corpse Waiting For A Full Moon"]                 = function() return AccessibilityLevel.Normal end,

    ["Entry Rock Parkour"]                             = function() return AccessibilityLevel.Normal end,

    ["Temple of Earth Hidden Plant Haven"]             = function() return HasDustyOrb() end,

    ["Temple of Earth Hidden Room"]                    = function() return HasDustyOrb() end,

    ["Temple of Earth Fractured Chest"]                = function() return And(HasDustyOrb(), CanJumpHeight("High")) end,

    ["Temple of Earth Chest Near Switch"]              = function() return AccessibilityLevel.Normal end,

    ["Temple of Water Room Near Water"]                = function() return AccessibilityLevel.Normal end,

    ["Temple of Water Corner Near Water"]              = function() return AccessibilityLevel.Normal end,

    ["Temple of Water Collapsed End Near Balcony"]     = function() return AccessibilityLevel.Normal end,

    ["Temple of Water Hidden Basement"]                = function() return HasDustyOrb() end,

    ["Temple of Water Hidden Laser Room"]              = function() return HasDustyOrb() end,

    ["Temple of Water Hidden Alcove Before Stairs"]    = function() return HasDustyOrb() end,

    ["Temple of Water Hidden Alcove"]                  = function() return HasDustyOrb() end,

    ["Temple of Water Hidden Alcove Before Switch"]    = function() return HasDustyOrb() end,

    ["Temple of Water Fractured Chest"]                = function() return And(HasDustyOrb(), CanJumpHeight("High")) end,

    ["Temple of Water Chest Near Switch"]              = function() return AccessibilityLevel.Normal end,

-- Labyrinth of Ash
    ["Entry Coffin"]            = function() return AccessibilityLevel.Normal end,

    ["Giant Remains"]           = function() return HasDoorKey("ashendoorskeyring") end,

    ["Behind Statue"]           = function() return HasDoorKey("ashendoorskeyring") end,

    ["Rocks Near Switch"]       = function() return HasDoorKey("ashendoorskeyring") end,

    ["Forbidden Light Chest"]   = function() return HasDoorKey("ashendoorskeyring") end,

    ["Hidden Light Stash"]      = function() return And(HasDoorKey("ashendoorskeyring"), HasDustyOrb()) end,

    ["NNSNSSNSNN Lost Maze"]    = function() return And(HasDoorKey("ashendoorskeyring"), HasDustyOrb()) end,

-- Chamber of Fate
    ["Calamis' Weapon of Choice"]   = function() return AccessibilityLevel.Normal end,

-- Shopsanity
    ["Buy Enchanted Key"]               = function() return AccessibilityLevel.Normal end,

    ["Buy Rapier"]                      = function() return Or(WasItemReceived("sherylinitialvoucher"), AccessibilityLevel.Partial) end,

    ["Buy Steel Needle"]                = function() return Or(WasItemReceived("sherylinitialvoucher"), AccessibilityLevel.Partial) end,

    ["Buy Crossbow"]                    = function() return Or(WasItemReceived("sherylinitialvoucher"), AccessibilityLevel.Partial) end,

    ["Buy Oil Lantern"]                 = function() return Or(And(WasItemReceived("igniscalor"), HasConnection("Burning Hot Door (Boiling Grotto Side)")), WasItemReceived("sherylgoldenvoucher")) end,

    ["Buy Ocean Elixir (Patchouli)"]    = function() return Or(WasItemReceived("patchoulidrinksvoucher"), AccessibilityLevel.Partial) end,

    ["Buy Privateer Musket"]            = function() return Or(And(WasItemReceived("igniscalor"), HasConnection("Burning Hot Door (Boiling Grotto Side)")), WasItemReceived("sherylgoldenvoucher")) end,

    ["Buy Jotunn Slayer"]               = function() return And(Or(WasItemReceived("sheryldreamervoucher"), AccessibilityLevel.Partial), CanKillJotunn()) end,

-- Living Gates
    ["Hollow Basin Living Gate"] = function() return CheckGate("basin") end,

    ["Yosei Forest Living Gate"] = function() return CheckGate("basin") end,

-- Switch looks
    ["Hollow Basin Switch"] = function() return HasSwitch("hollowbasinswitchkey") end,

    ["Temple of Silence Switch"] = function() return And(CanEnterTemple(), HasSwitch("templeofsilenceswitchkey")) end,

    ["Forbidden Archives Shortcut Switch"] = function() return HasSwitch("forbiddenarchivesshortcutswitchkey") end,

    ["Forbidden Archives Elevator Switch (1F - 2F) [Top]"] = function() return HasSwitch("forbiddenarchiveselevatorswitchkeyring") end,

    ["Forbidden Archives Elevator Switch (1F - 2F) [Bottom]"] = function() return HasSwitch("forbiddenarchiveselevatorswitchkeyring") end,

    ["Forbidden Archives Elevator Switch (2F - 3F) [Top]"] = function() return HasSwitch("forbiddenarchiveselevatorswitchkeyring") end,

    ["Forbidden Archives Elevator Switch (2F - 3F) [Bottom]"] = function() return HasSwitch("forbiddenarchiveselevatorswitchkeyring") end,

    ["Forbidden Archives Elevator Switch (1F - 3F) [Top]"] = function() return HasSwitch("forbiddenarchiveselevatorswitchkeyring") end,

    ["Forbidden Archives Elevator Switch (1F - 3F) [Bottom]"] = function() return HasSwitch("forbiddenarchiveselevatorswitchkeyring") end,

    ["Accursed Tomb Lobby Switch"] = function() return HasSwitch("accursedtombswitchkeyring") end,

    ["Accursed Tomb Crypt Switch"] = function() return HasSwitch("accursedtombswitchkeyring") end,

    ["Accursed Tomb Light Switch (Near Save Crystal)"] = function() return HasSwitch("accursedtombswitchkeyring") end,

    ["Accursed Tomb Light Switch (Near Demi)"] = function() return And(Or(CanJumpHeight("Medium"), AccessibilityLevel.SequenceBreak), HasSwitch("accursedtombswitchkeyring")) end,

    ["Accursed Tomb Light Switch (In Noble Crypt)"] = function() return HasSwitch("accursedtombswitchkeyring") end,

    ["Fetid Mire Switch"] = function() return HasSwitch("fetidmireswitchkey") end,

    ["Sealed Ballroom Switch"] = function() return HasSwitch("sealedballroomswitchkey") end,

    ["Boiling Grotto Fire Switch (North)"] = function() return HasSwitch("grottofireswitchkeyring") end,

    ["Boiling Grotto Fire Switch (South)"] = function() return HasSwitch("grottofireswitchkeyring") end,

    ["Terminus Prison Back Alley Switch"] = function() return HasSwitch("terminusprisonbackalleyswitchkey") end,

    ["Forlorn Arena Switch"] = function() return HasSwitch("forlornarenagateswitchkey") end,

    ["Temple of Water Switch"] = function() return HasSwitch("templeofwaterswitchkey") end,

    ["Temple of Earth Switch"] = function() return HasSwitch("templeofearthswitchkey") end,

    ["Labyrinth of Ash Switch"] = function() return HasSwitch("labyrinthofashswitchkey") end,

-- Doors
    ["Broken Steps Door (Hollow Basin Side)"] = function() return HasDoorKey("brokenstepsdoorkey") end,

    ["Broken Steps Door (Forbidden Archives Side)"] = function() return HasDoorKey("brokenstepsdoorkey") end,

    ["Sewers Door (The Fetid Mire Side)"] = function() return HasDoorKey("sewersdoorkey") end,

    ["Sewers Door (Hollow Basin Side)"] = function() return And(HasDoorKey("sewersdoorkey"), CanEnterTemple(), HasSwitch("templeofsilenceswitchkey")) end,

    ["Rickety Bridge Door (Hollow Basin Side)"] = function() return And(HasDoorKey("lowerricketybridgedoorkey"), CanEnterTemple(), HasSwitch("templeofsilenceswitchkey")) end,

    ["Rickety Bridge Door (Yosei Forest Side)"] = function() return HasDoorKey("lowerricketybridgedoorkey") end,

    ["Treetop Door (Yosei Forest Side)"] = function() return And(HasDoorKey("treetopdoorkey"), HandleGate('forest')) end,

    ["Treetop Door (Forest Canopy Path)"] = function() return HasDoorKey("treetopdoorkey") end,

    ["Tomb Secret Door (Yosei Forest Side)"] = function() return HasDoorKey("tombsecretdoorkey") end,

    ["Tomb Secret Door (Accursed Tomb Side)"] = function() return HasDoorKey("tombsecretdoorkey") end,

    ["Library Exit Door (Forbidden Archives Side)"] = function() return And(HasDoorKey("libraryexitdoorkey"), IsItemStageAtLeastN("progressivevampiricsymbol", 2)) end,

    ["Library Exit Door (Laetus Chasm Side)"] = function() return HasDoorKey("libraryexitdoorkey") end,

    ["Surface Door (Laetus Chasm Side)"] = function() return HasDoorKey("surfacedoorkey") end,

    ["Surface Door (Great Well Surface Side)"] = function() return HasDoorKey("surfacedoorkey") end,

    ["Sewers Sea Door (The Fetid Mire Side)"] = function() return HasDoorKey("sewersseadoorkey") end,

    ["Sewers Sea Door (Sanguine Sea Side)"] = function() return HasDoorKey("sewersseadoorkey") end,

    ["Accursed Door (Sanguine Sea Side)"] = function() return HasDoorKey("accurseddoorkey") end,

    ["Accursed Door (Accursed Tomb Side)"] = function() return HasDoorKey("accurseddoorkey") end,

    ["Castle Doors (Sanguine Sea Side)"] = function() return HasDoorKey("castledoorskey") end,

    ["Castle Doors (Castle Le Fanu Side)"] = function() return HasDoorKey("castledoorskey") end,

    ["Light Accursed Door (Castle Le Fanu Side)"] = function() return And(HasDoorKey("lightaccurseddoorkey"), CanSolveClocktower()) end,

    ["Light Accursed Door (Sealed Ballroom Side)"] = function() return HasDoorKey("lightaccurseddoorkey") end,

    ["Prison Main Door (Throne Chamber Side)"] = function() return HasDoorKey("prisonmaindoorkey") end,

    ["Prison Main Door (Terminus Prison Side)"] = function() return HasDoorKey("prisonmaindoorkey") end,

    ["Queen's Throne Door (Castle Le Fanu Side)"] = function() return And(HasDoorKey("queen'sthronedoorkey"), IsItemStageAtLeastN("progressivevampiricsymbol", 3)) end,

    ["Queen's Throne Door (Throne Chamber Side)"] = function() return HasDoorKey("queen'sthronedoorkey") end,

    ["Secondary Door (Terminus Prison Side)"] = function() return HasDoorKey("secondarylockkey") end,

    ["Secondary Door (Forlorn Arena Side)"] = function() return HasDoorKey("secondarylockkey") end,

    ["Forbidden Door (Terminus Prison Side)"] = function() return HasDoorKey("forbiddendoorkey") end,

    ["Forbidden Door (Labyrinth of Ash Side)"] = function() return HasDoorKey("forbiddendoorkey") end,

    ["Burning Hot Door (Castle Le Fanu Side)"] = function() return HasDoorKey("burninghotkey") end,

    ["Burning Hot Door (Boiling Grotto Side)"] = function() return HasDoorKey("burninghotkey") end,

    ["Sucsarian Door (Forlorn Arena Side)"] = function() return And(HasDoorKey("sucsariankey"), WereAllItemsReceived({"watertalisman", "earthtalisman"})) end,

    ["Sucsarian Door (Chamber of Fate Side)"] = function() return HasDoorKey("sucsariankey") end,

    ["Dreamer Door (Chamber of Fate Side)"] = function() return HasDoorKey("dreamerkey") end,

    ["Dreamer Door (Grave of the Sleeper Side)"] = function() return HasDoorKey("dreamerkey") end,

    ["Surface Hole (Wing's Rest)"] = function() return Or(CanJumpHeight("High"), WasItemReceived("coffin")) end,

    ["Hollow Basin Ceiling"] = function() return Or(CanJumpHeight("High"), WasItemReceived("coffin")) end,

    ["Jump from Castle Le Fanu Walls"] = function() return AccessibilityLevel.Normal end,

    ["Great Well Surface Holes"] = function() return AccessibilityLevel.Normal end,

    ["Tower of Abyss Coffin"] = function() return HasDustyOrb() end,
}

ER_LOCATION_LOGIC = {
-- Hollow Basin
    ["Encouraging Statue"]                          = function() return HasAnyConnection({"Rickety Bridge Door (Hollow Basin Side)", "Broken Steps Door (Hollow Basin Side)", "Hollow Basin Ceiling", "Hollow Basin"}) end,

    ["Rightmost Water Room (Right)"]                = function() return HasAnyConnection({"Rickety Bridge Door (Hollow Basin Side)", "Broken Steps Door (Hollow Basin Side)", "Hollow Basin Ceiling", "Hollow Basin"}) end,

    ["Rightmost Water Room (Left)"]                 = function() return HasAnyConnection({"Rickety Bridge Door (Hollow Basin Side)", "Broken Steps Door (Hollow Basin Side)", "Hollow Basin Ceiling", "Hollow Basin"}) end,

    ["Leftmost Water Room"]                         = function() return HasAnyConnection({"Rickety Bridge Door (Hollow Basin Side)", "Broken Steps Door (Hollow Basin Side)", "Hollow Basin Ceiling", "Hollow Basin"}) end,

    ["Chest Near Demi"]                             = function() return HasAnyConnection({"Rickety Bridge Door (Hollow Basin Side)", "Broken Steps Door (Hollow Basin Side)", "Hollow Basin Ceiling", "Hollow Basin"}) end,

    ["Near Enchanted Door"]                         = function() return HasAnyConnection({"Rickety Bridge Door (Hollow Basin Side)", "Broken Steps Door (Hollow Basin Side)", "Hollow Basin Ceiling", "Hollow Basin"}) end,

    ["Dark Tunnel After Enchanted Door"]            = function() return Or(VANILLA_LOCATION_LOGIC["Dark Tunnel After Enchanted Door"](),
                                                                            And(HasConnection('Rickety Bridge Door (Hollow Basin Side)'), HasDustyOrb())) end,

    ["Temple Fountain"]                             = function() return Or(VANILLA_LOCATION_LOGIC["Temple Fountain"](),
                                                                            And(HasConnection('Rickety Bridge Door (Hollow Basin Side)'), HasDustyOrb())) end,

    ["Temple Ritual Table"]                         = function() return Or(VANILLA_LOCATION_LOGIC["Temple Ritual Table"](),
                                                                            And(HasConnection('Rickety Bridge Door (Hollow Basin Side)'), HasDustyOrb())) end,

    ["Temple Altar Chest"]                          = function() return Or(VANILLA_LOCATION_LOGIC["Temple Altar Chest"](),
                                                                            And(HasConnection('Rickety Bridge Door (Hollow Basin Side)'), HasDustyOrb())) end,

    ["Temple Hidden Room Behind Pillar (Left)"]     = function() return Or(VANILLA_LOCATION_LOGIC["Temple Hidden Room Behind Pillar (Left)"](),
                                                                            And(HasConnection('Rickety Bridge Door (Hollow Basin Side)'), HasDustyOrb())) end,

    ["Temple Hidden Room Behind Pillar (Right)"]    = function() return Or(VANILLA_LOCATION_LOGIC["Temple Hidden Room Behind Pillar (Right)"](),
                                                                            And(HasConnection('Rickety Bridge Door (Hollow Basin Side)'), HasDustyOrb())) end,

    ["Temple Ritual Table After Bridge"]            = function() return Or(VANILLA_LOCATION_LOGIC["Temple Ritual Table After Bridge"](),
                                                                            HasConnection('Rickety Bridge Door (Hollow Basin Side)')) end,

    ["Temple Small Pillar Top"]                     = function() return Or(VANILLA_LOCATION_LOGIC["Temple Small Pillar Top"](),
                                                                            HasConnection('Rickety Bridge Door (Hollow Basin Side)')) end,

    ["Temple Pillar Room Left"]                     = function() return Or(VANILLA_LOCATION_LOGIC["Temple Pillar Room Left"](),
                                                                            And(HasConnection('Rickety Bridge Door (Hollow Basin Side)'), HasDustyOrb())) end,

    ["Temple Pillar Room Back Left"]                = function() return Or(VANILLA_LOCATION_LOGIC["Temple Pillar Room Back Left"](),
                                                                            And(HasConnection('Rickety Bridge Door (Hollow Basin Side)'), HasDustyOrb())) end,

    ["Temple Pillar Room Back Right"]               = function() return Or(VANILLA_LOCATION_LOGIC["Temple Pillar Room Back Right"](),
                                                                            And(HasConnection('Rickety Bridge Door (Hollow Basin Side)'), HasDustyOrb())) end,

    ["Temple Pillar Room Hidden Room"]              = function() return Or(VANILLA_LOCATION_LOGIC["Temple Pillar Room Hidden Room"](),
                                                                            And(HasConnection('Rickety Bridge Door (Hollow Basin Side)'), HasDustyOrb())) end,

    ["Temple Hidden Room In Sewer"]                 = function() return And(HasDustyOrb(),
                                                                            Or(HasConnection('Sewers Door (Hollow Basin Side)'),
                                                                                And(HasConnection('Rickety Bridge Door (Hollow Basin Side)'), HasSwitch("templeofsilenceswitchkey")),
                                                                                VANILLA_LOCATION_LOGIC["Temple Hidden Room In Sewer"]())) end,

    ["Temple Table in Sewer"]                       = function() return Or(HasConnection('Sewers Door (Hollow Basin Side)'),
                                                                            And(HasConnection('Rickety Bridge Door (Hollow Basin Side)'), HasSwitch("templeofsilenceswitchkey"), HasDustyOrb()),
                                                                            VANILLA_LOCATION_LOGIC["Temple Table in Sewer"]()) end,

    ["Temple Sewer Puzzle"]                         = function() return And(CanEnter("Accursed Tomb"),
                                                                        Or(And(HasConnection('Sewers Door (Hollow Basin Side)'), And(WasItemReceived("vhstape"), HasElement("ele_light"))),
                                                                            And(HasConnection('Rickety Bridge Door (Hollow Basin Side)'), HasSwitch("templeofsilenceswitchkey"), WasItemReceived("vhstape"), HasElement("ele_light"), HasDustyOrb()),
                                                                            VANILLA_LOCATION_LOGIC["Temple Sewer Puzzle"]())) end,

    ["Temple Blood Altar"]                          = function() return Or(VANILLA_LOCATION_LOGIC["Temple Blood Altar"](),
                                                                            And(HasConnection('Rickety Bridge Door (Hollow Basin Side)'), HasElement("ele_blood"), HasDustyOrb())) end,

    ["Alcove on Path to Yosei Forest"]              = function() return Or(VANILLA_LOCATION_LOGIC["Alcove on Path to Yosei Forest"](),
                                                                            HasConnection('Rickety Bridge Door (Hollow Basin Side)')) end,
-- Castle Le Fanu
    ["Outside Corner"]                          = function() return CanEnterCastleStage(0) end,

    ["Cattle Cell (South)"]                     = function() return CanEnterCastleStage(0.5) end,

    ["Cattle Cell (West)"]                      = function() return CanEnterCastleStage(0.5) end,

    ["Cattle Cell (Center)"]                    = function() return And(HasElement("ele_fire"), CanEnterCastleStage(0.5)) end,

    ["Cattle Cell (North)"]                     = function() return And(HasElement("ele_blood"), CanEnterCastleStage(0)) end,

    ["Hidden Cattle Cell"]                      = function() return And(HasElement("ele_blood"), CanEnterCastleStage(0), HasDustyOrb()) end,

    ["Crilall's Bloody Treats"]                 = function() return CanEnterCastleStage(1) end,

    ["Hallway Rubble Room"]                     = function() return CanEnterCastleStage(1) end,

    ["Hallway Dining Room"]                     = function() return CanEnterCastleStage(1) end,

    ["Garrat Resting Room (Fountain)"]          = function() return CanEnterCastleStage(1) end,

    ["Garrat Resting Room (Wall)"]              = function() return CanEnterCastleStage(1) end,

    ["Hallway Dead End Before Blue Doors"]      = function() return CanEnterCastleStage(1) end,

    ["Upper Floor Coffin Room (Small Room)"]    = function() return CanEnterCastleStage(2) end,

    ["Upper Floor Coffin Room (Large Room)"]    = function() return CanEnterCastleStage(2) end,

    ["Upper Floor Coffin Room (Double)"]        = function() return And(CanEnterCastleStage(3), HasDustyOrb()) end,

    ["Upper Floor Coffin Room (Hallway)"]       = function() return CanEnterCastleStage(2) end,

    ["Queen's Throne Door (Castle Le Fanu Side)"] = function() return And(HasDoorKey("queen'sthronedoorkey"), Or(IsItemStageAtLeastN("progressivevampiricsymbol", 3), HasConnection("Queen's Throne Door (Castle Le Fanu Side)"))) end,

-- Doorsanity
    ["Light Accursed Door (Castle Le Fanu Side)"] = function() return And(HasDoorKey("lightaccurseddoorkey"), Or(HasConnection("Light Accursed Door (Castle Le Fanu Side)"),
                                                                        And(CanEnterCastleStage(2), HasElement("ele_dark")))) end,

    ["Hollow Basin Ceiling"] = function() return And(VANILLA_LOCATION_LOGIC["Hollow Basin Ceiling"](), HasAnyConnection({"Rickety Bridge Door (Hollow Basin Side)", "Broken Steps Door (Hollow Basin Side)", "Hollow Basin Ceiling", "Hollow Basin"})) end,

    ["Broken Steps Door (Hollow Basin Side)"] = function() return And(HasDoorKey("brokenstepsdoorkey"), HasAnyConnection({"Rickety Bridge Door (Hollow Basin Side)", "Broken Steps Door (Hollow Basin Side)", "Hollow Basin Ceiling", "Hollow Basin"})) end,

    ["Sewers Door (Hollow Basin Side)"] = function() return And(HasDoorKey("sewersdoorkey"),
                                                                Or(HasConnection("Sewers Door (Hollow Basin Side)"),
                                                                    And(HasConnection("Rickety Bridge Door (Hollow Basin Side)"), HasSwitch("templeofsilenceswitchkey"), HasDustyOrb()),
                                                                    And(HasAnyConnection({"Broken Steps Door (Hollow Basin Side)", "Hollow Basin Ceiling", "Hollow Basin"}), HasSwitch("templeofsilenceswitchkey"), HandleGate('basin')))) end,

    ["Prison Main Door (Terminus Prison Side)"] = function() return And(HasDoorKey("prisonmaindoorkey"),
                                                                        Or(HasConnection("Terminus Prison"),
                                                                            And(HasAnyConnection({"Secondary Door (Terminus Prison Side)", "Forbidden Door (Terminus Prison Side)"}),
                                                                                Or(HasSwitch("terminusprisonbackalleyswitchkey"),CanJumpHeight("High"))))) end,
-- Switch looks
    ["Temple of Silence Switch"] = function() return And(HasSwitch("templeofsilenceswitchkey"),
                                                        Or(
                                                            And(HasConnection("Rickety Bridge Door (Hollow Basin Side)"), HasDustyOrb()),
                                                            And(HasAnyConnection({"Broken Steps Door (Hollow Basin Side)", "Hollow Basin Ceiling", "Hollow Basin"}), HandleGate('basin')))) end,
}

function CanReach(location)
    if Tracker:FindObjectForCode('entrance_toggle').Active or Tracker:FindObjectForCode("starting_area").AcquiredCount > 0 then
        if type(ER_LOCATION_LOGIC[location]) == "function" then
            return ER_LOCATION_LOGIC[location]()
        end
    end
    if type(VANILLA_LOCATION_LOGIC[location]) == "function" then
        return VANILLA_LOCATION_LOGIC[location]()
    end
    return AccessibilityLevel.None
end