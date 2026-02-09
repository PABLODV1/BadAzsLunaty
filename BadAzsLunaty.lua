-- [[ [|cff355E3BB|r]adAzs |cff32CD32Lunaty|r ]]
-- Author:  ThePeregris
-- Version: 1.6 (Final Command Names)
-- Target:  Turtle WoW (1.12 / LUA 5.0)

-- =====================================
-- LUNATY - PALADIN MODULE
-- =====================================

function BadAzs_PallyHasSeal()
    local i = 1
    while true do
        local texture = UnitBuff("player", i)
        if not texture then break end
        if string.find(texture, "Ability_ThunderBolt") then
            return true
        end
        i = i + 1
    end
    return false
end

function BadAzs_PallySeal()
    -- Inicia ataque e usa racial (se existirem no Core)
    if BadAzs_StartAttack then BadAzs_StartAttack() end
    if BadAzs_UseRacial then BadAzs_UseRacial() end
    
    -- Troca set (Protegido: se não houver ItemRack, apenas ignora)
    if BadAzs_EquipSet then BadAzs_EquipSet("SEAL") end

    if not BadAzs_PallyHasSeal() then
        CastSpellByName("Seal of Righteousness")
    end
end

function BadAzs_PallyHeal()
    if BadAzs_UseRacial then BadAzs_UseRacial() end
    if BadAzs_EquipSet then BadAzs_EquipSet("HOLY") end

    -- SHIFT = SELF
    if IsShiftKeyDown() then
        TargetUnit("player")
        CastSpellByName("Holy Light(Rank 1)")
        return
    end

    -- CTRL = FOCUS
    if IsControlKeyDown() and BadAzs_FocusName then
        TargetByName(BadAzs_FocusName, true)
        CastSpellByName("Holy Light(Rank 1)")
        return
    end

    -- TARGET EXISTE
    if UnitExists("target") then
        CastSpellByName("Holy Light(Rank 1)")
        return
    end

    -- FALLBACK
    TargetUnit("player")
    CastSpellByName("Holy Light(Rank 1)")
end

-- =====================================
-- LUNATY - HUNTER MODULE
-- =====================================

function BadAzs_HunterCombat()
    if not UnitExists("target") or not UnitCanAttack("player","target") then return end

    if CheckInteractDistance("target", 3) == 1 then
        SpellStopCasting() 
        if BadAzs_StartAttack then BadAzs_StartAttack() end
        if BadAzs_Ready and BadAzs_Ready("Raptor Strike") then
            CastSpellByName("Raptor Strike")
        end
    else
        if BadAzs_StartAttack then BadAzs_StartAttack() end
        CastSpellByName("Auto Shot")
    end
end

-- =====================================
-- COMMANDS REGISTRATION
-- =====================================

-- PALADIN
SLASH_LUNPALLYSEAL1 = "/lunpallyseal"
SlashCmdList["LUNPALLYSEAL"] = BadAzs_PallySeal

SLASH_LUNPALLYHEAL1 = "/lunpallyheal"
SlashCmdList["LUNPALLYHEAL"] = BadAzs_PallyHeal

-- HUNTER
SLASH_LUNHUNTER1 = "/lunhunter"
SlashCmdList["LUNHUNTER"] = BadAzs_HunterCombat
