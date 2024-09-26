-- use this file to map the AP item ids to your items
-- first value is the code of the target item and the second is the item type (currently only "toggle", "progressive" and "consumable" but feel free to expand for your needs!)
-- here are the SM items as an example: https://github.com/Cyb3RGER/sm_ap_tracker/blob/main/scripts/autotracking/item_mapping.lua
ITEM_MAPPING = {
    --[771111111] = {"Health Vial", "consumable"},
    --[771111112] = {"Mana Vial", "consumable"},
    --[771111113] = {"Antidote", "consumable"},
    --[771111114] = {"Blood Wine", "consumable"},
    [5] = {"Crystal Shard", "consumable"},
    --[771111116] = {"Ocean Elixir", "consumable"},
    --[771111117] = {"Earth Elixir", "consumable"},
    --[771111118] = {"Poison Throwing Knife", "consumable"},
    [9] = {{"bb"}, "progressive"},
    --[771111120] = {"Holy Water", "consumable"},
    --[771111121] = {"Fairy Moss", "consumable"},
    --[771111122] = {"Light Urn", "consumable"},
    --[771111123] = {"Ashes", "consumable"},
    --[771111124] = {"Cloth Bandage", "consumable"},
    --[771111125] = {"Moonlight Vial", "consumable"},
    --[771111126] = {"Spectral Candle", "consumable"},
    --[771111127] = {"Dark Urn", "consumable"},
    --[771111128] = {"Wisp Heart", "consumable"},
    --[771111129] = {"Staff of Osiris", "consumable"},
    [20] = {{"vhs_tape_2"}, "toggle"},
    [21] = {{"vhs_tape_1"}, "toggle"},
    [22] = {{"ckey"}, "toggle"},
    [23] = {{"jo_skull"}, "toggle"},
    [24] = {{"vamp_symbol"}, "progressive"},
    --[771111137] = {"Crystal Lantern", "toggle"},
    [28] = {{"term_key"}, "toggle"},
    [29] = {{"ekey"}, "progressive"},
    --[771111140] = {"Survey Banner", "consumable"},
    --[771111141] = {"Ectoplasm", "consumable"},
    --[771111142] = {"Snowflake Obsidian", "consumable"},
    --[771111143] = {"Moon Petal", "consumable"},
    --[771111144] = {"Fractured Life", "toggle"},
    --[771111145] = {"Fractured Death", "toggle"},
    --[771111146] = {"Broken Sword", "toggle"},
    [37] = {{"W_talis"}, "toggle"},
    [38] = {{"e_talis"}, "toggle"},
    [39] = {{"scoins"}, "consumable"},
    --[771111150] = {"Oil Lantern", "toggle"},
    --[771111151] = {"Bomb", "consumable"},
    --[771111152] = {"Poison Urn", "consumable"},
    --[771111153] = {"Silver", "consumable"},
    --[771111154] = {"Skeleton Egg", "toggle"},
    --[771111155] = {"Dried Rat", "toggle"},
    --[771111156] = {"Dusty Crystal Orb", "toggle"},
    --[771111157] = {"Skeletal Rattle", "toggle"},
    --[771111158] = {"Shrimp", "consumable"},
    --[771111159] = {"Angel Feather", "consumable"},
    --[771111160] = {"Tent", ""},
    --[771111161] = {"Fire Opal", "consumable"},
    --[771111162] = {"Lotus Seed Pod", "consumable"},
    --[771111163] = {"Onyx", "consumable"},
    --[771111164] = {"Destroying Angel Mushroom", "consumable"},
    --[771111165] = {"Ocean Bone Shard", "consumable"},
    --[771111166] = {"Ocean Bone Shell", "consumable"},
    --[771111167] = {"Yellow Morel", "consumable"},
    --[771111168] = {"Bloodweed", "consumable"},
    --[771111169] = {"Opal", "consumable"},
    --[771111170] = {"Obsidian", "consumable"},
    --[771111171] = {"Ikurr'ilb Root", "consumable"},
    --[771111190] = {"Axe of Harming", "toggle"},
    --[771111191] = {"Battle Axe", "toggle"},
    --[771111192] = {"Blade of Jusztina", "toggle"},
    --[771111193] = {"Blade of Ophelia", "toggle"},
    --[771111194] = {"Blessed Wind", "toggle"},
    --[771111195] = {"Broken Hilt", "toggle"},
    --[771111196] = {"Broken Lance", "toggle"},
    --[771111197] = {"Corrupted Dagger", "toggle"},
    --[771111198] = {"Dark Rapier", "toggle"},
    --[771111199] = {"Elfen Bow", "toggle"},
    --[771111200] = {"Elfen Sword", "toggle"},
    --[771111201] = {"Fishing Spear", "toggle"},
    --[771111202] = {"Marauder Black Flail", "toggle"},
    --[771111203] = {"Halberd", "toggle"},
    --[771111204] = {"Iron Claw", "toggle"},
    --[771111205] = {"Moonlight", "toggle"},
    --[771111206] = {"Obsidian Seal", "toggle"},
    --[771111207] = {"Replica Sword", "toggle"},
    --[771111208] = {"Ritual Dagger", "toggle"},
    --[771111209] = {"Serpent Fang", "toggle"},
    --[771111210] = {"Shadow Blade", "toggle"},
    --[771111211] = {"Steel Spear", "toggle"},
    --[771111212] = {"Stone Club", "toggle"},
    --[771111213] = {"Torch", "toggle"},
    --[771111214] = {"Twisted Staff", "toggle"},
    --[771111215] = {"Vampire Hunter Sword", "toggle"},
    [177] = {{"wop", "ele_light", "ele_fire", "ele_dark", "ele_poison"}, "toggle"},
    --[771111217] = {"Wolfram Greatsword", "toggle"},
    --[771111218] = {"Wooden Shield", "toggle"},
    --[771111219] = {"Crossbow", "toggle"},
    --[771111220] = {"Steel Needle", "toggle"},
    --[771111221] = {"Lucid Blade", "toggle"},
    --[771111222] = {"Hammer of Cruelty", "toggle"},
    [184] = {{"slayer"}, "toggle"},
    --[771111224] = {"Rapier", "toggle"},
    --[771111225] = {"Privateer Musket", "toggle"},
    --[771111226] = {"Rusted Sword", "toggle"},
    --[771111227] = {"Ice Sickle", "toggle"},
    --[771111228] = {"Skeleton Axe", "toggle"},
    --[771111229] = {"Cursed Blade", "toggle"},
    --[771111230] = {"Brittle Arming Sword", "toggle"},
    --[771111231] = {"Obsidian Cursebrand", "toggle"},
    --[771111232] = {"Obsidian Poisonguard", "toggle"},
    --[771111233] = {"Golden Kopesh", "toggle"},
    --[771111234] = {"Golden Sickle", "toggle"},
    --[771111235] = {"Jailor's Candle", "toggle"},
    --[771111236] = {"Sucsarian Dagger", "toggle"},
    --[771111237] = {"Sucsarian Spear", "toggle"},
    --[771111238] = {"Lyrian Longsword", "toggle"},
    --[771111239] = {"Lyrian Greatsword", "toggle"},
    --[771111240] = {"Dark Greatsword", "toggle"},
    --[771111241] = {"Shining Blade", "toggle"},
    --[771111242] = {"Poison Claw", "toggle"},
    --[771111243] = {"Iron Club", "toggle"},
    --[771111244] = {"Iron Torch", "toggle"},
    --[771111245] = {"Fire Sword", "toggle"},
    --[771111246] = {"Steel Lance", "toggle"},
    --[771111247] = {"Double Crossbow", "toggle"},
    --[771111248] = {"Death Scythe", "toggle"},
    --[771111249] = {"Elfen Longsword", "toggle"},
    --[771111250] = {"Flail", "toggle"},
    --[771111251] = {"Steel Claw", "toggle"},
    --[771111252] = {"Steel Club", "toggle"},
    --[771111253] = {"Saint Ishii", "toggle"},
    --[771111254] = {"Silver Rapier", "toggle"},
    --[771111255] = {"Heritage Sword", "toggle"},
    --[771111270] = {"Barrier", "toggle"},
    --[771111271] = {"Bestial Communion", "toggle"},
    --[771111272] = {"Blood Drain", "toggle"},
    --[771111273] = {"Blood Strike", "toggle"},
    --[771111274] = {"Blue Flame Arc", "toggle"},
    --[771111275] = {"Coffin", "toggle"},
    --[771111276] = {"Corpse Transformation", "toggle"},
    --[771111277] = {"Earth Strike", "toggle"},
    --[771111278] = {"Earth Thorn", "toggle"},
    --[771111279] = {"Fire Worm", "toggle"},
    --[771111280] = {"Flame Flare", "toggle"},
    --[771111281] = {"Flame Spear", "toggle"},
    --[771111282] = {"Ghost Light", "toggle"},
    --[771111283] = {"Holy Warmth", "toggle"},
    --[771111284] = {"Icarian Flight", "toggle"},
    --[771111285] = {"Ice Spear", "toggle"},
    --[771111286] = {"Ice Tear", "toggle"},
    --[771111287] = {"Ignis Calor", "toggle"},
    --[771111288] = {"Lava Chasm", "toggle"},
    --[771111289] = {"Light Reveal", "toggle"},
    --[771111290] = {"Lightning", "toggle"},
    --[771111291] = {"Lithomancy", "toggle"},
    --[771111292] = {"Moon Beam", "toggle"},
    --[771111293] = {"Poison Mist", "toggle"},
    --[771111294] = {"Rock Bridge", "toggle"},
    --[771111295] = {"Slime Orb", "toggle"},
    --[771111296] = {"Spirit Warp", "toggle"},
    --[771111297] = {"Summon Fairy", "toggle"},
    --[771111298] = {"Summon Ice Sword", "toggle"},
    --[771111299] = {"Wind Dash", "toggle"},
    --[771111300] = {"Wind Slicer", "toggle"},
    --[771111301] = {"Summon Snail", "toggle"},
    --[771111302] = {"Dark Skull", "toggle"},
    --[771111303] = {"Summon Kodama", "toggle"},
    --[771111304] = {"Tornado", "toggle"},
    --[771111305] = {"Quick Stride", "toggle"},
    --[771111306] = {"Jingle Bells", "toggle"},
    --[771111311] = {"Hollow Basin Switch Key", "toggle"},
    --[771111312] = {"Temple of Silence Switch Key", "toggle"},
    --[771111313] = {"Fetid Mire Switch Key", "toggle"},
    --[771111315] = {"Accursed Tomb Switch Keyring", "toggle"},
    --[771111316] = {"Prometheus Fire Switch Keyring", "toggle"},
    --[771111319] = {"Forbidden Archives Shortcut Switch Key", "toggle"},
    --[771111321] = {"Archive Elevator Switch Keyring", "toggle"},
    --[771111323] = {"Sealed Ballroom Switch Key", "toggle"},
    --[771111324] = {"Grotto Fire Switch Keyring", "toggle"},
    --[771111326] = {"Sand Temple Switches Keyring", "toggle"},
    --[771111328] = {{"term_key"}, "toggle"},
    --[771111329] = {"Forlorn Arena Gate Switch Key", "toggle"},
    --[771111330] = {"Temple of Water Switch Key", "toggle"},
    --[771111331] = {"Temple of Earth Switch Key", "toggle"},
    --[771111332] = {"Labyrinth of Ash Switch Key", "toggle"},
    --[771111180] = {"Health ViaI", "consumable"},
    --[771111181] = {"Poison Trap", "consumable"},
    --[771111182] = {"Blindness Trap", "consumable"},
    --[771111183] = {"Slowness Trap", "consumable"},
    --[771111184] = {"Mana Drain Trap", "consumable"},
    --[771111185] = {"XP Drain Trap", "consumable"},
    --[771111186] = {"Curse Trap", "consumable"},
    --[771111187] = {"Bleed Trap", "consumable"},
    --[771111188] = {"Eggnog", "consumable"},
    --[771111189] = {"Coal", "consumable"},
    --[771111361] = {"Broken Steps Door Key", "toggle"},
    --[771111362] = {"Lower Rickety Bridge Door Key", "toggle"},
    --[771111363] = {"Sewers Door Key", "toggle"},
    --[771111364] = {"Treetop Door Key", "toggle"},
    --[771111365] = {"Tomb Secret Door Key", "toggle"},
    --[771111366] = {"Sewers Sea Door Key", "toggle"},
    --[771111367] = {"Accursed Door Key", "toggle"},
    --[771111368] = {"Castle Doors Key", "toggle"},
    --[771111369] = {"Library Exit Door Key", "toggle"},
    --[771111370] = {"Surface Door Key", "toggle"},
    --[771111371] = {"Light Accursed Door Key", "toggle"},
    --[771111372] = {"Queen's Throne Door Key", "toggle"},
    --[771111373] = {"Prison Main Door Key", "toggle"},
    --[771111374] = {"Secondary Lock Key", "toggle"},
    --[771111375] = {"Burning Hot Key", "toggle"},
    --[771111376] = {"Forbidden Door Key", "toggle"},
    --[771111377] = {"Sucsarian Key", "toggle"},
    --[771111378] = {"Dreamer Key", "toggle"},
    --[771111379] = {"Ballroom Side Rooms Keyring", "toggle"},
    --[771111380] = {"Tower of Abyss Keyring", "toggle"},
}

