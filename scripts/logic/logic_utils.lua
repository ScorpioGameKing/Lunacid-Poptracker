function WereAnyItemsReceived(items)
    for _, item in pairs(items) do
        local trackedItem = Tracker:FindObjectForCode(item)
        if trackedItem and trackedItem.Active then
            return AccessibilityLevel.Normal
        end
    end
    return AccessibilityLevel.None
end

function WereAllItemsReceived(items)
    for _, item in pairs(items) do
        local trackedItem = Tracker:FindObjectForCode(item)
        if not (trackedItem and trackedItem.Active) then
            return AccessibilityLevel.None
        end
    end
    return AccessibilityLevel.Normal
end

function IsItemStageAtLeastN(item, n)
    local trackedItem = Tracker:FindObjectForCode(item)
    if trackedItem and trackedItem.CurrentStage >= n then
        return AccessibilityLevel.Normal
    end
    return AccessibilityLevel.None
end

function HasConnection(warp)
    if TRAVERSED_ENTRANCES[warp] then
        return AccessibilityLevel.Normal
    end
    return StartingIn(warp)
end

function HasAnyConnection(warps)
    for _, warp in pairs(warps) do
        if HasConnection(warp) == AccessibilityLevel.Normal then
            return AccessibilityLevel.Normal
        end
    end
    return AccessibilityLevel.None
end

function HasElementOtherThan(excludedElements)
    local elements = ELEMENT_CODE
    local remove_lookup = {}

    for _, v in ipairs(excludedElements) do
        remove_lookup[v] = true
    end

    local i = 1
    while i <= #elements do
        if remove_lookup[elements[i]] then
            table.remove(elements, i)
        else
            i = i + 1
        end
    end
    for _, element in pairs(elements) do
        local trackedElement = Tracker:FindObjectForCode(element)
        if trackedElement and trackedElement.Active then
            return AccessibilityLevel.Normal
        end
    end
    return AccessibilityLevel.None
end


function CanEnterCastleStage(stage)
    local result3 = AccessibilityLevel.None
    local result2 = AccessibilityLevel.None
    local resultSingle = AccessibilityLevel.None

    if stage <= 3 then
        result3 = And(CanEnter("Castle Le Fanu"), IsItemStageAtLeastN("progressivevampiricsymbol", 3))
    end
    if stage <= 2 then
        result2 = Or(
            HasConnection("Burning Hot Door (Castle Le Fanu Side)"),
            And(
                HasAnyConnection({"Castle Doors (Castle Le Fanu Side)", "Jump from Castle Le Fanu Walls"}),
                IsItemStageAtLeastN("progressivevampiricsymbol", 2)
            ),
            And(
                HasConnection("Light Accursed Door (Castle Le Fanu Side)"), HasElement("ele_dark"),
                HasAnyConnection({"Castle Doors (Castle Le Fanu Side)", "Jump from Castle Le Fanu Walls"})
            )
        )
    end
    if stage == 1 then
        resultSingle = And(
            HasAnyConnection({"Castle Doors (Castle Le Fanu Side)", "Jump from Castle Le Fanu Walls"}),
            IsItemStageAtLeastN("progressivevampiricsymbol", 1)
        )
    end
    if stage == 0.5 then
        resultSingle = And(
            HasAnyConnection({"Castle Doors (Castle Le Fanu Side)", "Jump from Castle Le Fanu Walls"}),
            CanEnterCattleCells()
        )
    end

    if stage == 0 then
        resultSingle = HasAnyConnection({"Castle Doors (Castle Le Fanu Side)", "Jump from Castle Le Fanu Walls", "Castle Le Fanu"})
    end
    return Or(result3, result2, resultSingle)
end

function CanEnterCattleCells()
    if Tracker:FindObjectForCode("starting_class").AcquiredCount == 3 then
        return AccessibilityLevel.Normal
    end
    return HasElement("ele_blood")
end

function HasLightSource()
    if Tracker:FindObjectForCode("lightsource").Active then
        return AccessibilityLevel.Normal
    end
    return AccessibilityLevel.None
end

function CanEnterTemple()
    return And(HandleGate('basin'), HasLightSource())
end

function EtnasPupil()
    if Tracker:FindObjectForCode('etna_on').Active then
        return AccessibilityLevel.Normal
    end
    return AccessibilityLevel.None 
end

function NotEtnasPupil()
    if EtnasPupil() == AccessibilityLevel.Normal then
        return AccessibilityLevel.None
    end
    return AccessibilityLevel.Normal
end


function HandleGate(gate)
    if Tracker:FindObjectForCode('livinggate_' .. gate).Active then
        return AccessibilityLevel.Normal
    else
        local stage = Tracker:FindObjectForCode("enchantedkey").CurrentStage
        if Tracker:FindObjectForCode('livinggate_' .. gate).Active then
            stage = stage - 1
        end

        if stage > 0 then
            if stage > 1 then
                return AccessibilityLevel.Normal
            end
            if Tracker:FindObjectForCode('livinggate_forest').Active or Tracker:FindObjectForCode('livinggate_basin').Active then
                return AccessibilityLevel.None
            end
            return AccessibilityLevel.SequenceBreak
        end
    end

    return AccessibilityLevel.None
end

function CheckGate(gate)
    if Tracker:FindObjectForCode('livinggate_' .. gate).Active then
        return AccessibilityLevel.Inspect
    else
        return AccessibilityLevel.Inspect
    end
end

function HasDustyOrb()
    if Tracker:FindObjectForCode('secret_doors').Active and not Tracker:FindObjectForCode("dustycrystalorb").Active then
        return AccessibilityLevel.None
    end
    return AccessibilityLevel.Normal
