-- Initialisierung der benötigten Statistiken ------------------------------------------------------------------------------------------------------------------------------------------

-- Bestimme den aktuellen Multiplayer-Charakter
local MPX = nil
local player_index = stats.get_int("MPPLY_LAST_MP_CHAR")
if player_index == 0 then
    MPX = "MP0_"
else
    MPX = "MP1_"
end

-- Funktion zum Entfernen des Cooldowns und Aufladen der Orbital Cannon
local function reset_orbital_cannon()
    local cooldown = stats.get_int(MPX .. "ORBITAL_CANNON_COOLDOWN")
        stats.set_int(MPX .. "ORBITAL_CANNON_COOLDOWN", 0)
        gui.show_message("Orbi", "Orbital Cannon Cooldown removed :)")
end

-- TransactionManager Definition
local TransactionManager = {}
TransactionManager.__index = TransactionManager

function TransactionManager.new()
    local instance = setmetatable({}, TransactionManager)
    instance.Transactions = {
        {label = "15M (Bend Job Limited)", hash = 0x176D9D54},
        -- Weitere Transaktionen können hier hinzugefügt werden
    }
    return instance
end

function TransactionManager:GetCharacter()
    local _, char = STATS.STAT_GET_INT(joaat("MPPLY_LAST_MP_CHAR"), 0, 1)
    return tonumber(char)
end

function TransactionManager:GetPrice(hash)
    return tonumber(NETSHOPPING.NET_GAMESERVER_GET_PRICE(hash, 0x57DE404E, true))
end

function TransactionManager:TriggerTransaction(item_hash)
    script.execute_as_script("shop_controller", function()
        if NETSHOPPING.NET_GAMESERVER_BASKET_IS_ACTIVE() then
            NETSHOPPING.NET_GAMESERVER_BASKET_END()
        end

        local status, tranny_id = NETSHOPPING.NET_GAMESERVER_BEGIN_SERVICE(-1, 0x57DE404E, item_hash, 0x562592BB, self:GetPrice(item_hash), 2)
        if status then
            NETSHOPPING.NET_GAMESERVER_CHECKOUT_START(tranny_id)
            gui.show_message("Orbi", "15M $ added successfully! :)")
        else
            gui.show_message("Orbi", "Failed to add 15M $. Please try again. :(")
        end
    end)
end

-- Erstellung und Initialisierung des Orbi-Tabs --
gui.show_message("Orbi by LucasAbi69", "Loaded...")

local orbi_tab = gui.get_tab("Orbi")
if not orbi_tab then
    orbi_tab = gui.add_tab("Orbi")
end

-- Hinzufügen von statischem Text im Orbi-Tab
orbi_tab:add_text("Orbi Features")

-- Funktion zum Teleportieren zur Orbital Cannon
function tpfac()
    local Pos = HUD.GET_BLIP_COORDS(HUD.GET_FIRST_BLIP_INFO_ID(590))
    if HUD.DOES_BLIP_EXIST(HUD.GET_FIRST_BLIP_INFO_ID(590)) then
        PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), Pos.x, Pos.y, Pos.z + 4)
    end
end

-- Instanziierung des TransactionManagers
local transaction_manager = TransactionManager.new()

-- Hinzufügen des Buttons zur Entfernung des Orbital Cannon Cooldowns
orbi_tab:add_button("Remove Orbital Cannon Cooldown", function()
    reset_orbital_cannon()
end)

-- Hinzufügen des Buttons zum Hinzufügen von 15 Millionen
orbi_tab:add_button("Add 15M $", function()
    transaction_manager:TriggerTransaction(0x176D9D54) -- 15M (Bend Job Limited)
end)

orbi_tab:add_sameline()

-- Hinzufügen des Buttons zum Teleportieren zur Orbital Cannon
orbi_tab:add_button("Teleport to Orbital Cannon", function()
    local PlayerPos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.PLAYER_PED_ID(), 0.0, 0.52, 0.0)
    local intr = INTERIOR.GET_INTERIOR_AT_COORDS(PlayerPos.x, PlayerPos.y, PlayerPos.z)
    if intr == 269313 then 
        if HUD.DOES_BLIP_EXIST(HUD.GET_FIRST_BLIP_INFO_ID(428)) then
            -- Koordinaten innerhalb des Orbital Cannon Raums
            PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), 336.0, 4834.0, -59.0)
            gui.show_message("Orbi", "Teleported to Orbital Cannon :)")
        end
    else
        gui.show_message("Orbi", "You were not in the facility but I teleported you there. If you are in, just press this button again :)")
        tpfac()
    end
end)