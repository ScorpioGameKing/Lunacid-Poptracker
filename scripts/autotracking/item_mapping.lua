-- use this file to map the AP item ids to your items
-- first value is the code of the target item and the second is the item type (currently only "toggle", "progressive" and "consumable" but feel free to expand for your needs!)
-- here are the SM items as an example: https://github.com/Cyb3RGER/sm_ap_tracker/blob/main/scripts/autotracking/item_mapping.lua
ITEM_MAPPING = {
	-- [1] = {{"healthvial"}, "consumable"},
	-- [2] = {{"manavial"}, "consumable"},
	-- [3] = {{"antidote"}, "consumable"},
	-- [4] = {{"bloodwine"}, "consumable"},
	-- [5] = {{"crystalshard"}, "consumable"},
	-- [6] = {{"oceanelixir"}, "consumable"},
	-- [7] = {{"earthelixir"}, "consumable"},
	-- [8] = {{"poisonthrowingknife"}, "consumable"},
	 [9] = {{"blackbook"}, "progressive"},
	-- [10] = {{"holywater"}, "consumable"},
	-- [11] = {{"fairymoss"}, "consumable"},
	-- [12] = {{"lighturn"}, "consumable"},
	-- [13] = {{"ashes"}, "consumable"},
	-- [14] = {{"clothbandage"}, "toggconsumablele"},
	-- [15] = {{"moonlightvial"}, "consumable"},
	-- [16] = {{"spectralcandle"}, "consumable"},
	-- [17] = {{"darkurn"}, "consumable"},
	-- [18] = {{"wispheart"}, "consumable"},
	-- [19] = {{"staffofosiris"}, "consumable"},
	 [20] = {{"whitevhstape"}, "toggle"},
	 [21] = {{"vhstape"}, "toggle"},
	 [22] = {{"corruptkey"}, "toggle"},
	 [23] = {{"skullofjosiah"}, "toggle"},
	 [24] = {{"progressivevampiricsymbol"}, "progressive"},
	 [27] = {{"crystallantern"}, "toggle"},
	 [28] = {{"terminusprisonkey"}, "toggle"},
	 [29] = {{"enchantedkey"}, "progressive"},
	-- [30] = {{"surveybanner"}, "consumable"},
	-- [31] = {{"ectoplasm"}, "consumable"},
	-- [32] = {{"snowflakeobsidian"}, "consumable"},
	-- [33] = {{"moonpetal"}, "consumable"},
	 [34] = {{"fracturedlife"}, "toggle"},
	 [35] = {{"fractureddeath"}, "toggle"},
	 [36] = {{"brokensword"}, "toggle"},
	 [37] = {{"watertalisman"}, "toggle"},
	 [38] = {{"earthtalisman"}, "toggle"},
	 [39] = {{"strangecoin"}, "consumable"},
	 [40] = {{"oillantern"}, "toggle"},
	-- [41] = {{"bomb"}, "consumable"},
	-- [42] = {{"poisonurn"}, "consumable"},
	-- [43] = {{"silver"}, "consumable"},
	 [44] = {{"skeletonegg"}, "toggle"},
	-- [45] = {{"driedrat"}, "consumable"},
	 [46] = {{"dustycrystalorb"}, "toggle"},
	-- [47] = {{"skeletalrattle"}, "toggle"},
	-- [48] = {{"pinkshrimp"}, "consumable"},
	-- [49] = {{"angelfeather"}, "consumable"},
	-- [50] = {{"fireopal"}, "consumable"},
	-- [51] = {{"lotusseedpod"}, "consumable"},
	-- [52] = {{"onyx"}, "consumable"},
	-- [53] = {{"destroyingangelmushroom"}, "consumable"},
	-- [54] = {{"oceanboneshard"}, "consumable"},
	-- [55] = {{"oceanboneshell"}, "consumable"},
	-- [56] = {{"yellowmorel"}, "consumable"},
	-- [57] = {{"bloodweed"}, "consumable"},
	-- [58] = {{"opal"}, "consumable"},
	-- [59] = {{"obsidian"}, "consumable"},
	-- [60] = {{"ikurr'ilbroot"}, "consumable"},
	-- [61] = {{"fool'sgold"}, "consumable"},
	 [62] = {{"sheryl'sinitialofferingsvoucher"}, "toggle"},
	 [63] = {{"sheryl'sgoldenarmorvoucher"}, "toggle"},
	 [64] = {{"sheryl'sdreamervoucher"}, "toggle"},
	 [65] = {{"patchouli'sdrinkvoucher"}, "toggle"},
	-- [66] = {{"fiddlehead"}, "consumable"},
	-- [67] = {{"firecoral"}, "consumable"},
	-- [68] = {{"bones"}, "consumable"},
	-- [69] = {{"vampiricashes"}, "consumable"},
	-- [70] = {{"throwingknife"}, "consumable"},
	-- [71] = {{"deepknowledge"}, "toggle"},
	-- [72] = {{"textongreatwellresourcefulness"}, "toggle"},
	-- [73] = {{"bestialmastery", "toggle"}},
	-- [101] = {{"healthviai"}, "consumable"},
	-- [102] = {{"poisontrap"}, "toggle"},
	-- [103] = {{"blindnesstrap"}, "toggle"},
	-- [104] = {{"slownesstrap"}, "toggle"},
	-- [105] = {{"manadraintrap"}, "toggle"},
	-- [106] = {{"xpdraintrap"}, "toggle"},
	-- [107] = {{"cursetrap"}, "toggle"},
	-- [108] = {{"bleedtrap"}, "toggle"},
	-- [151] = {{"axeofharming"}, "toggle"},
	-- [152] = {{"battleaxe"}, "toggle"},
	-- [153] = {{"bladeofjusztina"}, "toggle"},
	-- [154] = {{"bladeofophelia"}, "toggle"},
	-- [155] = {{"blessedwind"}, "toggle"},
	 [156] = {{"brokenhilt"}, "toggle"},
	 [157] = {{"brokenlance"}, "toggle"},
	-- [158] = {{"corrupteddagger"}, "toggle"},
	-- [159] = {{"darkrapier"}, "toggle"},
	-- [160] = {{"elfenbow"}, "toggle"},
	 [161] = {{"elfensword"}, "toggle"},
	-- [162] = {{"fishingspear"}, "toggle"},
	-- [163] = {{"marauderblackflail"}, "toggle"},
	-- [164] = {{"halberd"}, "toggle"},
	 [165] = {{"ironclaw"}, "toggle"},
	 [166] = {{"moonlight"}, "toggle"},
	 [167] = {{"obsidianseal"}, "toggle"},
	 [168] = {{"replicasword"}, "toggle"},
	-- [169] = {{"ritualdagger"}, "toggle"},
	-- [170] = {{"serpentfang"}, "toggle"},
	 [171] = {{"shadowblade"}, "toggle"},
	-- [172] = {{"steelspear"}, "toggle"},
	 [173] = {{"stoneclub"}, "toggle"},
	[174] = {{"torch"}, "toggle"},
	[175] = {{"twistedstaff"}, "toggle"},
	-- [176] = {{"vampirehuntersword"}, "toggle"},
	 [177] = {{"wandofpower", "ele_light", "ele_fire", "ele_dark", "ele_poison"}, "toggle"},
	-- [178] = {{"wolframgreatsword"}, "toggle"},
	-- [179] = {{"woodenshield"}, "toggle"},
	 [180] = {{"crossbow"}, "toggle"},
	-- [181] = {{"steelneedle"}, "toggle"},
	 [182] = {{"lucidblade"}, "toggle"},
	-- [183] = {{"hammerofcruelty"}, "toggle"},
	-- [184] = {{"thorn", "toggle"}},
	-- [185] = {{"ghostsword", "toggle"}},
	 [186] = {{"jotunnslayer"}, "toggle"},
	 [187] = {{"rapier"}, "toggle"},
	-- [188] = {{"privateermusket"}, "toggle"},
	 [189] = {{"rustedsword"}, "toggle"},
	-- [190] = {{"icesickle"}, "toggle"},
	-- [191] = {{"skeletonaxe"}, "toggle"},
	-- [192] = {{"cursedblade"}, "toggle"},
	 [193] = {{"brittlearmingsword"}, "toggle"},
	 [194] = {{"obsidiancursebrand"}, "toggle"},
	 [195] = {{"obsidianpoisonguard"}, "toggle"},
	-- [196] = {{"goldenkhopesh"}, "toggle"},
	-- [197] = {{"goldensickle"}, "toggle"},
	 [198] = {{"jailor'scandle"}, "toggle"},
	-- [199] = {{"sucsariandagger"}, "toggle"},
	-- [200] = {{"sucsarianspear"}, "toggle"},
	 [201] = {{"lyrianlongsword"}, "toggle"},
	-- [202] = {{"lyriangreatsword"}, "toggle"},
	-- [203] = {{"darkgreatsword"}, "toggle"},
	 [204] = {{"shiningblade"}, "toggle"},
	-- [205] = {{"poisonclaw"}, "toggle"},
	 [206] = {{"ironclub"}, "toggle"},
	 [207] = {{"irontorch"}, "toggle"},
	 [208] = {{"firesword"}, "toggle"},
	-- [209] = {{"steellance"}, "toggle"},
	-- [210] = {{"doublecrossbow"}, "toggle"},
	 [211] = {{"deathscythe"}, "toggle"},
	-- [212] = {{"elfenlongsword"}, "toggle"},
	 [213] = {{"steelclaw"}, "toggle"},
	-- [214] = {{"steelclub"}, "toggle"},
	-- [215] = {{"saintishii"}, "toggle"},
	-- [216] = {{"silverrapier"}, "toggle"},
	-- [217] = {{"heritagesword"}, "toggle"},
	 [218] = {{"limbo"}, "toggle"},
	 [251] = {{"barrier"}, "toggle"},
	-- [252] = {{"bestialcommunion"}, "toggle"},
	-- [253] = {{"blooddrain"}, "toggle"},
	-- [254] = {{"bloodstrike"}, "toggle"},
	-- [255] = {{"blueflamearc"}, "toggle"},
	 [256] = {{"coffin"}, "toggle"},
	-- [257] = {{"corpsetransformation"}, "toggle"},
	-- [258] = {{"earthstrike"}, "toggle"},
	-- [259] = {{"earththorn"}, "toggle"},
	-- [260] = {{"fireworm"}, "toggle"},
	 [261] = {{"flameflare"}, "toggle"},
	-- [262] = {{"flamespear"}, "toggle"},
	 [263] = {{"ghostlight"}, "toggle"},
	-- [264] = {{"holywarmth"}, "toggle"},
	 [265] = {{"icarianflight"}, "toggle"},
	-- [266] = {{"icespear"}, "toggle"},
	-- [267] = {{"icetear"}, "toggle"},
	 [268] = {{"igniscalor"}, "toggle"},
	-- [269] = {{"lavachasm"}, "toggle"},
	-- [270] = {{"lightreveal"}, "toggle"},
	-- [271] = {{"lightning"}, "toggle"},
	-- [272] = {{"lithomancy"}, "toggle"},
	-- [273] = {{"moonbeam"}, "toggle"},
	-- [274] = {{"poisonmist"}, "toggle"},
	 [275] = {{"rockbridge"}, "toggle"},
	-- [276] = {{"slimeorb"}, "toggle"},
	-- [277] = {{"spiritwarp"}, "toggle"},
	-- [278] = {{"summonfairy"}, "toggle"},
	-- [279] = {{"summonicesword"}, "toggle"},
	 [280] = {{"winddash"}, "toggle"},
	-- [281] = {{"windslicer"}, "toggle"},
	-- [282] = {{"jinglebells"}, "toggle"},
	 [283] = {{"summonsnail"}, "toggle"},
	-- [284] = {{"darkskull"}, "toggle"},
	-- [285] = {{"summonkodama"}, "toggle"},
	-- [286] = {{"tornado"}, "toggle"},
	-- [287] = {{"quickstride"}, "toggle"},
	
	[301] = {{"hollowbasinswitchkey"}, "toggle"},
	[302] = {{"templeofsilenceswitchkey"}, "toggle"},
	[303] = {{"fetidmireswitchkey"}, "toggle"},
	[304] = {{"accursedtombswitchkeyring"}, "toggle"},
	[305] = {{"prometheusfireswitchkeyring"}, "toggle"},
	[306] = {{"forbiddenarchivesshortcutswitchkey"}, "toggle"},
	[307] = {{"forbiddenarchiveselevatorswitchkeyring"}, "toggle"},
	[308] = {{"sealedballroomswitchkey"}, "toggle"},
	[309] = {{"grottofireswitchkeyring"}, "toggle"},
	[310] = {{"sandtempleswitcheskeyring"}, "toggle"},
	[311] = {{"terminusprisonbackalleyswitchkey"}, "toggle"},
	[312] = {{"forlornarenagateswitchkey"}, "toggle"},
	[313] = {{"templeofwaterswitchkey"}, "toggle"},
	[314] = {{"templeofearthswitchkey"}, "toggle"},
	[315] = {{"labyrinthofashswitchkey"}, "toggle"},

	[351] = {{"brokenstepsdoorkey"}, "toggle"},
	[352] = {{"lowerricketybridgedoorkey"}, "toggle"},
	[353] = {{"sewersdoorkey"}, "toggle"},
	[354] = {{"treetopdoorkey"}, "toggle"},
	[355] = {{"tombsecretdoorkey"}, "toggle"},
	[356] = {{"sewersseadoorkey"}, "toggle"},
	[357] = {{"accurseddoorkey"}, "toggle"},
	[358] = {{"castledoorskey"}, "toggle"},
	[359] = {{"libraryexitdoorkey"}, "toggle"},
	[360] = {{"surfacedoorkey"}, "toggle"},
	[361] = {{"lightaccurseddoorkey"}, "toggle"},
	[362] = {{"queen'sthronedoorkey"}, "toggle"},
	[363] = {{"prisonmaindoorkey"}, "toggle"},
	[364] = {{"secondarylockkey"}, "toggle"},
	[365] = {{"burninghotkey"}, "toggle"},
	[366] = {{"forbiddendoorkey"}, "toggle"},
	[367] = {{"sucsariankey"}, "toggle"},
	[368] = {{"dreamerkey"}, "toggle"},
	[369] = {{"ballroomsideroomskeyring"}, "toggle"},
	[370] = {{"towerofabysskeyring"}, "toggle"},
	[371] = {{"ashendoorskeyring"}, "toggle"},

	[401] = {{"soulcandy"}, "consumable"},
	-- [402] = {{"pumpkinpop", "toggle"}},
	-- [403] = {{"cavalrysaber", "toggle"}},
	-- [404] = {{"jinglebells", "toggle"}},
	-- [405] = {{"eggnog", "toggle"}},
	-- [406] = {{"coal", "toggle"}},
}