end

function HasSwitch(item)
    local trackedItem = Tracker:FindObjectForCode(item)
    if not Tracker:FindObjectForCode('switch_locks').Active or (trackedItem and trackedItem.Active) then
        return AccessibilityLevel.Normal
    end
    return AccessibilityLevel.None
end

function HasDoorKey(item)
    local trackedItem = Tracker:FindObjectForCode(item)
    if not Tracker:FindObjectForCode('door_lock_toggle').Active or (trackedItem and trackedItem.Active) then
        return AccessibilityLevel.Normal
    end
    return AccessibilityLevel.None
end

function WasItemReceived(item)
    local trackedItem = Tracker:FindObjectForCode(item)
    if trackedItem and trackedItem.Active then
        return AccessibilityLevel.Normal
    end
    return AccessibilityLevel.None
end

function HasElement(element)
    return WasItemReceived(element)
    --local trackedItem = Tracker:FindObjectForCode(element)
    --if trackedItem and trackedItem.Active then
    --    return AccessibilityLevel.Normal
    --end
    --return AccessibilityLevel.None
end

function EnteredScene(scene)
    for _, link in pairs(TRAVERSED_ENTRANCES) do
        if link == scene then
            return AccessibilityLevel.Normal
        end
    end
    return AccessibilityLevel.None
end

function CanSolveClocktower()
    return Or(
        And(CanJumpHeight("High"), Or(HasElement("ele_dark"), HasElement("ele_poison"))),
        And(HasElement("ele_dark"), HasElement("ele_poison"))
    )
end

function StartingIn(map)
    if map == STARTING_AREA[Tracker:FindObjectForCode('starting_area').AcquiredCount + 1] then
        return AccessibilityLevel.Normal
    end

    return AccessibilityLevel.None
end

function CanJumpHeight(height)
    if height == "High" then
        return WereAnyItemsReceived({"icarianflight", "rockbridge", "barrier"})
    elseif height == "Medium" then
        return WereAnyItemsReceived({"icarianflight", "rockbridge", "barrier", "coffin", "summonsnail"})
    end
    return AccessibilityLevel.None
end

function CanKillJotunn()
    return And(HasConnection("Secondary Door (Forlorn Arena Side)"), WereAllItemsReceived({"watertalisman", "earthtalisman", "lucidblade"}))
end

function And(...)
    local lowestAccessLvl = AccessibilityLevel.Normal
    for _, accessLvl in pairs({...}) do
        if accessLvl < lowestAccessLvl then
            lowestAccessLvl = accessLvl
        end
    end
    return lowestAccessLvl
end

function Or(...)
    local highestAccessLvl = AccessibilityLevel.None
    for _, accessLvl in pairs({...}) do
        if accessLvl > highestAccessLvl then
            highestAccessLvl = accessLvl
        end
    end
    return highestAccessLvl
end

function HasMoreThenNConsumables(item, n)
    local count = Tracker:ProviderCountForCode(item)
    local val = (count > tonumber(n))
    if ENABLE_DEBUG_LOG then
        print(string.format("called HasMoreThenNConsumables: count: %s, n: %s, val: %s", count, n, val))
    end
    if val then
        return AccessibilityLevel.Normal -- 1 => access is in logic
    end
    return AccessibilityLevel.None -- 0 => no access
end

function secrets_or_off()
    --> Checking Secret Door Logic
    local secret_toggle = Tracker:ProviderCountForCode('secret_doors')
    local doc_obtained = Tracker:ProviderCountForCode('dc_orb')
    if secret_toggle * doc_obtained == 1 then
        return 1 --> You have both secret doors on and the Dusty Crystal Orb
    elseif secret_toggle == 1 and doc_obtained == 0 then
        return 0 --> You have both secret doors on and don't have the Dusty Crystal Orb
    else
        return 1 --> Secret Doors must be off so return true
    end
end

function switches_or_off(key)
    --> Checking if Switch Locks Are Enabled
    local switch_toggle = Tracker:ProviderCountForCode('switch_locks')
    local key_needed = Tracker:ProviderCountForCode(key)
    if switch_toggle * key_needed == 1 then
        return 1 --> You have both switches on and the Correct Key
    elseif switch_toggle == 1 and key_needed == 0 then
        return 0 --> You have both switches on and don't have the correct key
    else
        return 1 --> Switches must be off so return true
    end
end

function entrances_or_off(access)
    --> Checking if Switch Locks Are Enabled
    local switch_toggle = Tracker:ProviderCountForCode('entrance_toggle')
    local access_needed = Tracker:ProviderCountForCode(access)
    if switch_toggle * access_needed == 1 then
        return 1 --> You have both switches on and the Correct Key
    elseif switch_toggle == 1 and access_needed == 0 then
        return 0 --> You have both switches on and don't have the correct key
    else
        return 1 --> Switches must be off so return true
    end
end

function door_locks_or_off(key)
    --> Checking if Entrance Rando is Enabled
    local entrance_toggle = Tracker:ProviderCountForCode('door_lock_toggle')
    local key_needed
    if key == true then
        key_needed = 1
    else 
        key_needed = Tracker:ProviderCountForCode(key)
    end
    if entrance_toggle * key_needed == 1 then
        return 1 --> You have entrance rando on and have access
    elseif entrance_toggle == 1 and key_needed == 0 then
        return 0 --> You have entrance rando and don't have access
    else
        return 1 --> Entrance Rando must be off so return true
    end
end