local ELEMENT <const> = {
    blood = "Blood",
    light = "Light",
    fire = "Fire",
    dark = "Dark",
    poison = "Poison",
    ice = "Ice",
    normal = "Normal",
    ignore = "IGNORE",
    melee = "Melee",
}

IMPORTANT_ITEMS = {
    [253] = {name="Blood Drain", element=ELEMENT.blood, ranged=true},
    [254] = {name="Blood Strike", element=ELEMENT.blood, ranged=true},
    [255] = {name="Blue Flame Arc", element=ELEMENT.fire, ranged=false},
    [258] = {name="Earth Strike", element=ELEMENT.normal, ranged=true},
    [259] = {name="Earth Thorn", element=ELEMENT.normal, ranged=true},
    [260] = {name="Fire Worm", element=ELEMENT.fire, ranged=true},
    [261] = {name="Flame Flare", element=ELEMENT.fire, ranged=true},
    [262] = {name="Flame Spear", element=ELEMENT.fire, ranged=true},
    [284] = {name="Dark Skull", element=ELEMENT.dark, ranged=true},
    [266] = {name="Ice Spear", element=ELEMENT.ice, ranged=true},
    [267] = {name="Ice Tear", element=ELEMENT.ice, ranged=false},
    [268] = {name="Ignis Calor", element=ELEMENT.fire, ranged=false},
    [269] = {name="Lava Chasm", element=ELEMENT.fire, ranged=false},
    [270] = {name="Light Reveal", element=ELEMENT.light, ranged=false},
    [271] = {name="Lightning", element=ELEMENT.light, ranged=true},
    [273] = {name="Moon Beam", element=ELEMENT.light, ranged=true},
    [274] = {name="Poison Mist", element=ELEMENT.poison, ranged=false},
    [276] = {name="Slime Orb", element=ELEMENT.poison, ranged=true},
    [278] = {name="Summon Fairy", element=ELEMENT.light, ranged=false},
    [279] = {name="Summon Ice Sword", element=ELEMENT.ice, ranged=false},
    [281] = {name="Wind Slicer", element=ELEMENT.normal, ranged=true},
    [283] = {name="Summon Snail", element=ELEMENT.normal, ranged=false},
    [285] = {name="Summon Kodama", element=ELEMENT.normal, ranged=false},
    [286] = {name="Tornado", element=ELEMENT.normal, ranged=true},
    [282] = {name="Jingle Bells", element=ELEMENT.normal, ranged=false}, -- only relevant on December 25th 
    [265] = {name="Icarian Flight", element=ELEMENT.normal, ranged=false},
    [256] = {name="Coffin", element=ELEMENT.normal, ranged=false},
    [275] = {name="Rock Bridge", element=ELEMENT.normal, ranged=false},

    [159] = {name="Dark Rapier", element=ELEMENT.dark, ranged=false},
    -- [771111304] = {name="Dark Greatsword", element=ELEMENT.dark, ranged=false},
    [151] = {name="Axe of Harming", element=ELEMENT.poison, ranged=false},
    [152] = {name="Battle Axe", element=ELEMENT.normal, ranged=false},
    [153] = {name="Blade of Jusztina", element=ELEMENT.dark, ranged=false},
    [154] = {name="Blade of Ophelia", element=ELEMENT.normal, ranged=false},
    [155] = {name="Blessed Wind", element=ELEMENT.normal, ranged=false},
    [156] = {name="Broken Hilt", element=ELEMENT.normal, ranged=false},
    [157] = {name="Broken Lance", element=ELEMENT.normal, ranged=false},
    [158] = {name="Corrupted Dagger", element=ELEMENT.dark, ranged=false},
    [159] = {name="Dark Rapier", element=ELEMENT.dark, ranged=false},
    [160] = {name="Elfen Bow", element=ELEMENT.normal, ranged=true},
    [161] = {name="Elfen Sword", element=ELEMENT.normal, ranged=false},
    [162] = {name="Fishing Spear", element=ELEMENT.normal, ranged=false},
    [163] = {name="Marauder Black Flail", element=ELEMENT.normal, ranged=false},
    [164] = {name="Halberd", element=ELEMENT.normal, ranged=false},
    [165] = {name="Iron Claw", element=ELEMENT.normal, ranged=false},
    [166] = {name="Moonlight", element=ELEMENT.light, ranged=true},
    [167] = {name="Obsidian Seal", element=ELEMENT.dark, ranged=false},
    [168] = {name="Replica Sword", element=ELEMENT.normal, ranged=false},
    [169] = {name="Ritual Dagger", element=ELEMENT.poison, ranged=false},
    [170] = {name="Serpent Fang", element=ELEMENT.dark, ranged=false},
    [171] = {name="Shadow Blade", element=ELEMENT.dark, ranged=false},
    [172] = {name="Steel Spear", element=ELEMENT.normal, ranged=false},
    [173] = {name="Stone Club", element=ELEMENT.normal, ranged=false},
    [174] = {name="Torch", element=ELEMENT.fire, ranged=false},
    [175] = {name="Twisted Staff", element=ELEMENT.fire, ranged=true},
    [176] = {name="Vampire Hunter Sword", element=ELEMENT.light, ranged=false},
    [177] = {name="Wand of Power", element=ELEMENT.ignore, ranged=true},
    [178] = {name="Wolfram Greatsword", element=ELEMENT.normal, ranged=false},
    [179] = {name="Wooden Shield", element=ELEMENT.normal, ranged=false},
    [180] = {name="Crossbow", element=ELEMENT.normal, ranged=true},
    [181] = {name="Steel Needle", element=ELEMENT.normal, ranged=false},
    [182] = {name="Lucid Blade", element=ELEMENT.light, ranged=true},
    [183] = {name="Hammer of Cruelty", element=ELEMENT.darklight, ranged=false},
    [184] = {name="Jotunn Slayer", element=ELEMENT.darkfire, ranged=false},
    [185] = {name="Rapier", element=ELEMENT.normal, ranged=false},
    [186] = {name="Privateer Musket", element=ELEMENT.normal, ranged=true},
    [187] = {name="Rusted Sword", element=ELEMENT.normal, ranged=false},
    [188] = {name="Ice Sickle", element=ELEMENT.ice, ranged=false},
    [189] = {name="Skeleton Axe", element=ELEMENT.normal, ranged=false},
    [190] = {name="Cursed Blade", element=ELEMENT.normal, ranged=false},
    [191] = {name="Brittle Arming Sword", element=ELEMENT.normal, ranged=false},
    [192] = {name="Obsidian Cursebrand", element=ELEMENT.dark, ranged=false},
    [193] = {name="Obsidian Poisonguard", element=ELEMENT.dark, ranged=false},
    [194] = {name="Golden Kopesh", element=ELEMENT.normal, ranged=false},
    [195] = {name="Golden Sickle", element=ELEMENT.normal, ranged=false},
    [196] = {name="Jailor's Candle", element=ELEMENT.fire, ranged=true},
    [197] = {name="Sucsarian Dagger", element=ELEMENT.dark, ranged=false},
    [198] = {name="Sucsarian Spear", element=ELEMENT.dark, ranged=false},
    [199] = {name="Lyrian Longsword", element=ELEMENT.normal, ranged=false},
    [200] = {name="Lyrian Greatsword", element=ELEMENT.normal, ranged=false},
    [201] = {name="Dark Greatsword", element=ELEMENT.dark, ranged=false},
    [202] = {name="Shining Blade", element=ELEMENT.light, ranged=false},
    [203] = {name="Poison Claw", element=ELEMENT.poison, ranged=false},
    [204] = {name="Iron Club", element=ELEMENT.normal, ranged=false},
    [205] = {name="Iron Torch", element=ELEMENT.fire, ranged=false},
    [206] = {name="Fire Sword", element=ELEMENT.fire, ranged=false},
    [207] = {name="Steel Lance", element=ELEMENT.normal, ranged=false},
    [208] = {name="Double Crossbow", element=ELEMENT.normal, ranged=true},
    [209] = {name="Death Scythe", element=ELEMENT.darklight, ranged=false},
    [210] = {name="Elfen Longsword", element=ELEMENT.normal, ranged=true},
    [] = {name="Flail", element=ELEMENT.normal, ranged=false},
    [211] = {name="Steel Claw", element=ELEMENT.normal, ranged=false},
    [212] = {name="Steel Club", element=ELEMENT.normal, ranged=false},
    [213] = {name="Saint Ishii", element=ELEMENT.darkfire, ranged=false},
    [214] = {name="Silver Rapier", element=ELEMENT.light, ranged=false},
    [215] = {name="Heritage Sword", element=ELEMENT.normal, ranged=false},
}