ELEMENT = {
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
    [183] = {name="Hammer of Cruelty", element=ELEMENT.dark .. " and " .. ELEMENT.light, ranged=false},
    [184] = {name="Thorn", element=ELEMENT.normal, ranged=false},
	[185] = {name="Ghost Sword", element=ELEMENT.light, ranged=false},
	[186] = {name="Jotunn Slayer", element=ELEMENT.fire .. " and " .. ELEMENT.dark, ranged=false},
    [187] = {name="Rapier", element=ELEMENT.normal, ranged=false},
    [188] = {name="Privateer Musket", element=ELEMENT.normal, ranged=true},
    [189] = {name="Rusted Sword", element=ELEMENT.normal, ranged=false},
    [190] = {name="Ice Sickle", element=ELEMENT.ice, ranged=false},
    [191] = {name="Skeleton Axe", element=ELEMENT.normal, ranged=false},
    [192] = {name="Cursed Blade", element=ELEMENT.normal, ranged=false},
    [193] = {name="Brittle Arming Sword", element=ELEMENT.normal, ranged=false},
    [194] = {name="Obsidian Curse Brand", element=ELEMENT.dark, ranged=false},
    [195] = {name="Obsidian Poison Guard", element=ELEMENT.dark, ranged=false},
    [196] = {name="Golden Khopesh", element=ELEMENT.normal, ranged=false},
    [197] = {name="Golden Sickle", element=ELEMENT.normal, ranged=false},
    [198] = {name="Jailor's Candle", element=ELEMENT.fire, ranged=true},
    [199] = {name="Sucsarian Dagger", element=ELEMENT.dark, ranged=false},
    [200] = {name="Sucsarian Spear", element=ELEMENT.dark, ranged=false},
    [201] = {name="Lyrian Longsword", element=ELEMENT.normal, ranged=false},
    [202] = {name="Lyrian Greatsword", element=ELEMENT.normal, ranged=false},
    [203] = {name="Dark Greatsword", element=ELEMENT.dark, ranged=false},
    [204] = {name="Shining Blade", element=ELEMENT.light, ranged=false},
    [205] = {name="Poison Claw", element=ELEMENT.poison, ranged=false},
    [206] = {name="Iron Club", element=ELEMENT.normal, ranged=false},
    [207] = {name="Iron Torch", element=ELEMENT.fire, ranged=false},
    [208] = {name="Fire Sword", element=ELEMENT.fire, ranged=false},
    [209] = {name="Steel Lance", element=ELEMENT.normal, ranged=false},
    [210] = {name="Double Crossbow", element=ELEMENT.normal, ranged=true},
    [211] = {name="Death Scythe", element=ELEMENT.dark .. " and " .. ELEMENT.light, ranged=false},
    [212] = {name="Elfen Longsword", element=ELEMENT.normal, ranged=true},
    [213] = {name="Steel Claw", element=ELEMENT.normal, ranged=false},
    [214] = {name="Steel Club", element=ELEMENT.normal, ranged=false},
    [215] = {name="Saint Ishii", element=ELEMENT.dark .. " and " .. ELEMENT.fire, ranged=false},
    [216] = {name="Silver Rapier", element=ELEMENT.light, ranged=false},
    [217] = {name="Heritage Sword", element=ELEMENT.normal, ranged=false},
    [218] = {name="Limbo", element=ELEMENT.normal, ranged=false},
    [253] = {name="Blood Drain", element=ELEMENT.blood, ranged=true},
    [254] = {name="Blood Strike", element=ELEMENT.blood, ranged=true},
    [255] = {name="Blue Flame Arc", element=ELEMENT.fire, ranged=false},
    [256] = {name="Coffin", element=ELEMENT.normal, ranged=false},
    [258] = {name="Earth Strike", element=ELEMENT.normal, ranged=true},
    [259] = {name="Earth Thorn", element=ELEMENT.normal, ranged=true},
    [260] = {name="Fire Worm", element=ELEMENT.fire, ranged=true},
    [261] = {name="Flame Flare", element=ELEMENT.fire, ranged=true},
    [262] = {name="Flame Spear", element=ELEMENT.fire, ranged=true},
    [265] = {name="Icarian Flight", element=ELEMENT.normal, ranged=false},
    [266] = {name="Ice Spear", element=ELEMENT.ice, ranged=true},
    [267] = {name="Ice Tear", element=ELEMENT.ice, ranged=false},
    [268] = {name="Ignis Calor", element=ELEMENT.fire, ranged=false},
    [269] = {name="Lava Chasm", element=ELEMENT.fire, ranged=false},
    [270] = {name="Light Reveal", element=ELEMENT.light, ranged=false},
    [271] = {name="Lightning", element=ELEMENT.light, ranged=true},
    [273] = {name="Moonbeam", element=ELEMENT.light, ranged=true},
    [274] = {name="Poison Mist", element=ELEMENT.poison, ranged=false},
    [275] = {name="Rock Bridge", element=ELEMENT.normal, ranged=false},
    [276] = {name="Slime Orb", element=ELEMENT.poison, ranged=true},
    [281] = {name="Wind Slicer", element=ELEMENT.normal, ranged=true},
    [283] = {name="Summon Snail", element=ELEMENT.normal, ranged=false},
    [284] = {name="Dark Skull", element=ELEMENT.dark, ranged=true},
    [285] = {name="Summon Kodama", element=ELEMENT.normal, ranged=false},
    [286] = {name="Tornado", element=ELEMENT.normal, ranged=true},
	[403] = {name="Cavalry Saber", element=ELEMENT.dark, ranged=false},
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
    ["wandofpower"] = function()
        Tracker:FindObjectForCode("wandofpower").Active = true
        Tracker:FindObjectForCode("ele_light").Active = true
        Tracker:FindObjectForCode("ele_fire").Active = true
        Tracker:FindObjectForCode("ele_dark").Active = true
        Tracker:FindObjectForCode("ele_poison").Active = true
    end,
}

function CheckForItem(item_id)
    if IMPORTANT_ITEMS[item_id] then
        local item = IMPORTANT_ITEMS[item_id]
        if item.name == "Wand of Power" then
            ElementAction["wandofpower"]()
            Tracker:FindObjectForCode("ranged_attacks").Active = true
        elseif item.name == "Icarian Flight" or item.name == "Coffin" then
        --    Tracker:FindObjectForCode("dsf_checks").Active = true
        -- elseif item.name == "rockbridge" then
        --     Tracker:FindObjectForCode("dsf_checks").Active = true
        -- elseif item.name == "summonsnail" or item.name == "summonkodama" then
        --     Tracker:FindObjectForCode("dsf_checks").Active = true
        elseif item.name == "Blood Strike" or item.name == "Blood Drain" then
            ElementAction[ELEMENT.blood]()
        else
            local elements = getElements(item.element)
            elements:for_each(function(element) ElementAction[element]() end)
            if item.ranged == true and elements:contains(ELEMENT.dark) then
                Tracker:FindObjectForCode("ranged_attacks").Active = true
            end
        end
    end
end