function UpdateElements(updates)
    for _, item in pairs(IMPORTANT_ITEMS) do
        if updates[item.name] then
            item.element = updates[item.name]
        end
    end
end

local function getElements(input)
    local elements = {}

    local element1, element2 = input:match("^(%a+) and (%a+)$")
    if element1 and element2 then
        table.insert(elements, ELEMENT[element1:lower()])
        table.insert(elements, ELEMENT[element2:lower()])
    else
        local element = input:match("^(%a+)$")
        if element then
            table.insert(elements, ELEMENT[element:lower()])
        end
    end

    function elements:for_each(action)
        for _, element in ipairs(self) do
            action(element)
        end
    end

    function elements:contains(this)
        for _, element in ipairs(self) do
            if element == this then
                return true
            end
        end
        return false
    end

    return elements
end

ElementAction = {
    [ELEMENT.blood] = function()
        Tracker:FindObjectForCode("ele_blood").Active = true
    end,
    [ELEMENT.light] = function()
        Tracker:FindObjectForCode("ele_light").Active = true
    end,
    [ELEMENT.fire] = function()
        Tracker:FindObjectForCode("ele_fire").Active = true
    end,
    [ELEMENT.dark] = function()
        Tracker:FindObjectForCode("ele_dark").Active = true
    end,
    [ELEMENT.poison] = function()
        Tracker:FindObjectForCode("ele_poison").Active = true
    end,
    [ELEMENT.ice] = function()
        -- Tracker:FindObjectForCode("ele_ice").Active = true
    end,
    [ELEMENT.normal] = function()
        -- Tracker:FindObjectForCode("ele_normal").Active = true
    end,
    ["wop"] = function()
        Tracker:FindObjectForCode("wop").Active = true
        Tracker:FindObjectForCode("ele_light").Active = true
        Tracker:FindObjectForCode("ele_fire").Active = true
        Tracker:FindObjectForCode("ele_dark").Active = true
        Tracker:FindObjectForCode("ele_poison").Active = true
    end,
}

function CheckForItem(item_id)
    if IMPORTANT_ITEMS[item_id] then
        print(item_id, IMPORTANT_ITEMS[item_id].name, IMPORTANT_ITEMS[item_id].element, IMPORTANT_ITEMS[item_id].ranged)
        local item = IMPORTANT_ITEMS[item_id]
        if item.name == "Wand of Power" then
            ElementAction["wop"]()
            Tracker:FindObjectForCode("ranged_attacks").Active = true
        elseif item.name == "Icarian Flight" or item.name == "Coffin" then
            Tracker:FindObjectForCode("dsf_checks").Active = true
        elseif item.name == "Rock Bridge" then
            Tracker:FindObjectForCode("dsf_checks").Active = true
        elseif item.name == "Summon Snail" or item.name == "Summon Koadama" then
            Tracker:FindObjectForCode("dsf_checks").Active = true
        elseif item.name == "Blood Strike" or item.name == "Blood Drain" then
            ElementAction[ELEMENT.blood]()
        else
            local elements = getElements(item.element)
            print (item.ranged, elements[1], elements[2])
            elements:for_each(function(element) ElementAction[element]() end)
            if item.ranged == true and elements:contains(ELEMENT.dark) then
                Tracker:FindObjectForCode("ranged_attacks").Active = true
            end
        end
    end
end