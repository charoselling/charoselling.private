--Required Stats----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

MPX = PI
PI = stats.get_int("MPPLY_LAST_MP_CHAR")
if PI == 0 then
	MPX = "MP0_"
else
	MPX = "MP1_"
end

SPX = PI
PI = ENTITY.GET_ENTITY_MODEL(PLAYER.PLAYER_PED_ID())
if PI == joaat("Player_Zero") then
	SPX = "SP0_"
elseif PI == joaat("Player_One") then
	SPX = "SP1_"
elseif PI == joaat("Player_Three") then
	SPX = "SP2_"
end

is_player_male = (ENTITY.GET_ENTITY_MODEL(PLAYER.PLAYER_PED_ID()) == joaat("mp_m_freemode_01"))

--Required Scripts--

FMC = "fm_mission_controller"
FMC2020 = "fm_mission_controller_2020"
HIP = "heist_island_planning"

--Globals & Locals & Variables--

FMg = 262145 -- free mode global ("CASH_MULTIPLIER") //correct
ACg1 = 1928958 + 1 + 1 -- global apartment player 1 cut global
ACg2 = 1928958 + 1 + 2 -- global apartment player 2 cut global
ACg3 = 1928958 + 1 + 3 -- global apartment player 3 cut global
ACg4 = 1928958 + 1 + 4 -- global apartment player 4 cut global
ACg5 = 1930201 + 3008 + 1 -- local apartment player 1 cut global

AUAJg1 = FMg + 9101 -- apartment unlock all jobs global 1 ("ROOT_ID_HASH_THE_FLECCA_JOB")
AUAJg2 = FMg + 9106 -- apartment unlock all jobs global 2 ("ROOT_ID_HASH_THE_PRISON_BREAK")
AUAJg3 = FMg + 9113 -- apartment unlock all jobs global 3 ("ROOT_ID_HASH_THE_HUMANE_LABS_RAID")
AUAJg4 = FMg + 9119 -- apartment unlock all jobs global 4 ("ROOT_ID_HASH_SERIES_A_FUNDING")
AUAJg5 = FMg + 9125 -- apartment unlock all jobs global 5 ("ROOT_ID_HASH_THE_PACIFIC_STANDARD_JOB")
AIFl3 = 19746 -- apartment instant finish local 1
AIFl4 = 28365 + 1 -- apartment instant finish local 2
AIFl5 = 31621 + 69 -- apartment instant finish local 3

DCRBl = 185 -- diamond casino reload board local
DCCg1 = 1964849 + 1497 + 736 + 92 + 1 -- diamond casino player 1 cut global
DCCg2 = 1964849 + 1497 + 736 + 92 + 2 -- diamond casino player 2 cut global
DCCg3 = 1964849 + 1497 + 736 + 92 + 3 -- diamond casino player 3 cut global
DCCg4 = 1964849 + 1497 + 736 + 92 + 4 -- diamond casino player 4 cut global
DCCl = FMg + 28313 -- Casino_Cut_Lester_offset
DCCh = FMg + 28349 - 1 --Casino_Cut_Hacker_offset
DCCd = FMg + 28344 - 1 --Casino_Cut_Driver_offset
DCCgun = FMg + 28339 - 1 --Casino_Cut_Gunman_offset
DCFHl = 53019 -- diamond casino fingerprint hack local
DCKHl = 54085 -- diamond casino keypad hack local
DCDVDl1 = 10109 + 7 -- diamond casino drill vault door local 1
DCDVDl2 = 10109 + 37 -- diamond casino drill vault door local 2

GCg = 2685249 + 6615 -- global cut global (value2 = value2 * (num / 100f);)
CPRSl = 1546 -- cayo perico reload screen local //correct
CPCg1 = 1971648 + 831 + 56 + 1 -- cayo perico player 1 cut global
CPCg2 = 1971648 + 831 + 56 + 2 -- cayo perico player 2 cut global
CPCg3 = 1971648 + 831 + 56 + 3 -- cayo perico player 3 cut global
CPCg4 = 1971648 + 831 + 56 + 4 -- cayo perico player 4 cut global
CPBg = FMg + 29211 -- cayo perico bag global (1859395035)
CPFHl = 24880 -- cayo perico fingerprint hack local
CPPCCl = 30939 + 3 -- cayo perico plasma cutter cut local ("DLC_H4_anims_glass_cutter_Sounds")
CPSTCl = 29700 -- cayo perico drainage pipe cut local

DDSHl = 1271 + 135 -- doomsday doomsday scenario hack local
DCg1 = 1960755 + 812 + 50 + 1 -- doomsday player 1 cut global
DCg2 = 1960755 + 812 + 50 + 2 -- doomsday player 2 cut global
DCg3 = 1960755 + 812 + 50 + 3 -- doomsday player 3 cut global
DCg4 = 1960755 + 812 + 50 + 4 -- doomsday player 4 cut global

SNOW = 262145 + 4413

--BV = Ballastic Value----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

BV = 262145 + 20024

--CCBL = Casino Chips Buy Limit-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CCBL0 = 262145 + 26535
CCBL1 = 262145 + 26536

--BAS=Bag Size------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

BAS1 = 262145 + 29211

--PSV=Panther Statue-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

PSV = 262145 + 29463

--PDIAMOND=Pink Diamond---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

PDIAMOND = 262145 + 29461

--BB=Bearer Bonds---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

BB = 262145 + 29460

--RN=Ruby Necklace--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

RN = 262145 + 29459

--TEQUILA=Tequila---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

TEQUILA = 262145 + 29458

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
gui.show_message("Zephyr", "Zephyr Loaded...")
L7NEG = gui.get_tab("Zephyr")

L7NEG:add_text("Zephyr Menu V1")
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Self = L7NEG:add_tab("Self Menu")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Self:add_button("Remove Orbital Cannon Cooldown", function()
	stats.set_int(MPX .. "ORBITAL_CANNON_COOLDOWN", 0)
end)

Self:add_button("Remove Transaction Error", function()
	for i = 4537456, 4537458 do
		globals.set_int(i, 0)
	end
end)

Self:add_button("Refil Nightclub Popularity", function()
	stats.set_int(MPX .. "CLUB_POPULARITY", 1000)
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Self:add_button("Refill Inventory/Armour", function()
	stats.set_int(MPX .. "NO_BOUGHT_YUM_SNACKS", 30)
	stats.set_int(MPX .. "NO_BOUGHT_HEALTH_SNACKS", 15)
	stats.set_int(MPX .. "NO_BOUGHT_EPIC_SNACKS", 5)
	stats.set_int(MPX .. "NUMBER_OF_CHAMP_BOUGHT", 5)
	stats.set_int(MPX .. "NUMBER_OF_ORANGE_BOUGHT", 11)
	stats.set_int(MPX .. "NUMBER_OF_BOURGE_BOUGHT", 10)
	stats.set_int(MPX .. "NUMBER_OF_SPRUNK_BOUGHT", 10)
	stats.set_int(MPX .. "CIGARETTES_BOUGHT", 20)
	stats.set_int(MPX .. "MP_CHAR_ARMOUR_1_COUNT", 10)
	stats.set_int(MPX .. "MP_CHAR_ARMOUR_2_COUNT", 10)
	stats.set_int(MPX .. "MP_CHAR_ARMOUR_3_COUNT", 10)
	stats.set_int(MPX .. "MP_CHAR_ARMOUR_4_COUNT", 10)
	stats.set_int(MPX .. "MP_CHAR_ARMOUR_5_COUNT", 10)
	stats.set_int(MPX .. "BREATHING_APPAR_BOUGHT", 20)
end)

Self:add_button("Refill Inv/Armour x1000", function()
	stats.set_int(MPX .. "NO_BOUGHT_YUM_SNACKS", 1000)
	stats.set_int(MPX .. "NO_BOUGHT_HEALTH_SNACKS", 1000)
	stats.set_int(MPX .. "NO_BOUGHT_EPIC_SNACKS", 1000)
	stats.set_int(MPX .. "NUMBER_OF_CHAMP_BOUGHT", 1000)
	stats.set_int(MPX .. "NUMBER_OF_ORANGE_BOUGHT", 1000)
	stats.set_int(MPX .. "NUMBER_OF_BOURGE_BOUGHT", 1000)
	stats.set_int(MPX .. "NUMBER_OF_SPRUNK_BOUGHT", 1000)
	stats.set_int(MPX .. "CIGARETTES_BOUGHT", 1000)
	stats.set_int(MPX .. "MP_CHAR_ARMOUR_1_COUNT", 1000)
	stats.set_int(MPX .. "MP_CHAR_ARMOUR_2_COUNT", 1000)
	stats.set_int(MPX .. "MP_CHAR_ARMOUR_3_COUNT", 1000)
	stats.set_int(MPX .. "MP_CHAR_ARMOUR_4_COUNT", 1000)
	stats.set_int(MPX .. "MP_CHAR_ARMOUR_5_COUNT", 1000)
	stats.set_int(MPX .. "BREATHING_APPAR_BOUGHT", 1000)
end)

StoryCharacters = L7NEG:add_tab("Story Mode")

CurrentSPMoneyValue = stats.get_int(SPX .. "TOTAL_CASH")
StoryCharacters:add_imgui(function()
	CurrentSPMoneyValue, used = ImGui.SliderInt("Current Character Cash", CurrentSPMoneyValue, 1, 2147483646)
	if used then
		stats.set_int(SPX .. "TOTAL_CASH", CurrentSPMoneyValue)
	end
end)

StoryCharacters:add_separator()

StoryCharacters:add_button("Add 1 Mil Cash $", function()
	stats.set_int(SPX .. "TOTAL_CASH", stats.get_int(SPX .. "TOTAL_CASH") + 1000000)
end)

StoryCharacters:add_button("Add 10 Mil Cash $", function()
	stats.set_int(SPX .. "TOTAL_CASH", stats.get_int(SPX .. "TOTAL_CASH") + 10000000)
end)

StoryCharacters:add_button("Add 100 Mil Cash $", function()
	stats.set_int(SPX .. "TOTAL_CASH", stats.get_int(SPX .. "TOTAL_CASH") + 100000000)
end)

StoryCharacters:add_button("Add 1 Bil Cash $", function()
	stats.set_int(SPX .. "TOTAL_CASH", stats.get_int(SPX .. "TOTAL_CASH") + 1000000000)
end)

StoryCharacters:add_separator()

StoryCharacters:add_button("Max Current Character Skills", function()
	stats.set_int(SPX .. "SPECIAL_ABILITY_UNLOCKED", 100)
	stats.set_float(SPX .. "DIST_RUNNING", 175 * 100)
	stats.set_int(SPX .. "TIME_UNDERWATER", 30 * 60 * 1000 * 100)
	stats.set_int(SPX .. "UNARMED_HITS", 20 * 100)
	stats.set_int(SPX .. "NUMBER_NEAR_MISS", 50 * 100)
	stats.set_int(SPX .. "PLANE_LANDINGS", 10 * 100)
	stats.set_int(SPX .. "KILLS_STEALTH", 2 * 100)
	stats.set_int(SPX .. "HITS_MISSION", 40 * 100)
	stats.set_int(SPX .. "HITS_PEDS_VEHICLES", 80 * 100)
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

TunMenu = L7NEG:add_tab("Tunables Menu")

rpmvalue = globals.get_float(262145 + 1)
TunMenu:add_imgui(function()
	rpmvalue, used = ImGui.DragInt("RP", rpmvalue, 1, 100000)
	if used then
		globals.set_float(262145 + 1, rpmvalue)
	end
end)

apmvalue = globals.get_float(262145 + 25490)
TunMenu:add_imgui(function()
	apmvalue, used = ImGui.DragInt("AP", apmvalue, 1, 100000)
	if used then
		globals.set_float(262145 + 25490, apmvalue)
	end
end)

srmvalue = globals.get_float(262145 + 30980)
TunMenu:add_imgui(function()
	srmvalue, used = ImGui.DragInt("Street Races", srmvalue, 1, 100000)
	if used then
		globals.set_float(262145 + 30980, srmvalue)
	end
end)

pmvalue = globals.get_float(262145 + 30981)
TunMenu:add_imgui(function()
	pmvalue, used = ImGui.DragInt("Pursuits", pmvalue, 1, 100000)
	if used then
		globals.set_float(262145 + 30981, pmvalue)
	end
end)

f2fmvalue = globals.get_float(262145 + 30982)
TunMenu:add_imgui(function()
	f2fmvalue, used = ImGui.DragInt("Face2Face", f2fmvalue, 1, 100000)
	if used then
		globals.set_float(262145 + 30982, f2fmvalue)
	end
end)

lscmmvalue = globals.get_float(262145 + 30983)
TunMenu:add_imgui(function()
	lscmmvalue, used = ImGui.DragInt("LS Car Meet", lscmmvalue, 1, 100000)
	if used then
		globals.set_float(262145 + 30983, lscmmvalue)
	end
end)

lscmotmvalue = globals.get_float(262145 + 30984)
TunMenu:add_imgui(function()
	lscmotmvalue, used = ImGui.DragInt("LS Car Meet on track", lscmotmvalue, 1, 100000)
	if used then
		globals.set_float(262145 + 30984, lscmotmvalue)
	end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

OnlineServicesMenu = L7NEG:add_tab("Online Services Menu")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CasinoServicesMenu = OnlineServicesMenu:add_tab("Casino Services Menu")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

slots_random_results_table = 1348

prize_wheel_win_state = 280
prize_wheel_prize = 14
prize_wheel_prize_state = 45

globals_tuneable = 262145

fm_mission_controller_cart_grab = 10255
fm_mission_controller_cart_grab_speed = 14
fm_mission_controller_cart_autograb = false

CasinoServicesMenu:add_separator()
CasinoServicesMenu:add_text("Casino Chips")
chipsVal = 1800
CasinoServicesMenu:add_imgui(function()
	chipsVal, used = ImGui.SliderInt("Casino Chips Buy Limit", chipsVal, 1800, 2147483647)
	if used then
		globals.set_int(CCBL0, chipsVal)
		globals.set_int(CCBL1, chipsVal)
	end
end)

bypass_casino_bans = CasinoServicesMenu:add_checkbox("Bypass Casino Cooldown")
CasinoServicesMenu:add_text("Winning too much too quickly might get you banned, enable this at your own risk.")
CasinoServicesMenu:add_separator()

CasinoServicesMenu:add_separator()
CasinoServicesMenu:add_text("Slots")
rig_slot_machine = CasinoServicesMenu:add_checkbox("Rig Slot Machines")

CasinoServicesMenu:add_separator()
CasinoServicesMenu:add_text("Lucky Wheel")

CasinoServicesMenu:add_button("Give Podium Vehicle", function()
	script.run_in_fiber(function(script)
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_lucky_wheel")) ~= 0 then
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize, 18)
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize_state, 11)
		end
	end)
end)
CasinoServicesMenu:add_sameline()
CasinoServicesMenu:add_button("Give Mystery Prize", function()
	script.run_in_fiber(function(script)
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_lucky_wheel")) ~= 0 then
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize, 11)
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize_state, 11)
		end
	end)
end)
CasinoServicesMenu:add_sameline()
CasinoServicesMenu:add_button("Give $50,000", function()
	script.run_in_fiber(function(script)
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_lucky_wheel")) ~= 0 then
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize, 19)
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize_state, 11)
		end
	end)
end)
CasinoServicesMenu:add_sameline()
CasinoServicesMenu:add_button("Give 25,000 Chips", function()
	script.run_in_fiber(function(script)
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_lucky_wheel")) ~= 0 then
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize, 15)
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize_state, 11)
		end
	end)
end)
CasinoServicesMenu:add_button("Give 15,000RP", function()
	script.run_in_fiber(function(script)
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_lucky_wheel")) ~= 0 then
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize, 17)
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize_state, 11)
		end
	end)
end)
CasinoServicesMenu:add_sameline()
CasinoServicesMenu:add_button("Give Discount", function()
	script.run_in_fiber(function(script)
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_lucky_wheel")) ~= 0 then
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize, 4)
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize_state, 11)
		end
	end)
end)
CasinoServicesMenu:add_sameline()
CasinoServicesMenu:add_button("Give Clothing", function()
	script.run_in_fiber(function(script)
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_lucky_wheel")) ~= 0 then
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize, 8)
			locals.set_int("casino_lucky_wheel", prize_wheel_win_state + prize_wheel_prize_state, 11)
		end
	end)
end)

	if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_slots")) ~= 0 then
		local needs_run = false
		if rig_slot_machine:is_enabled() then
			for slots_iter = 3, 196, 1 do
				if slots_iter ~= 67 and slots_iter ~= 132 then
					if locals.get_int("casino_slots", slots_random_results_table + slots_iter) ~= 6 then
						needs_run = true
					end
				end
			end
		else
			local sum = 0
			for slots_iter = 3, 196, 1 do
				if slots_iter ~= 67 and slots_iter ~= 132 then
					sum = sum + locals.get_int("casino_slots", slots_random_results_table + slots_iter)
				end
			end
			needs_run = sum == 1152
		end
		if needs_run then
			for slots_iter = 3, 196, 1 do
				if slots_iter ~= 67 and slots_iter ~= 132 then
					local slot_result = 6
					if rig_slot_machine:is_enabled() == false then
						math.randomseed(os.time() + slots_iter)
						slot_result = math.random(0, 7)
					end
					locals.set_int("casino_slots", slots_random_results_table + slots_iter, slot_result)
				end
			end
		end
	end
	if bypass_casino_bans:is_enabled() then
		stats.set_int("MPPLY_CASINO_CHIPS_WON_GD", 0)
	end
	if gui.is_open() and CasinoServicesMenu:is_selected() then
		casino_heist_approach = stats.get_int(MPX .. "H3OPT_APPROACH")
		casino_heist_target = stats.get_int(MPX .. "H3OPT_TARGET")
		casino_heist_last_approach = stats.get_int(MPX .. "H3_LAST_APPROACH")
		casino_heist_hard = stats.get_int(MPX .. "H3_HARD_APPROACH")
		casino_heist_gunman = stats.get_int(MPX .. "H3OPT_CREWWEAP")
		casino_heist_driver = stats.get_int(MPX .. "H3OPT_CREWDRIVER")
		casino_heist_hacker = stats.get_int(MPX .. "H3OPT_CREWHACKER")
		casino_heist_weapons = stats.get_int(MPX .. "H3OPT_WEAPS")
		casino_heist_cars = stats.get_int(MPX .. "H3OPT_VEHS")
		casino_heist_masks = stats.get_int(MPX .. "H3OPT_MASKS")
	end
	if HUD.IS_PAUSE_MENU_ACTIVE() then
		PAD.DISABLE_CONTROL_ACTION(0, 348, true)
		PAD.DISABLE_CONTROL_ACTION(0, 204, true)
	end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

DLCUnlockerMenu = L7NEG:add_tab("1.69 Unlocker Menu")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

DLCUnlockerMenu:add_button("Unlock baseball n knife Skins In GunVan", function()
	globals.set_int(262145 + 33309, 0)
	globals.set_int(262145 + 33273 + 9, -1716189206) ----- Knife
	globals.set_int(262145 + 33273 + 10, -1786099057) ----- BaseBall Bat
end)

DLCUnlockerMenu:add_button("Unlock Police Cars Price Trade", function()
	stats.set_int(MPX .. "MOST_TIME_ON_3_PLUS_STARS", 300000)
	stats.set_int(MPX .. "SALV23_SCOPE_BS", -1)
	stats.set_int(MPX .. "SALV23_INST_PROG", -1)
	stats.set_int(MPX .. "SALV23_GEN_BS", -1)
end)

DLCUnlockerMenu:add_button("Enable Xmass 2023 Gifts", function()
	globals.set_int(262145 + 35157, 1) --XMASGIFTS2023
	globals.set_int(262145 + 35158, 1) --NEWYEARSGIFTS2023
end)

DLCUnlockerMenu:add_button("Unlock Missed Guns In The GunVan", function()
	globals.set_int(262145 + 33273 + 5, -22923932) ----- RailGun XM22_GUN_VAN_SLOT_WEAPON_TYPE_5
	globals.set_int(262145 + 33273 + 6, -1238556825) ----- WidoMaker
	globals.set_int(262145 + 33273 + 7, -1355376991) ----- RayPistol
	globals.set_int(262145 + 33273 + 8, 1198256469) ----- HellBringer
	globals.set_int(262145 + 33273 + 9, 350597077) ----- TecPistol
	globals.set_int(262145 + 33273 + 10, 2138347493) ----- FireWork Launcher
end)

DLCUnlockerMenu:add_button("Unlock Taxi Livery for Eudora", function()
	PlayerIndex = globals.get_int(1574925)
	if PlayerIndex == 0 then
		MPX = "MP0_"
	else
		MPX = "MP1_"
	end
	stats.set_masked_int(MPX .. "DLC22022PSTAT_INT536", 10, 16, 8)
end)

DLCUnlockerMenu:add_button("Unlock Taxi Livery for Broadway", function()
	stats.set_int(MPX .. "AWD_TAXIDRIVER", 50)
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

EventsMenu = L7NEG:add_tab("Events Menu")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SnowToggleMenu = EventsMenu:add_tab("Snow Toggle Menu")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SnowToggleMenu:add_button("Toggle Snow On", function()
	globals.set_int(SNOW, 1)
end)

SnowToggleMenu:add_button("Toggle Snow Off", function()
	globals.set_int(SNOW, 0)
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

---Full Account Unlocker Tool---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

FAUT = L7NEG:add_tab("Full Account Unlock Menu")

--Character's Stats-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CSU = FAUT:add_tab("Character's Stats")

CSU:add_button("Max Character Skills", function()
	stats.set_int(MPX .. "SCRIPT_INCREASE_DRIV", 100)
	stats.set_int(MPX .. "SCRIPT_INCREASE_FLY", 100)
	stats.set_int(MPX .. "SCRIPT_INCREASE_LUNG", 100)
	stats.set_int(MPX .. "SCRIPT_INCREASE_SHO", 100)
	stats.set_int(MPX .. "SCRIPT_INCREASE_STAM", 100)
	stats.set_int(MPX .. "SCRIPT_INCREASE_STL", 100)
	stats.set_int(MPX .. "SCRIPT_INCREASE_STRN", 100)
end)

AcMenu = CSU:add_tab("Achievements")

Acv0 = false
AG = 4543384 + 1

AcMMenu = AcMenu:add_tab("Unlock One By One Menu")

AcMMenu:add_button("Welcome to Los Santos", function()
	globals.set_int(AG, 1)
end)
AcMMenu:add_button("A Friendship Resurrected", function()
	globals.set_int(AG, 2)
end)
AcMMenu:add_button("A Fair Day's Pay", function()
	globals.set_int(AG, 3)
end)
AcMMenu:add_button("The Moment of Truth", function()
	globals.set_int(AG, 4)
end)
AcMMenu:add_button("To Live or Die in Los Santos", function()
	globals.set_int(AG, 5)
end)
AcMMenu:add_button("Diamond Hard", function()
	globals.set_int(AG, 6)
end)
AcMMenu:add_button("Subversive", function()
	globals.set_int(AG, 7)
end)
AcMMenu:add_button("Blitzed", function()
	globals.set_int(AG, 8)
end)
AcMMenu:add_button("Small Town, Big Job", function()
	globals.set_int(AG, 9)
end)
AcMMenu:add_button("The Government Gimps", function()
	globals.set_int(AG, 10)
end)
AcMMenu:add_button("The Big One!", function()
	globals.set_int(AG, 11)
end)
AcMMenu:add_button("Solid Gold, Baby!", function()
	globals.set_int(AG, 12)
end)
AcMMenu:add_button("Career Criminal", function()
	globals.set_int(AG, 13)
end)
AcMMenu:add_button("San Andreas Sightseer", function()
	globals.set_int(AG, 14)
end)
AcMMenu:add_button("All's Fare in Love and War", function()
	globals.set_int(AG, 15)
end)
AcMMenu:add_button("TP Industries Arms Race", function()
	globals.set_int(AG, 16)
end)
AcMMenu:add_button("Multi-Disciplined", function()
	globals.set_int(AG, 17)
end)
AcMMenu:add_button("From Beyond the Stars", function()
	globals.set_int(AG, 18)
end)
AcMMenu:add_button("A Mystery, Solved", function()
	globals.set_int(AG, 19)
end)
AcMMenu:add_button("Waste Management", function()
	globals.set_int(AG, 20)
end)
AcMMenu:add_button("Red Mist", function()
	globals.set_int(AG, 21)
end)
AcMMenu:add_button("Show Off", function()
	globals.set_int(AG, 22)
end)
AcMMenu:add_button("Kifflom!", function()
	globals.set_int(AG, 23)
end)
AcMMenu:add_button("Three Man Army", function()
	globals.set_int(AG, 24)
end)
AcMMenu:add_button("Out of Your Depth", function()
	globals.set_int(AG, 25)
end)
AcMMenu:add_button("Altruist Acolyte", function()
	globals.set_int(AG, 26)
end)
AcMMenu:add_button("A Lot of Cheddar", function()
	globals.set_int(AG, 27)
end)
AcMMenu:add_button("Trading Pure Alpha", function()
	globals.set_int(AG, 28)
end)
AcMMenu:add_button("Pimp My Sidearm", function()
	globals.set_int(AG, 29)
end)
AcMMenu:add_button("Wanted:Alive Or Alive", function()
	globals.set_int(AG, 30)
end)
AcMMenu:add_button("Los Santos Customs", function()
	globals.set_int(AG, 31)
end)
AcMMenu:add_button("Close Shave", function()
	globals.set_int(AG, 32)
end)
AcMMenu:add_button("Off the Plane", function()
	globals.set_int(AG, 33)
end)
AcMMenu:add_button("Three-Bit Gangster", function()
	globals.set_int(AG, 34)
end)
AcMMenu:add_button("Making Moves", function()
	globals.set_int(AG, 35)
end)
AcMMenu:add_button("Above the Law", function()
	globals.set_int(AG, 36)
end)
AcMMenu:add_button("Numero Uno", function()
	globals.set_int(AG, 37)
end)
AcMMenu:add_button("The Midnight Club", function()
	globals.set_int(AG, 38)
end)
AcMMenu:add_button("Unnatural Selection", function()
	globals.set_int(AG, 39)
end)
AcMMenu:add_button("Backseat Driver", function()
	globals.set_int(AG, 40)
end)
AcMMenu:add_button("Run Like The Wind", function()
	globals.set_int(AG, 41)
end)
AcMMenu:add_button("Clean Sweep", function()
	globals.set_int(AG, 42)
end)
AcMMenu:add_button("Decorated", function()
	globals.set_int(AG, 43)
end)
AcMMenu:add_button("Stick Up Kid", function()
	globals.set_int(AG, 44)
end)
AcMMenu:add_button("Enjoy Your Stay", function()
	globals.set_int(AG, 45)
end)
AcMMenu:add_button("Crew Cut", function()
	globals.set_int(AG, 46)
end)
AcMMenu:add_button("Full Refund", function()
	globals.set_int(AG, 47)
end)
AcMMenu:add_button("Dialling Digits", function()
	globals.set_int(AG, 48)
end)
AcMMenu:add_button("American Dream", function()
	globals.set_int(AG, 49)
end)
AcMMenu:add_button("A New Perspective", function()
	globals.set_int(AG, 50)
end)
AcMMenu:add_button("Be Prepared", function()
	globals.set_int(AG, 51)
end)
AcMMenu:add_button("In the Name of Science", function()
	globals.set_int(AG, 52)
end)
AcMMenu:add_button("Dead Presidents", function()
	globals.set_int(AG, 53)
end)
AcMMenu:add_button("Parole Day", function()
	globals.set_int(AG, 54)
end)
AcMMenu:add_button("Shot Caller", function()
	globals.set_int(AG, 55)
end)
AcMMenu:add_button("Four Way", function()
	globals.set_int(AG, 56)
end)
AcMMenu:add_button("Live a Little", function()
	globals.set_int(AG, 57)
end)
AcMMenu:add_button("Can't Touch This", function()
	globals.set_int(AG, 58)
end)
AcMMenu:add_button("Mastermind", function()
	globals.set_int(AG, 59)
end)
AcMMenu:add_button("Vinewood Visionary", function()
	globals.set_int(AG, 60)
end)
AcMMenu:add_button("Majestic", function()
	globals.set_int(AG, 61)
end)
AcMMenu:add_button("Humans of Los Santos", function()
	globals.set_int(AG, 62)
end)
AcMMenu:add_button("First Time Director", function()
	globals.set_int(AG, 63)
end)
AcMMenu:add_button("Animal Lover", function()
	globals.set_int(AG, 64)
end)
AcMMenu:add_button("Ensemble Piece", function()
	globals.set_int(AG, 65)
end)
AcMMenu:add_button("Cult Movie", function()
	globals.set_int(AG, 66)
end)
AcMMenu:add_button("Location Scout", function()
	globals.set_int(AG, 67)
end)
AcMMenu:add_button("Method Actor", function()
	globals.set_int(AG, 68)
end)
AcMMenu:add_button("Cryptozoologist", function()
	globals.set_int(AG, 69)
end)
AcMMenu:add_button("Getting Started", function()
	globals.set_int(AG, 70)
end)
AcMMenu:add_button("The Data Breaches", function()
	globals.set_int(AG, 71)
end)
AcMMenu:add_button("The Bogdan Problem", function()
	globals.set_int(AG, 72)
end)
AcMMenu:add_button("The Doomsday Scenario", function()
	globals.set_int(AG, 73)
end)
AcMMenu:add_button("A World Worth Saving", function()
	globals.set_int(AG, 74)
end)
AcMMenu:add_button("Orbital Obliteration", function()
	globals.set_int(AG, 75)
end)
AcMMenu:add_button("Elitist", function()
	globals.set_int(AG, 76)
end)
AcMMenu:add_button("Masterminds", function()
	globals.set_int(AG, 77)
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Look for what reads DISABLE_DAILY_OBJECTIVES and then there should be a while loop that stops at 3.
local current_objectives_global = 2359296
local weekly_words_global = 2737992
local objectives_state_global = 1574744

FAUT:add_button("Complete All Daily & Weekly Challenges", function()
	script.run_in_fiber(function(script)
		for i = 0, 2 do --Unlock all daily rewards.
			local objective = globals.get_int(current_objectives_global + (1 + (0 * 5570)) + 681 + 4244 + (1 + (i * 3)))
			globals.set_int(objectives_state_global + 1 + (1 + (i * 1)), objective)
		end
		globals.set_int(objectives_state_global, 1)
		globals.set_int(
			weekly_words_global + (1 + (0 * 6)) + 1,
			globals.get_int(weekly_words_global + (1 + (0 * 6)) + 2)
		) --Unlock Weekly Objective
	end)
end)

FAUT:add_separator()

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function unlock_packed_bools(from, to)
	for i = from, to do
		stats.set_packed_stat_bool(i, true)
	end
end

local function Text(text)
	FAUT:add_text(text, function() end)
end
Text("==========================")
Text("One Click Unlocker Section")
Text("==========================")
Text("Rewards,Unlocks,Progess And")
Text("Achievements")
Text("Make Sure You have 50 mil In Every")
Text("Business")
Text("In The Game Before Applying In Do a")
Text("Sale Of ")
Text("Each Business And Do a Round In")
Text("Shooting Range After You Activate It")
Text("Join a New Session To Apply ")
Text("==========================")
FAUT:add_button("Unlock All", function()
	PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
	if PlayerIndex == 0 then
		MPX = "MP0_"
	else
		MPX = "MP1_"
	end

	unlock_packed_bools(110, 113) --Red Check Pajamas, Green Check Pajamas, Black Check Pajamas, I Heart LC T-shirt
	unlock_packed_bools(115, 115) --Roosevelt
	unlock_packed_bools(124, 124) --Sanctus
	unlock_packed_bools(129, 129) --Albany Hermes
	unlock_packed_bools(135, 137) --Vapid Clique, Buzzard Attack Chopper, Insurgent Pick-Up
	unlock_packed_bools(3593, 3599) --'Statue Of Happiness' T-shirt, 'Pisswasser' Beer Hat, 'Benedict' Beer Hat, 'J Lager' Beer Hat, 'Patriot' Beer Hat, 'Blarneys' Beer Hat, 'Supa Wet' Beer Hat
	unlock_packed_bools(3604, 3605) --Liberator, Sovereign
	unlock_packed_bools(3608, 3609) --'Elitas' T-shirt, High Flyer Parachute Bag
	unlock_packed_bools(3616, 3616) --Please Stop Me Mask
	unlock_packed_bools(3750, 3750) --Stocking
	unlock_packed_bools(3765, 3769) --The Fleeca Job, The Prison Break, The Humane Labs Raid, Series A Funding, The Pacific Standard Job (Elite Challenges)
	unlock_packed_bools(3770, 3781) --'Death Defying' T-shirt, 'For Hire' T-shirt, 'Gimme That' T-shirt, 'Asshole' T-shirt, 'Can't Touch This' T-shirt, 'Decorated' T-shirt, 'Psycho Killer' T-shirt, 'One Man Army' T-shirt, 'Shot Caller' T-shirt, 'Showroom' T-shirt, 'Elite Challenge' T-Shirt, 'Elite Lousy' T-Shirt
	unlock_packed_bools(3783, 3802) --Fake Dix White T-Shirt, Fake Dix Gold T-Shirt, Fake Didier Sachs T-Shirt, Fake Enema T-Shirt, Fake Le Chien No2 T-Shirt, Fake Le Chien Crew T-Shirt, Fake Santo Capra T-Shirt, Fake Vapid T-Shirt, Fake Perseus T-Shirt, Fake Sessanta Nove T-Shirt, 'Vinewood Zombie' T-shirt, 'Meltdown' T-shirt, 'I Married My Dad' T-shirt, 'Die Already 4' T-shirt, 'The Shoulder Of Orion II' T-shirt, 'Nelson In Naples' T-shirt, 'The Many Wives of Alfredo Smith' T-shirt, 'An American Divorce' T-shirt, 'The Loneliest Robot' T-shirt, 'Capolavoro' T-shirt
	unlock_packed_bools(4247, 4269) --'Magnetics Script' Hat, 'Magnetics Block' Hat, 'Low Santos' Hat, 'Boars' Hat, 'Benny's' Hat, 'Westside' Hat, 'Eastside' Hat, 'Strawberry' Hat, 'S.A.' Hat, 'Davis' Hat, 'Vinewood Zombie' T-shirt, 'Knife After Dark' T-shirt, 'The Simian' T-shirt, 'Zombie Liberals In The Midwest' T-shirt, 'Twilight Knife' T-shirt, 'Butchery and Other Hobbies' T-shirt, 'Cheerleader Massacre 3' T-shirt, 'Cannibal Clown' T-shirt, 'Hot Serial Killer Stepmom' T-shirt, 'Splatter And Shot' T-shirt, 'Meathook For Mommy' T-shirt, 'Psycho Swingers' T-shirt, 'Vampires On The Beach' T-shirt
	unlock_packed_bools(4300, 4327) --Brown Corpse Bride Bobblehead, White Corpse Bride Bobblehead, Pink Corpse Bride Bobblehead, White Mask Slasher Bobblehead, Red Mask Slasher Bobblehead, Yellow Mask Slasher Bobblehead, Blue Zombie Bobblehead, Green Zombie Bobblehead, Pale Zombie Bobblehead, Possessed Urchin Bobblehead, Demonic Urchin Bobblehead, Gruesome Urchin Bobblehead, Tuxedo Frank Bobblehead, Purple Suit Frank Bobblehead, Stripped Suit Frank Bobblehead, Black Mummy Bobblehead, White Mummy Bobblehead, Brown Mummy Bobblehead, Pale Werewolf Bobblehead, Dark Werewolf Bobblehead, Gray Werewolf Bobblehead, Fleshy Vampire Bobblehead, Bloody Vampire Bobblehead, B&W Vampire Bobblehead, Halloween Loop 1, Halloween Loop 2, Franken Stange, Lurcher
	unlock_packed_bools(4333, 4335) --Naughty Cap, Nice Cap, Abominable Snowman
	unlock_packed_bools(7467, 7495) --'Accountant' T-shirt, 'Bahama Mamas' T-shirt, 'Drone' T-shirt, 'Grotti' T-shirt, 'Golf' T-shirt, 'Maisonette' T-shirt, 'Manopause' T-shirt, 'Marlowe' T-shirt, 'Meltdown' T-shirt, 'Pacific Bluffs' T-shirt, 'Prolaps' T-shirt, 'Tennis' T-shirt, 'Toe Shoes' T-shirt, 'Crest' T-shirt, 'Vanilla Unicorn' T-shirt, Pastel Blue Pajamas, Pastel Yellow Pajamas, Pastel Pink Pajamas, Pastel Green Pajamas, Vibrant Check Pajamas, Blue Check Pajamas, Red Swirl Motif Pajamas, White Graphic Pajamas, Blue Swirl Pajamas, Yellow Swirl Pajamas, Red Swirl Pajamas, Navy Pinstripe Pajamas, Bold Pinstripe Pajamas, Orange Pinstripe Pajamas
	unlock_packed_bools(7515, 7528) --Pastel Blue Smoking Jacket, Pastel Yellow Smoking Jacket, Pastel Pink Smoking Jacket, Pastel Green Smoking Jacket, Vibrant Check Smoking Jacket, Blue Check Smoking Jacket, Red Swirl Motif Smoking Jacket, White Graphic Smoking Jacket, Blue Swirl Smoking Jacket, Yellow Swirl Smoking Jacket, Red Swirl Smoking Jacket, Navy Pinstripe Smoking Jacket, Bold Pinstripe Smoking Jacket, Orange Pinstripe Smoking Jacket
	unlock_packed_bools(7551, 7551) --DCTL T-Shirt
	unlock_packed_bools(7595, 7601) --White Jock Cranley Suit, Red Jock Cranley Suit, Blue Jock Cranley Suit, Black Jock Cranley Suit, Pink Jock Cranley Suit, Gold Jock Cranley Suit, Silver Jock Cranley Suit
	unlock_packed_bools(9362, 9385) --Western Brand White T-Shirt, Western Brand Black T-Shirt, Western Logo White T-Shirt, Western Logo Black T-Shirt, Steel Horse Solid Logo T-Shirt, Steel Horse Logo T-Shirt, Steel Horse Brand White T-Shirt, Steel Horse Brand Black T-Shirt, Nagasaki White T-Shirt, Nagasaki White and Red T-Shirt, Nagasaki Black T-Shirt, Purple Helmets Black T-Shirt, Principe Black T-Shirt, Black Steel Horse Hoodie, Steel Horse Brand White T-Shirt, Western Black Hoodie, Western Logo White T-Shirt, Nagasaki White Hoodie, Nagasaki White and Red Hoodie, Nagasaki Black Hoodie, Purple Helmets Black Hoodie, Principe Logo, Crosswalk T-Shirt, R* Crosswalk T-Shirt
	unlock_packed_bools(9426, 9440) --Base5 T-Shirt, Bitch'n' Dog Food T-Shirt, BOBO T-Shirt, Bounce FM T-Shirt, Crocs Bar T-Shirt, Emotion 98.3 T-Shirt, Fever 105 T-Shirt, Flash T-Shirt, Homies Sharp T-Shirt, K-DST T-Shirt, KJAH Radio T-Shirt, K-ROSE T-Shirt, Victory Fist T-Shirt, Vinyl Countdown T-Shirt, Vivisection T-Shirt
	unlock_packed_bools(9443, 9443) --Unicorn
	unlock_packed_bools(9461, 9481) --Ballistic Equipment, LS UR T-Shirt, Non-Stop-Pop FM T-Shirt, Radio Los Santos T-Shirt, Los Santos Rock Radio T-Shirt, Blonded Los Santos 97.8 FM T-Shirt, West Coast Talk Radio T-Shirt, Radio Mirror Park T-Shirt, Rebel Radio T-Shirt, Channel X T-Shirt, Vinewood Boulevard Radio T-Shirt, FlyLo FM T-Shirt, Space 103.2 T-Shirt, West Coast Classics T-Shirt, East Los FM T-Shirt, The Lab T-Shirt, The Lowdown 91.1 T-Shirt, WorldWide FM T-Shirt, Soulwax FM T-Shirt, Blue Ark T-Shirt, Blaine County Radio T-Shirt
	unlock_packed_bools(15381, 15382) --APC SAM Battery, Ballistic Equipment
	unlock_packed_bools(15388, 15423) --Black Ammu-Nation Cap, Black Ammu-Nation Hoodie, Black Ammu-Nation T-Shirt, Black Coil Cap, Black Coil T-Shirt, Black Hawk & Little Hoodie, Black Hawk & Little Logo T-Shirt, Black Hawk & Little T-Shirt, Black Shrewsbury Hoodie, Black Vom Feuer Cap, Black Warstock Hoodie, Green Vom Feuer T-Shirt, Red Hawk & Little Cap, Warstock Cap, White Ammu-Nation T-Shirt, White Coil Hoodie, White Coil T-Shirt, White Hawk & Little Hoodie, White Hawk & Little T-Shirt, White Shrewsbury T-Shirt, White Shrewsbury Cap, White Shrewsbury Hoodie, White Shrewsbury Logo T-Shirt, White Vom Feuer Cap, White Vom Feuer Hoodie, Wine Coil Cap, Yellow Vom Feuer Logo T-Shirt, Yellow Vom Feuer T-Shirt, Yellow Warstock T-Shirt, Blue R* Class of '98, Red R* Class of '98, Noise Rockstar Logo T-Shirt, Noise T-Shirt, Razor T-Shirt, Black Rockstar Camo, White Rockstar Camo
	unlock_packed_bools(15425, 15439) --Knuckleduster Pocket T-Shirt, Rockstar Logo Blacked Out T-Shirt, Rockstar Logo White Out T-Shirt, Half-track 20mm Quad Autocannon, Weaponized Tampa Dual Remote Minigun, Weaponized Tampa Rear-Firing Mortar, Weaponized Tampa Front Missile Launchers, Dune FAV 40mm Grenade Launcher, Dune FAV 7.62mm Minigun, Insurgent Pick-Up Custom .50 Cal Minigun, Insurgent Pick-Up Custom Heavy Armor Plating, Technical Custom 7.62mm Minigun, Technical Custom Ram-bar, Technical Custom Brute-bar, Technical Custom Heavy Chassis Armor
	unlock_packed_bools(15447, 15474) --Oppressor Missiles, Fractal Livery Set, Digital Livery Set, Geometric Livery Set, Nature Reserve Livery, Naval Battle Livery, Anti-Aircraft Trailer Dual 20mm Flak, Anti-Aircraft Trailer Homing Missile Battery, Mobile Operations Center Rear Turrets, Incendiary Rounds, Hollow Point Rounds, Armor Piercing Rounds, Full Metal Jacket Rounds, Explosive Rounds, Pistol Mk II Mounted Scope, Pistol Mk II Compensator, SMG Mk II Holographic Sight, SMG Mk II Heavy Barrel, Heavy Sniper Mk II Night Vision Scope, Heavy Sniper Mk II Thermal Scope, Heavy Sniper Mk II Heavy Barrel, Combat MG Mk II Holographic Sight, Combat MG Mk II Heavy Barrel, Assault Rifle Mk II Holographic Sight, Assault Rifle Mk II Heavy Barrel, Carbine Rifle Mk II Holographic Sight, Carbine Rifle Mk II Heavy Barrel, Proximity Mines
	unlock_packed_bools(15491, 15499) --Weaponized Tampa Heavy Chassis Armor, Brushstroke Camo Mk II Weapon Livery, Skull Mk II Weapon Livery, Sessanta Nove Mk II Weapon Livery, Perseus Mk II Weapon Livery, Leopard Mk II Weapon Livery, Zebra Mk II Weapon Livery, Geometric Mk II Weapon Livery, Boom! Mk II Weapon Livery
	unlock_packed_bools(15552, 15560) --Bronze Greatest Dancer Trophy, Bronze Number One Nightclub Trophy, Bronze Battler Trophy, Silver Greatest Dancer Trophy, Silver Number One Nightclub Trophy, Silver Battler Trophy, Gold Greatest Dancer Trophy, Gold Number One Nightclub Trophy, Gold Battler Trophy
	unlock_packed_bools(18099, 18099) --The Forest
	unlock_packed_bools(18116, 18118) --The Data Breaches, The Bogdan Problem, The Doomsday Scenario (Elite Challenges)
	unlock_packed_bools(18121, 18125) --Green Wireframe Bodysuit, Orange Wireframe Bodysuit, Blue Wireframe Bodysuit, Pink Wireframe Bodysuit, Yellow Wireframe Bodysuit
	unlock_packed_bools(18134, 18137) --Hideous Krampus Mask, Fearsome Krampus Mask, Odious Krampus Mask, Heinous Krampus Mask
	unlock_packed_bools(22124, 22132) --Maisonette Los Santos T-Shirt, Studio Los Santos T-Shirt, Galaxy T-Shirt, Gefängnis T-Shirt, Omega T-Shirt, Technologie T-Shirt, Paradise T-Shirt, The Palace T-Shirt, Tony's Fun House T-Shirt
	unlock_packed_bools(22137, 22139) --Nightclub Hotspot Trophy
	unlock_packed_bools(24963, 25000) --Apocalypse Cerberus, Future Shock Cerberus, Apocalypse Brutus, Nightmare Cerberus, Apocalypse ZR380, Future Shock Brutus, Impaler, Bolt Burger Hunger T-Shirt, Apocalypse Sasquatch - Livery set, Rat-Truck, Glendale, Slamvan, Dominator, Issi Classic, Spacesuit Alien T-Shirt set, Gargoyle, Future Shock Deathbike - Light Armor w/ Shield, Blue Lights, Electric Blue Lights, Mint Green Lights, Lime Green Lights, Yellow Lights, Golden Shower Lights, Orange Lights, Red Lights, Pony Pink Lights, Hot Pink Lights, Purple Lights, Blacklight Lights, Taxi Custom, Dozer, Clown Van, Trashmaster, Barracks Semi, Mixer, Space Docker, Tractor, Nebula Bodysuit set
	unlock_packed_bools(25002, 25002) --Up-n-Atomizer
	unlock_packed_bools(25005, 25006) --Epsilon Robes, Kifflom T-Shirt
	unlock_packed_bools(25008, 25009) --The Rookie
	unlock_packed_bools(25018, 25099) --Black & White Bones Festive Sweater, Slasher Festive Sweater, Black & Red Bones Festive Sweater, Red Bones Festive Sweater, Burger Shot Festive Sweater, Red Bleeder Festive Sweater, Blue Bleeder Festive Sweater, Blue Cluckin' Festive Sweater, Green Cluckin' Festive Sweater, Blue Slaying Festive Sweater, Green Slaying Festive Sweater, Hail Santa Festive Sweater, Merry Sprunkmas Festive Sweater, Ice Cold Sprunk Festive Sweater, Albany T-Shirt, Albany Vintage T-Shirt, Annis T-Shirt, Benefactor T-Shirt, BF T-Shirt, Bollokan T-Shirt, Bravado T-Shirt, Brute T-Shirt, Buckingham T-Shirt, Canis T-Shirt, Chariot T-Shirt, Cheval T-Shirt, Classique T-Shirt, Coil T-Shirt, Declasse T-Shirt, Dewbauchee T-Shirt, Dilettante T-Shirt, Dinka T-Shirt, Dundreary T-Shirt, Emperor T-Shirt, Enus T-Shirt, Fathom T-Shirt, Gallivanter T-Shirt, Grotti T-Shirt, Hijak T-Shirt, HVY T-Shirt, Imponte T-Shirt, Invetero T-Shirt, Jobuilt T-Shirt, Karin T-Shirt, Lampadati T-Shirt, Maibatsu T-Shirt, Mamba T-Shirt, Mammoth T-Shirt, MTL T-Shirt, Obey T-Shirt, Ocelot T-Shirt, Overflod T-Shirt, Pegassi T-Shirt, Pfister T-Shirt, Progen T-Shirt, Rune T-Shirt, Schyster T-Shirt, Shitzu T-Shirt, Truffade T-Shirt, Ubermacht T-Shirt, Vapid T-Shirt, Vulcar T-Shirt, Weeny T-Shirt, Willard T-Shirt, Albany Nostalgia T-Shirt, Albany USA T-Shirt, Albany Dealership T-Shirt, Annis JPN T-Shirt, BF Surfer T-Shirt, Bollokan Prairie T-Shirt, Bravado Stylized T-Shirt, Brute Impregnable T-Shirt, Brute Heavy Duty T-Shirt, Buckingham Luxe T-Shirt, Canis USA T-Shirt, Canis American Legend T-Shirt, Canis Wolf T-Shirt, Cheval Marshall T-Shirt, Coil USA T-Shirt, Coil Raiden T-Shirt, Declasse Logo T-Shirt, Declasse Girl T-Shirt
	unlock_packed_bools(25101, 25109) --Nightmare Brutus, Apocalypse Scarab, Future Shock Scarab, Nightmare Scarab, Future Shock ZR380, Nightmare ZR380, Apocalypse Imperator, Future Shock Imperator, Nightmare Imperator
	unlock_packed_bools(25111, 25134) --Future Shock Deathbike - Reinforced Armor w/ Shield, Future Shock Deathbike - Heavy Armor w/ Shield, Future Shock Sasquatch - Livery set, Nightmare Sasquatch - Livery set, Apocalypse Cerberus - Livery set, Future Shock Cerberus - Livery set, All variants of Sasquatch - Light Armor, All variants of Sasquatch - Reinforced Armor, All variants of Sasquatch - Heavy Armor, Nightmare Cerberus - Livery set, Apocalypse Bruiser - Livery set, Future Shock Bruiser - Livery set, Nightmare Bruiser - Livery set, Apocalypse Slamvan - Livery set, All variants of Cerberus - Body Spikes, Future Shock Slamvan - Livery set, All variants of Cerberus - Light Armor, All variants of Cerberus - Reinforced Armor, All variants of Cerberus - Heavy Armor, Nightmare Slamvan - Livery set, Apocalypse Brutus - Livery set, Future Shock Brutus - Livery set, Nightmare Brutus - Livery set, Apocalypse Scarab - Livery set
	unlock_packed_bools(25136, 25179) --All variants of Bruiser - Body Spikes, Future Shock Scarab - Livery set, Nightmare Scarab - Livery set, All variants of Bruiser - Light Armor, All variants of Bruiser - Reinforced Armor, All variants of Bruiser - Heavy Armor, Apocalypse Dominator - Livery set, Future Shock Dominator - Livery set, Nightmare Dominator - Livery set, Apocalypse Impaler - Livery set, Future Shock Impaler - Livery set, Nightmare Impaler - Livery set, All variants of Slamvan - Body Spikes, Apocalypse Imperator - Livery set, Future Shock Imperator - Livery set, All variants of Slamvan - Light Armor, All variants of Slamvan - Reinforced Armor, All variants of Slamvan - Heavy Armor, Nightmare Imperator - Livery set, Apocalypse ZR380 - Livery set, Future Shock ZR380 - Livery set, Nightmare ZR380 - Livery set, Apocalypse Issi - Livery set, Future Shock Issi - Livery set, All variants of Brutus - Light Armor, All variants of Brutus - Reinforced Armor, All variants of Brutus - Heavy Armor, Nightmare Issi - Livery set, Apocalypse Deathbike - Livery set, Future Shock Deathbike - Livery set, Nightmare Deathbike - Livery set, All variants of Sasquatch - Heavy Armored Front, Apocalypse Scarab - Body Spikes set, Future Shock Scarab - Body Spikes set, Nightmare Scarab - Body Spikes set, All variants of Sasquatch - Heavy Armored Hood, All variants of Sasquatch - Mohawk Exhausts, All variants of Scarab - Light Armor, All variants of Scarab - Reinforced Armor, All variants of Scarab - Heavy Armor, All variants of Sasquatch - Dual Mohawk Exhausts, Apocalypse & Nightmare Sasquatch - Rear Spears Left, Optics Headset Mask set, All variants of Dominator - Body Spikes
	unlock_packed_bools(25181, 25237) --Apocalypse & Nightmare Sasquatch - Rear Spears Right, Apocalypse & Nightmare Sasquatch - Skull Cross, All variants of Dominator - Light Armor, All variants of Dominator - Reinforced Armor, All variants of Dominator - Heavy Armor, Apocalypse & Nightmare Sasquatch - Ram Skull Cross, Apocalypse & Nightmare Sasquatch - Blonde Doll Cross, All variants of Impaler - Body Spikes, Apocalypse & Nightmare Sasquatch - Brunette Doll Cross, Apocalypse & Nightmare Cerberus - Bastioned Ram-bars, All variants of Impaler - Light Armor, All variants of Impaler - Reinforced Armor, All variants of Impaler - Heavy Armor, All variants of Cerberus - Bolstered Hood Cage, All variants of Cerberus - Reinforced Riot Hood, All variants of Cerberus - Juggernaut Hood, Apocalypse & Nightmare Cerberus - War Spearheads, All variants of Imperator - Body Spikes, Apocalypse & Nightmare Cerberus - War Spear Kit, Apocalypse & Nightmare Cerberus - Nade Spearheads, Apocalypse & Nightmare Cerberus - Nade Spear Kit, All variants of Imperator - Light Armor, All variants of Imperator - Reinforced Armor, All variants of Imperator - Heavy Armor, Apocalypse & Nightmare Cerberus - Skull Spearheads, Apocalypse & Nightmare Cerberus - Skull Spear Kit, Apocalypse & Nightmare Cerberus - Arrow Spearheads, Apocalypse & Nightmare Cerberus - Arrow Spear Kit, All variants of ZR380 - Body Spikes, Apocalypse & Nightmare Cerberus - Tridents, Apocalypse & Nightmare Cerberus - Wasteland Ritual, All variants of ZR380 - Light Armor, All variants of ZR380 - Reinforced Armor, All variants of ZR380 - Heavy Armor, Future Shock Cerberus - Panel Detail, Future Shock Cerberus - Crane Pipes, All variants of Issi - Body Spikes, Future Shock Cerberus - Hedgehog, Future Shock Cerberus - Hedgehog MK2, Future Shock Bruiser - Heavy Plated Armored Grille / Apocalypse & Nightmare Bruiser - Diamond Heavy Armor Grille, All variants of Issi - Light Armor, All variants of Issi - Reinforced Armor, All variants of Issi - Heavy Armor, All variants of Bruiser - Twin Oval Exhaust, Cluckin' Bell Mask, All variants of Bruiser - Long Triple Rear Exhausts, All variants of Bruiser - Front & Rear Triple Exhausts, All variants of Deathbike - Light Armor, All variants of Deathbike - Reinforced Armor, All variants of Deathbike - Heavy Armor, Kinetic Mines, Apocalypse Bruiser - Skull & Cross / Nightmare Bruiser - Painted Skull & Cross, Spike Mines, Slick Mines, Sticky Mines, EMP Mines, RC Bandito
	unlock_packed_bools(25244, 25400) --Robot Bodysuit set, Hero Bodysuit set, Shapes Bodysuit set, Contours Bodysuit set, Martian Bodysuit set, Reptile Bodysuit set, Galaxy Bodysuit set, Space Creature Suits, Space Cyclops Suits, Space Horror Suits, Retro Spacesuits, Astronaut Suits, Space Traveler Suits, Character Suits: Pogo Space Monkey, Character Suits: Republican Space Ranger, Death Bird Mask set, Stalker Mask set, Raider Mask set, Marauder Mask set, Paco the Taco Mask, Burger Shot Mask, Space Rangers T-Shirt set, Space Ranger Logo T-Shirt set, Phases T-Shirt set, Rocket Splash T-Shirt set, Two Moons T-Shirt set, Freedom Isn't Free T-Shirt set, Apocalyptic Raider Top set, Apocalyptic Leather Feather Top set, Apocalyptic Mercenary Vest set, Benedict Light Beer Hoodie, Taco Bomb Hoodie, Cluckin' Bell Logo Bomb Hoodie, Patriot Beer Hoodie, Pisswasser Hoodie, Burger Shot Hoodie, Corn Dog Hoodie, Donut Hoodie, Lucky Plucker Hoodie, Logger Light Hoodie, Pizza Hoodie, Fries Hoodie, Mushrooms Hoodie, Redwood Hoodie, eCola Infectious Hoodie, Cluckin' Bell Logo Hoodie, Lemons Hoodie, Tacos Hoodie, Burger Shot Pattern Sweater, Burger Shot Logo Sweater, Burger Shot Sweater, Sprunk Sweater set, Wigwam Sweater, Taco Bomb Chili Sweater, Taco Bomb Sweater set, Cluckin' Bell Logo Bomb Sweater, Blue Cluckin' Bell Sweater, Black Cluckin' Bell Sweater, eCola Sweater set, MeTV Sweater set, Heat Sweater set, Degenatron Sweater, Pisswasser Sweater set, Bolt Burger Sweater, Lucky Plucker Logo Bomb Sweater, Lucky Plucker Sweater, Burger Shot Hockey Shirt set, Cluckin' Bell Hockey Shirt set, Wigwam Hockey Shirt, Redwood Hockey Shirt, Bean Machine Hockey Shirt, Red eCola Hockey Shirt, Black eCola Hockey Shirt, Phat Chips Hockey Shirt set, Sprunk Hockey Shirt set, Sprunk Classic Hockey Shirt, Burger Shot Black T-Shirt, Burger Shot Logo T-Shirt, Cluckin' Bell Logo T-Shirt, Cluckin' Bell Black T-Shirt, Cluckin' Bell Filled Logo T-Shirt, eCola Black T-Shirt, Lucky Plucker T-Shirt, Pisswasser T-Shirt, Sprunk T-Shirt, Taco Bomb Chili T-Shirt, Taco Bomb Black T-Shirt, Up-n-Atom Hamburgers T-Shirt, Up-n-Atom Logo T-Shirt, Wigwam T-Shirt, Degenatron ROYGBIV T-Shirt, CNT T-Shirt, Qub3d T-Shirt, Righteous Slaughter T-Shirt, Space Monkey Full T-Shirt, Space Monkey Pixel T-Shirt, Space Monkey Enemy T-Shirt, Burger Shot Bleeder T-Shirt, Heat Rises T-Shirt, Space Monkey Logo T-Shirt, Space Monkey Suit T-Shirt, Space Monkey Face T-Shirt, Space Monkey Mosaic T-Shirt, Bolt Burger Logo T-Shirt, Exsorbeo 720 T-Shirt, Heat Ball Logo T-Shirt set, Heat Logo T-Shirt set, Heat Pop Art Logo T-Shirt set, MeTV Logo T-Shirt set, MeTV 90s T-Shirt set, Burger Shot Target T-Shirt, eCola Infectious T-Shirt, Up-n-Atom White T-Shirt, Jock Cranley Patriot T-Shirt, CCC TV T-Shirt, Degenatron Logo T-Shirt, eCola White T-Shirt, eCola Pass It On T-Shirt, Tw@ T-Shirt, Chain Pants set, Chain Shorts set, Leather Stitch Pants set, Raider Pants set, Light Ups Shoes set, Flaming Skull Boots set, Skull Harness Boots set, Plated Boots set, Burger Shot Food Cap set, Apocalypse Bruiser - Double Cross Ram Skull / Nightmare Bruiser - Painted Ram Skull & Cross, Burger Shot Logo Cap, Burger Shot Bullseye Cap, Cluckin' Bell Logo Cap set, Apocalypse Bruiser - Cross & Skull Large Blade Kit / Nightmare Bruiser - Painted Skull Large Blade Kit, Cluckin' Bell Logos Cap, Hotdogs Cap set, Taco Bomb Cap set, Apocalypse Bruiser - Ram Skull Nade Kit / Nightmare Bruiser - Painted Ram Skull Nade Kit, Apocalypse Bruiser - Ram Skull Medieval Kit / Nightmare Bruiser - Painted Skull Medieval Kit, Lucky Plucker Cap set, Lucky Plucker Logos Cap set, Apocalypse Bruiser - Ram Skull Medieval Madness / Nightmare Bruiser - Painted Skull Medieval Madness, Apocalypse Bruiser - Barrels & Junk, Pisswasser Cap set, Apocalypse Bruiser - Skeleton Cage, Future Shock Bruiser - Light Cover, Future Shock Bruiser - Spare Tire, Taco Canvas Hat, Burger Shot Canvas Hat, Cluckin' Bell Canvas Hat, Hotdogs Canvas Hat, Shunt Boost, Boost Upgrade 20%, Boost Upgrade 60%, Boost Upgrade 100%, Jump Upgrade 20%, Jump Upgrade 60%, Jump Upgrade 100%
	unlock_packed_bools(25405, 25405) --Festive tint (Up-n-Atomizer)
	unlock_packed_bools(25407, 25511) --Future Shock Bruiser - Crates, Nightmare Bruiser - Large Burger, Nightmare Bruiser - Large Doughnuts, Nightmare Bruiser - Large eCola Cans, All variants of Slamvan - Rear Bumper Reinforced Armor, All variants of Slamvan - Rear Bumper Heavy Armor, Apocalypse Slamvan - Basic Spears, Apocalypse Slamvan - Battle Cross, Apocalypse Slamvan - War Cross, Apocalypse Slamvan - Battle Spears, Apocalypse Slamvan - War Spears, Nightmare Slamvan - Knife Spears, Nightmare Slamvan - Fork & Knife, Apocalypse & Nightmare Brutus - Gassed Up Bar, Apocalypse & Nightmare Brutus - Roadblock, Apocalypse & Nightmare Brutus - Junk Trunk, Apocalypse & Nightmare Brutus - Fire Spitters, Apocalypse & Nightmare Brutus - Hell Chambers, Apocalypse & Nightmare Brutus - Heavy Armored Arches, Apocalypse & Nightmare Brutus - Toothy, Apocalypse & Nightmare Brutus - Armored Spares, Apocalypse & Nightmare Brutus - Armored Supplies, Apocalypse & Nightmare Brutus - Eternally Chained, Apocalypse & Nightmare Brutus - Speared, Future Shock Scarab - Primary Full Armor, All variants of Scarab - Secondary Full Armor, All variants of Scarab - Carbon Full Armor, Future Shock Scarab - Heavy Duty Cooling / Apocalypse & Nightmare Scarab - Air Filtration Vents & Long Range Equipment, Apocalypse & Nightmare Scarab - Rusty Full Armor, Apocalypse & Nightmare Scarab - Rear War Poles, Apocalypse & Nightmare Scarab - Rear Spears, Apocalypse & Nightmare Scarab - Skull Cross, Apocalypse & Nightmare Scarab - Skull Cross w/ War Poles, Apocalypse & Nightmare Scarab - Skull Cross w/ Spears, Apocalypse & Nightmare Scarab - Load'a War Poles, Apocalypse & Nightmare Scarab - Load'a Spears, Apocalypse & Nightmare Scarab - Scarab Mega Cover set, Apocalypse & Nightmare Scarab - Armored Mega Cover set, Apocalypse & Nightmare Scarab - Cage, Apocalypse & Nightmare Scarab - Plated Cage, Future Shock Scarab - Livery Armor, Future Shock Scarab - Primary Full Armor, Future Shock Scarab - Livery Full Armor, Future Shock Scarab - Carbon Full Armor, Future Shock Scarab - Matte Full Armor, Future Shock Scarab - Futuristic Panel Armor, Future Shock Scarab - Plated Livery Full Armor, All variants of Dominator - Triple Front Exhausts, All variants of Dominator - Horn Exhausts, All variants of Dominator - Triple Rear Exhausts, Apocalypse & Nightmare Dominator - Rear Pointing War Poles, Apocalypse & Nightmare Dominator - Front Facing Axes, Apocalypse & Nightmare Dominator - Front Facing Spears, Apocalypse & Nightmare Dominator - Unholy Cross, Apocalypse & Nightmare Dominator - Brutal Unholy Cross, Apocalypse & Nightmare Dominator - Bunch of War Poles, Apocalypse & Nightmare Dominator - Front Pointing War Poles, Apocalypse & Nightmare Dominator - Skull Hood, Apocalypse & Nightmare Impaler - Got Pole?, Apocalypse & Nightmare Impaler - Getting Medieval, Apocalypse & Nightmare Impaler - Wasteland Peacock, Apocalypse & Nightmare Impaler - Shish-Kebbabed, Apocalypse & Nightmare Impaler - It's A Stick Up, Apocalypse & Nightmare Impaler - The Dark Ages, Apocalypse & Nightmare Impaler - Dolly Spearton, Apocalypse & Nightmare Impaler - War Poles, All variants of Imperator - Shakotan Exhaust, Apocalypse & Nightmare Imperator - Whole Lotta Pole, Apocalypse & Nightmare Imperator - Getting Medieval, Apocalypse & Nightmare Imperator - It's A Stick Up, Apocalypse & Nightmare Imperator - Boom On A Spear, Apocalypse & Nightmare Imperator - Village Justice, Apocalypse & Nightmare Imperator - Wasteland Peacock, Apocalypse & Nightmare Imperator - Shish-Kebbabed, Apocalypse & Nightmare Imperator - Junk Pipes, Apocalypse & Nightmare Imperator - Mega Zorst, Apocalypse & Nightmare Imperator - Ride 'Em Cowboy, Apocalypse & Nightmare Imperator - Cannibal Totem, All variants of ZR380 - Side Exhausts, All variants of ZR380 - Spike Exhausts, Apocalypse & Nightmare ZR380 - Mismatch, Future Shock ZR380 - Ray Gun Exhausts, Future Shock ZR380 - Sprint Car Wing, Future Shock ZR380 - Armor Plating Mk. 3, Future Shock ZR380 - Rear Phantom Covers, All variants of Issi - Heavy Duty Ram Bar, Apocalypse & Nightmare Issi - Spear, Apocalypse & Nightmare Issi - Left War Poles, Apocalypse & Nightmare Issi - Dolly Spearton, Apocalypse & Nightmare Issi - Right War Poles, Apocalypse & Nightmare Issi - Skull Cross, Apocalypse & Nightmare Issi - Dolly Spearton Set, Apocalypse & Nightmare Issi - Dual War Poles, Apocalypse & Nightmare Issi - Dolly Spearton W/ War Pole, Apocalypse & Nightmare Issi - Skull Cross W/ Spear, Apocalypse & Nightmare Issi - Skull Cross W/ War Pole, Apocalypse & Nightmare Issi - Skull Cross W/ Dolly, Apocalypse & Nightmare Issi - Left Spear, Apocalypse & Nightmare Issi - Right Spear, Apocalypse & Nightmare Issi - Left Skull Axe, Apocalypse & Nightmare Issi - Right Axe, Apocalypse & Nightmare Issi - Dual Spears, Apocalypse & Nightmare Issi - Spear & Axe, Apocalypse & Nightmare Issi - Axe & Spear, Apocalypse & Nightmare Issi - Dual Axes
	unlock_packed_bools(25516, 25516) --RC Tank
	unlock_packed_bools(25520, 25521) --Metal Detector
	unlock_packed_bools(26811, 26964) --Action Figures, Playing Cards
	unlock_packed_bools(26968, 27088) --Impotent Rage Outfit, High Roller, Tiger Scuba, Sprunk Racing Suit, Neon Bodysuit, Extreme Strike Vest, The Chimera (Outfit), White Racing Suit, The Reconnaissance (Outfit), Blue Jock Cranley Suit, Italian Biker Suit, The Hazard (Outfit), Mid Strike Vest, Splinter Gorka Suit, The Gunfighter (Outfit), Black Plate Carrier*, Hunter Leather Fur Jacket, Chamois Plate Carrier*, Black Heavy Utility Vest, The Puff (Outfit), Ox Blood Patched Cut, Color Geo PRB Leather, Blue Tactical Blouson, Orange Big Cat*, Color Geo Sweater, Vivid Gradient Puffer, Color Diamond Sweater, Classic SN Print Sweater, Power Motocross, The Buzz (Outfit), Pegassi Racing Jacket, Woodland Camo Parka, Le Chien Print Sweater, The Pincer (Outfit), Vibrant Gradient Shortsleeve, Urban Gradient Shortsleeve, White Chevron SC Track, Slalom Motocross, Blue Savanna Shortsleeve, Green Didier Sachs Field, Candy Motocross, Tutti Frutti Pattern Sweater, The Vespucci (Outfit), Contrast Camo Service Shirt, Tropical Pattern Sweater, Black Service Shirt, SecuroServ 1 (Outfit), Black Sports Blagueurs Hoodie, Gold Shiny T-Shirt, OJ Shortsleeve, Primary Squash Hoodie, Purple Camo Bigness Hoodie, Bold Abstract Bigness Hoodie, Pink SN Hoodie, Red Boating Blazer, Multicolor Leaves Shortsleeve, Neon Leaves Güffy Hoodie, Black Dotted Shortsleeve, Drive Motocross, Red Patterned Shortsleeve, Steel Horse Satin Jacket, Orange Squash Hoodie, Regal Loose Shirt, White Güffy Hoodie, Stealth Utility Vest, Red Floral Sweater, Black & Red Bigness Jersey, The Slick (Outfit), Splat Squash Sweater, Tan Hooded Jacket, Brushstroke Combat Shirt, White & Red Bigness Jersey, Black Combat Top, Lime Longline Hoodie, Red Bold Check, Bold Camo Sand Castle Sweater, Red Combat Shirt, Red Mist XI Dark, Cyan Manor Sweater, Flecktarn Sleeveless Shirt, Forest Camo Battle Vest, LS Jardineros Dark, Liberty Cocks Dark, Angelica T-Shirt, Hinterland Ship Sweater, Wine Sleeveless Shirt, Cobble Sleeveless, Black Dense Logo Sweater*, White Flying Bravo Hoodie, Cat T-Shirt*, Color Geo T-Shirt, Bold Abstract Bigness T-Shirt, Neon Leaves Güffy T-Shirt, Black Baggy Hoodie, White Manor Zigzag T-Shirt, Double P Baseball Shirt, Aqua Camo Rolled Tee, Dark Woodland T-Shirt, White Bigness T-Shirt, Black No Retreat Tank, White Benny's T-Shirt, Red Smuggler Tank, Angels of Death Vivid Tee, Blue Hit & Run Tank, Waves T-Shirt*, Beige Turtleneck, Hinterland Nugget T-Shirt, Mustard Güffy Tank, Nagasaki White and Red Hoodie, Grotti Tee, Western Logo Black Tee, Butchery and other Hobbies, Black Ammu-Nation Hoodie*, Fake Santo Capra T-Shirt, Death Defying T-Shirt, Bahama Mamas, Showroom T-Shirt, LS UR Tee, J Lager Beer Hat, Unicorn, Gingerbread
	unlock_packed_bools(27109, 27115) --The Diamond Classic T-Shirt, The Diamond Vintage T-Shirt, Red The Diamond LS T-Shirt, Blue The Diamond Resort LS T-Shirt, Red The Diamond Resort T-Shirt, Blue D Casino T-Shirt, Red The Diamond Classic T-Shirt
	unlock_packed_bools(27120, 27145) --White The Diamond Hoodie, Black The Diamond Hoodie, Ash The Diamond Hoodie, Gray The Diamond Hoodie, Red The Diamond Hoodie, Orange The Diamond Hoodie, Blue The Diamond Hoodie, Black The Diamond Silk Robe, White The Diamond Cap, Black The Diamond Cap, White LS Diamond Cap, Black LS Diamond Cap, Red The Diamond Cap, Orange The Diamond Cap, Blue LS Diamond Cap, Green The Diamond Cap, Orange LS Diamond Cap, Purple The Diamond Cap, Pink LS Diamond Cap, White The Diamond LS Tee*, Black The Diamond LS Tee, Black The Diamond Resort LS Tee, White The Diamond Resort Tee, Black The Diamond Resort Tee, Black LS Diamond Tee, Black D Casino Tee
	unlock_packed_bools(27147, 27182) --I've Been Shamed Tee, Blue I've Been Shamed Tee, Fame or Shame Stars Tee, Red Fame or Shame Stars Tee, No Talent Required Tee, Red No Talent Required Tee, Team Tracey Tee, Blue Team Tracey Tee, Monkey Business Tee, Red Monkey Business Tee, Fame or Shame Logo Tee, Blue Fame or Shame Logo Tee, Stars Fame or Shame Robe, Black Fame or Shame Robe, Red Stars Fame or Shame Robe, Red Fame or Shame Robe, White Fame or Shame Robe, Black Fame or Shame Shades, Red Fame or Shame Shades, Blue Fame or Shame Shades, White Fame or Shame Shades, Gold Fame or Shame Mics, Silver Fame or Shame Mics, Red Fame or Shame Kronos, Green Fame or Shame Kronos, Blue Fame or Shame Kronos, Black Fame or Shame Kronos, America Loves You Tee, Blue America Loves You Tee, Fame or Shame No Evil Tee, You're So Original! Tee, Red You're So Original! Tee, Oh No He Didn't! Tee, Blue Oh No He Didn't! Tee, You're Awful Tee, Red You're Awful Tee
	unlock_packed_bools(27184, 27213) --Invade and Persuade Enemies T-Shirt, Invade and Persuade Oil T-Shirt, Invade and Persuade Tour T-Shirt, Invade and Persuade Green T-Shirt, Invade and Persuade RON T-Shirt, Street Crimes Hoods T-Shirt, Street Crimes Punks T-Shirt, Street Crimes Yokels T-Shirt, Street Crimes Bikers T-Shirt, Street Crimes Action T-Shirt, Street Crimes Boxart T-Shirt, Street Crimes Logo T-Shirt, Claim What's Yours T-Shirt, Choose Your Side T-Shirt, Street Crimes Color Gangs T-Shirt, Street Crimes Red Gangs T-Shirt, White Street Crimes Icons T-Shirt, Black Street Crimes Icons T-Shirt, Invade and Persuade Logo T-Shirt, Mission I T-Shirt, Mission II T-Shirt, Mission IV T-Shirt, Mission III T-Shirt, Invade and Persuade Boxart T-Shirt, Invade and Persuade Invader T-Shirt, Invade and Persuade Suck T-Shirt, Invade and Persuade Jets T-Shirt, Invade and Persuade Gold T-Shirt, Invade and Persuade Hero T-Shirt, Invade and Persuade Barrels T-Shirt
	unlock_packed_bools(27247, 27247) --Madam Nazar (Arcade Trophy)
	unlock_packed_bools(28099, 28148) --Signal Jammers
	unlock_packed_bools(28158, 28158) --Navy Revolver
	unlock_packed_bools(28171, 28191) --Green Reindeer Lights Bodysuit, Ho-Ho-Ho Sweater, Traditional Festive Lights Bodysuit, Yellow Reindeer Lights Bodysuit, Neon Festive Lights Bodysuit, Plushie Grindy T-Shirt, Plushie Saki T-Shirt , Plushie Humpy T-Shirt, Plushie Smoker T-Shirt, Plushie Poopie T-Shirt, Plushie Muffy T-Shirt, Plushie Wasabi Kitty T-Shirt, Plushie Princess T-Shirt, Plushie Master T-Shirt, Pixel Pete's T-Shirt, Wonderama T-Shirt, Warehouse T-Shirt, Eight Bit T-Shirt, Insert Coin T-Shirt, Videogeddon T-Shirt, Nazar Speaks T-Shirt
	unlock_packed_bools(28194, 28196) --Silent & Sneaky, The Big Con, Aggressive (Elite Challenges)
	unlock_packed_bools(28197, 28222) --Badlands Revenge II Gunshot T-Shirt, Badlands Revenge II Eagle T-Shirt, Badlands Revenge II Pixtro T-Shirt, Badlands Revenge II Romance T-Shirt, Badlands Revenge II Bear T-Shirt, Badlands Revenge II Help Me T-Shirt & Badlands Revenge II Retro T-Shirt, Race and Chase Decor T-Shirt, Race and Chase Vehicles T-Shirt, Race and Chase Finish T-Shirt, Crotch Rockets T-Shirt, Street Legal T-Shirt & Get Truckin' T-Shirt, Wizard's Ruin Loot T-Shirt, The Wizard's Ruin Rescue T-Shirt, The Wizard's Ruin Vow T-Shirt, Thog Mighty Sword T-Shirt, Thog T-Shirt & Thog Bod T-Shirt, Space Monkey 3 T-Shirt, Space Monkey Space Crafts T-Shirt, Space Monkey Pixel T-Shirt, Space Monkey Boss Fights T-Shirt, Radioactive Space Monkey T-Shirt & Space Monkey Art T-Shirt, Monkey's Paradise T-Shirt, Retro Defender of the Faith T-Shirt, Penetrator T-Shirt, Defender of the Faith T-Shirt, Love Professor His T-Shirt & Love Professor Hers T-Shirt, Love Professor Nemesis T-Shirt, Love Professor Friendzoned T-Shirt, Love Professor Secrets T-Shirt & Love Professor Score T-Shirt, Shiny Wasabi Kitty Claw T-Shirt, Pixtro T-Shirt, Akedo T-Shirt & Arcade Trophy T-Shirt
	unlock_packed_bools(28224, 28227) --White Dog With Cone T-Shirt, Yellow Dog With Cone T-Shirt, Dog With Cone Slip-Ons & Dog With Cone Chain, Refuse Collectors Outfit, Undertakers Outfit, Valet Outfit
	unlock_packed_bools(28229, 28249) --Prison Guards, FIB Suits, Black Scuba, Gruppe Sechs Gear, Bugstars Uniforms, Maintenance Outfit, Yung Ancestors Outfit, Firefighter Outfit, Orderly Armor Outfit, Upscale Armor Outfit, Evening Armor Outfit, Reinforced: Padded Combat Outfit, Reinforced: Bulk Combat Outfit, Reinforced: Compact Combat Outfit, Balaclava Crook Outfit, Classic Crook Outfit, High-end Crook Outfit, Infiltration: Upgraded Tech Outfit, Infiltration: Advanced Tech Outfit, Infiltration: Modernized Tech Outfit, Degenatron Glitch T-Shirt
	unlock_packed_bools(28254, 28255) --Get Metal T-Shirt / Axe of Fury T-Shirt, 11 11 T-Shirt / Axe of Fury T-Shirt
	unlock_packed_bools(30230, 30251) --Movie Props, Space Interloper Outfit
	unlock_packed_bools(30254, 30295) --King Of QUB3D T-Shirt, Qubism T-Shirt, God Of QUB3D T-Shirt, QUB3D Boxart T-Shirt, Qub3d Qub3s T-Shirt, Yacht Captain Outfit, BCTR Aged T-Shirt, BCTR T-Shirt, Cultstoppers Aged T-Shirt, Cultstoppers T-Shirt, Daily Globe Aged T-Shirt, Daily Globe T-Shirt, Eyefind Aged T-Shirt, Eyefind T-Shirt, Facade Aged T-Shirt, Facade T-Shirt, Fruit Aged T-Shirt, Fruit T-Shirt, LSHH Aged T-Shirt, LSHH T-Shirt, MyRoom Aged T-Shirt, MyRoom T-Shirt, Rebel Aged T-Shirt, Rebel T-Shirt, Six Figure Aged T-Shirt, Six Figure T-Shirt, Trash Or Treasure Aged T-Shirt, Trash Or Treasure T-Shirt, Tw@ Logo Aged T-Shirt, Tw@ Logo T-Shirt, Vapers Den Aged T-Shirt, Vapers Den T-Shirt, WingIt Aged T-Shirt, WingIt T-Shirt, ZiT Aged T-Shirt, ZiT T-Shirt, Green Dot Tech Mask, Orange Dot Tech Mask, Blue Dot Tech Mask, Pink Dot Tech Mask, Lemon Sports Track Pants, Lemon Sports Track Top
	unlock_packed_bools(30524, 30557) --Grotti Aged T-Shirt, Lampadati Aged T-Shirt, Ocelot Aged T-Shirt, Overflod Aged T-Shirt, Pegassi Aged T-Shirt, Pfister Aged T-Shirt, Vapid Aged T-Shirt, Weeny Aged T-Shirt, Blue The Diamond Resort LS Aged T-Shirt, KJAH Radio Aged T-Shirt, K-Rose Aged T-Shirt, Emotion 98.3 Aged T-Shirt, KDST Aged T-Shirt, Bounce FM Aged T-Shirt, Fake Vapid Aged T-Shirt, I Married My Dad Aged T-Shirt, ToeShoes Aged T-Shirt, Vanilla Unicorn Aged T-Shirt, Steel Horse Solid Logo Aged T-Shirt, Black Western Logo Aged T-Shirt, White Nagasaki Aged T-Shirt, Black Principe Aged T-Shirt, Noise Aged T-Shirt, Noise Rockstar Logo Aged T-Shirt, Razor Aged T-Shirt, White Rockstar Camo Aged T-Shirt, LSUR Aged T-Shirt, Rebel Radio Aged T-Shirt, Channel X Aged T-Shirt, Albany Vintage Aged T-Shirt, Benefactor Aged T-Shirt, Bravado Aged T-Shirt, Declasse Aged T-Shirt, Dinka Aged T-Shirt
	unlock_packed_bools(30563, 30693) --Panther Varsity Jacket Closed, Panther Tour Jacket, Broker Prolaps Basketball Top, Panic Prolaps Basketball Top, Gussét Frog T-Shirt, Warped Still Slipping T-Shirt, Yellow Still Slipping T-Shirt, Black Rockstar T-Shirt, Black Exsorbeo 720 Logo T-Shirt, Manor PRBG T-Shirt, Manor Tie-dye T-Shirt, Open Wheel Sponsor T-Shirt, Rockstar Yellow Pattern T-Shirt, Rockstar Gray Pattern T-Shirt, Rockstar Rolling T-Shirt, Santo Capra Patterns Sweater, Rockstar Studio Colors Sweater, Bigness Jackal Sweater, Bigness Tie-dye Sweater, Bigness Faces Sweater, Broker Prolaps Basketball Shorts, Panic Prolaps Basketball Shorts, Exsorbeo 720 Sports Shorts, Bigness Tie-dye Sports Pants, Enus Yeti Forwards Cap, 720 Forwards Cap, Exsorbeo 720 Forwards Cap, Güffy Double Logo Forwards Cap, Rockstar Forwards Cap, Blue Bangles (L), Red Bangles (L), Pink Bangles (L), Yellow Bangles (L), Orange Bangles (L), Green Bangles (L), Red & Blue Bangles (L), Yellow & Orange Bangles (L), Green & Pink Bangles (L), Rainbow Bangles (L), Sunset Bangles (L), Tropical Bangles (L), Blue & Pink Glow Shades, Red Glow Shades, Orange Glow Shades, Yellow Glow Shades, Green Glow Shades, Blue Glow Shades, Pink Glow Shades, Blue & Magenta Glow Shades, Purple & Yellow Glow Shades, Blue & Yellow Glow Shades, Pink & Yellow Glow Shades, Red & Yellow Glow Shades, Blue Glow Necklace, Red Glow Necklace, Pink Glow Necklace, Yellow Glow Necklace, Orange Glow Necklace, Green Glow Necklace, Festival Glow Necklace, Carnival Glow Necklace, Tropical Glow Necklace, Hot Glow Necklace, Neon Glow Necklace, Party Glow Necklace, Sunset Glow Necklace, Radiant Glow Necklace, Sunrise Glow Necklace, Session Glow Necklace, Combat Shotgun, Perico Pistol, White Keinemusik T-Shirt, Blue Keinemusik T-Shirt, Moodymann T-Shirt, Palms Trax T-Shirt, Midnight Tint Oversize Shades, Sunset Tint Oversize Shades, Black Tint Oversize Shades, Blue Tint Oversize Shades, Gold Tint Oversize Shades, Green Tint Oversize Shades, Orange Tint Oversize Shades, Red Tint Oversize Shades, Pink Tint Oversize Shades, Yellow Tint Oversize Shades, Lemon Tint Oversize Shades, Gold Rimmed Oversize Shades, White Checked Round Shades, Pink Checked Round Shades, Yellow Checked Round Shades, Red Checked Round Shades, White Round Shades, Black Round Shades, Pink Tinted Round Shades, Blue Tinted Round Shades, Green Checked Round Shades, Blue Checked Round Shades, Orange Checked Round Shades, Green Tinted Round Shades, Brown Square Shades, Yellow Square Shades, Black Square Shades, Tortoiseshell Square Shades, Green Square Shades, Red Square Shades, Pink Tinted Square Shades, Blue Tinted Square Shades, White Square Shades, Pink Square Shades, All White Square Shades, Mono Square Shades, Green Calavera Mask, Navy Calavera Mask, Cherry Calavera Mask, Orange Calavera Mask, Purple Calavera Mask, Dark Blue Calavera Mask, Lavender Calavera Mask, Yellow Calavera Mask, Pink Calavera Mask, Neon Stitch Emissive Mask, Vibrant Stitch Emissive Mask, Pink Stitch Emissive Mask, Blue Stitch Emissive Mask, Neon Skull Emissive Mask, Vibrant Skull Emissive Mask, Pink Skull Emissive Mask, Orange Skull Emissive Mask, Dark X-Ray Emissive Mask, Bright X-Ray Emissive Mask, Purple X-Ray Emissive Mask
	unlock_packed_bools(30699, 30704) --Palms Trax LS T-Shirt, Moodymann Whatupdoe T-Shirt, Moodymann Big D T-Shirt, Keinemusik Cayo Perico T-Shirt, Still Slipping Blarneys T-Shirt, Still Slipping Friend T-Shirt
	unlock_packed_bools(31708, 31714) --CircoLoco Records - Blue EP, CircoLoco Records - Green EP, CircoLoco Records - Violet EP, CircoLoco Records - Black EP, Moodymann - Kenny's Backyard Boogie, NEZ - You Wanna?, NEZ ft. Schoolboy Q - Let's Get It
	unlock_packed_bools(31736, 31736) --The Frontier Outfit
	unlock_packed_bools(31755, 31755) --Auto Shop Race 'n Chase
	unlock_packed_bools(31760, 31764) --Faces of Death T-Shirt, Straight to Video T-Shirt, Monkey See Monkey Die T-Shirt, Trained to Kill T-Shirt, The Director T-Shirt
	unlock_packed_bools(31766, 31777) --Sprunk Forwards Cap, eCola Forwards Cap, Black Banshee T-Shirt, Blue Banshee T-Shirt, LS Customs T-Shirt, Rockstar Games Typeface T-Shirt, Wasted! T-Shirt, Baseball Bat T-Shirt, Knuckleduster T-Shirt, Rampage T-Shirt, Penitentiary Coveralls, LS Customs Coveralls
	unlock_packed_bools(31779, 31796) --The Ringleader Outfit, The Knuckles Outfit, The Breaker Outfit, The Dealer Outfit, Bearsy, Banshee Hoodie, eCola Varsity, Sprunk Varsity, LS Customs Varsity, LS Customs Tour Jacket, eCola Bodysuit, Sprunk Bodysuit, Sprunk Chute Bag, eCola Chute Bag, Halloween Chute Bag, Sprunk Chute, eCola Chute, Halloween Chute
	unlock_packed_bools(31805, 31808) --The Old Hand Outfit, The Overworked Outfit, The Longshoreman Outfit, The Underpaid Outfit
	unlock_packed_bools(31810, 31824) --Annis ZR350, Pfister Comet S2, Dinka Jester RR, Emperor Vectre, Ubermacht Cypher, Pfister Growler, Karin Calico GTF, Annis Remus, Vapid Dominator ASP, Karin Futo GTX, Dinka RT3000, Vulcar Warrener HKR, Karin Sultan RS Classic, Vapid Dominator GTT, Karin Previon
	unlock_packed_bools(31826, 31858) --Emperor Forwards Cap / Emperor Backwards Cap, Beige Knit Sneakers, Gray Emperor Classic Hoodie, Pursuit Series (Gameplay), Cyan Check Sleeveless Puffer, Dinka SPL (Wheel Mod), Blue Hayes Retro Racing, White Emperor Motors T-Shirt, Quick Fix (Gameplay), Cyan Check Puffer, Euros - Speed Trail (Livery), Never Barcode Print Hoodie, Hayes Modern Racing, Diversion (Gameplay), Gray Leather Bomber, Futo GTX - Chokusen Dorifuto (Livery), Karin Forwards Cap / Karin Backwards Cap, Cream Knit Sneakers, Private Takeover (Gameplay), Yellow Pfister Hoodie, Retro Turbofan (Wheel Mod), Red Check Sleeveless Puffer, White Hayes Retro Racing, Setup (Gameplay), Navy Emperor Motors T-Shirt, RT3000 - Stance Andreas (Livery), Red Check Puffer, Never Triangle Print Hoodie, Wingman (Gameplay), LTD Modern Racing, Jester RR - 10 Minute Car (Livery), Green Crowex Pro Racing Suit, Mustard Tan Leather Bomber
	unlock_packed_bools(31860, 31863) --Omnis Forwards Cap / Omnis Backwards Cap, Conical Turbofan (Wheel Mod), Black Knit Sneakers, Green Emperor Classic Hoodie
	unlock_packed_bools(31865, 31868) --Green Geo Sleeveless Puffer, ZR350 - Atomic Drift Team (Livery), White Globe Oil Retro Racing, Yellow Annis Rally T-Shirt
	unlock_packed_bools(31870, 31928) --Green Geo Puffer, Warrener HKR - Classic Vulcar (Livery), Life ZigZag Print Hoodie, Blue Dinka Modern Racing, Gray Benefactor Racing Suit, Orange Tan Leather Bomber, Ice Storm (Wheel Mod), Annis Forwards Cap / Annis Backwards Cap, Gray & Purple Knit Sneakers, Black Crowex Pro Racing Suit, Gray Pfister Hoodie, Calico GTF - Fukaru Rally (Livery), Black Geo Sleeveless Puffer, Green Crowex Retro Racing, Blue Xero Gas Racing Suit, Blue Annis Noise T-Shirt, Remus - Blue Lightning (Livery), Black Geo Puffer, Life Static Print Hoodie, Dark Benefactor Racing Suit, Red Dinka Modern Racing, Super Turbine (Wheel Mod), Chestnut Tan Leather Bomber, Vapid Forwards Cap / Vapid Backwards Cap, Red Xero Gas Racing Suit, Gray & Magenta Knit Sneakers, Dominator GTT - Oldschool Oval (Livery), Black Vapid Ellie Hoodie, Cream Bigness Sleeveless Puffer, Wildstyle Racing Suit, Red Globe Oil Retro Racing, Tailgater S - Crevis Race (Livery), Light Dinka T-Shirt, Cream Bigness Puffer, Modern Mesh (Wheel Mod), Never Crosshair Print Hoodie, Euros - Drift Tribe (Livery), Yellow Vapid Modern Racing, Dark Tan Leather Bomber, Forged Star (Wheel Mod), Light Dinka Forwards Cap / Light Dinka Backwards Cap, Futo GTX - Drift King (Livery), Gray & Aqua Knit Sneakers, Gray Karin Hoodie, Showflake (Wheel Mod), Purple Bigness Sleeveless Puffer, RT3000 - Atomic Motorsport (Livery), Black Crowex Retro Racing, Black Annis Noise T-Shirt, Giga Mesh (Wheel Mod), Purple Bigness Puffer, Jester RR - Yogarishima (Livery), Hiding Print Hoodie, Ubermacht Modern Racing, Mesh Meister (Wheel Mod), Ox Blood Leather Bomber, ZR350 - Kisama Chevrons (Livery), Dark Dinka Forwards Cap / Dark Dinka Backwards Cap, White & Pink Knit Sneakers
	unlock_packed_bools(31930, 31933) --Navy Vapid Ellie Hoodie, Warrener HKR - Classic Vulcar Alt (Livery), Green Aztec Sleeveless Puffer, Calico GTF - Disruption Rally (Livery)
	unlock_packed_bools(31935, 31938) --Blue Atomic Retro Racing, Remus - Annis Tech (Livery), Dark Dinka T-Shirt, Dominator GTT - Resto Mod Racer (Livery)
	unlock_packed_bools(31940, 31943) --Green Aztec Puffer, Tailgater S - Redwood (Livery), Life Binary Print Hoodie, Euros - King Scorpion (Livery)
	unlock_packed_bools(31945, 31948) --White Güffy Modern Racing, Futo GTX - Tandem Battle (Livery), Dark Nut Leather Bomber, RT3000 - Dinka Performance (Livery)
	unlock_packed_bools(31950, 31953) --White Güffy Forwards Cap / White Güffy Backwards Cap, Jester RR - Fuque (Livery), Gray & Yellow Knit Sneakers, ZR350 - Winning is Winning (Livery)
	unlock_packed_bools(31955, 31958) --Navy Karin Hoodie, Warrener HKR - Redwood Racing (Livery), Black Aztec Sleeveless Puffer, Calico GTF - Redwood Rally (Livery)
	unlock_packed_bools(31960, 31963) --Yellow Atomic Retro Racing, Remus - Atomic Motorsport (Livery), Light Vapid Ellie T-Shirt, Dominator GTT - Flame On (Livery)
	unlock_packed_bools(31965, 31968) --Black Aztec Puffer, Tailgater S - Disruption Logistics (Livery), Lucky Penny Print Hoodie, Euros - Sprunk Light (Livery)
	unlock_packed_bools(31970, 31973) --Black Güffy Modern Racing, Futo GTX - Itasha Drift (Livery), Navy Blue Leather Bomber, RT3000 - Shiny Wasabi Kitty (Livery)
	unlock_packed_bools(31975, 31978) --Black Güffy Forwards Cap / Black Güffy Backwards Cap, Jester RR - Xero Gas Rally (Livery), Grayscale Knit Sneakers, ZR350 - Annis Racing Tribal (Livery)
	unlock_packed_bools(31980, 31983) --Light Obey Hoodie, Warrener HKR - Vulcar Turbo (Livery), Cream Splinter Sleeveless Puffer, Calico GTF - Prolaps Rally (Livery)
	unlock_packed_bools(31985, 31988) --Blue Redwood Retro Racing, Remus - Shiny Wasabi Kitty (Livery), Dark Vapid Ellie T-Shirt, Dominator GTT - The Patriot (Livery)
	unlock_packed_bools(31990, 31993) --Cream Splinter Puffer, Tailgater S - Colored Camo Livery (Livery), Light Dinka Modern Racing, Euros - Candybox Gold (Livery)
	unlock_packed_bools(31995, 31998) --Dark Green Leather Bomber, Futo GTX - Stance Andreas (Livery), Hellion Forwards Cap / Hellion Backwards Cap, RT3000 - Total Fire (Livery)
	unlock_packed_bools(32000, 32003) --Gray & Cyan Knit Sneakers, Jester RR - Split Siberia (Livery), Black Ubermacht Hoodie, ZR350 - Annis Racing Tribal Alt (Livery)
	unlock_packed_bools(32005, 32008) --Dark Splinter Sleeveless Puffer, Warrener HKR - Vulcar Turbo Alt (Livery), White Logo Ruiner T-Shirt, Calico GTF - Xero Gas Rally (Livery)
	unlock_packed_bools(32010, 32013) --Dark Splinter Puffer, Remus - Fukaru Motorsport (Livery), Dark Dinka Modern Racing, Dominator GTT - 70s Street Machine (Livery)
	unlock_packed_bools(32015, 32018) --White Leather Bomber, Tailgater S - Army Camo Solid (Livery), Lampadati Forwards Cap / Lampadati Backwards Cap, Lilac Knit Sneakers
	unlock_packed_bools(32020, 32023) --Dark Obey Hoodie, Green Latin Sleeveless Puffer, Gray Vapid Truck T-Shirt, Green Latin Puffer
	unlock_packed_bools(32025, 32028) --Blue Bravado Modern Racing, Red Leather Bomber, White Knit Sneakers, Red Ubermacht Hoodie
	unlock_packed_bools(32030, 32033) --Black Latin Sleeveless Puffer, White Obey Omnis T-Shirt, Black Latin Puffer, Black Bravado Modern Racing
	unlock_packed_bools(32035, 32038) --Ice Knit Sneakers, Blue Annis Noise Hoodie, Orange Camo Sleeveless Puffer, Light Blue Vapid Truck T-Shirt
	unlock_packed_bools(32040, 32043) --Orange Camo Puffer, Imponte Modern Racing, Aqua Sole Knit Sneakers, Green Emperor Modern Hoodie
	unlock_packed_bools(32045, 32048) --Aqua Camo Sleeveless Puffer, Black Vapid USA T-Shirt, Aqua Camo Puffer, Xero Modern Racing
	unlock_packed_bools(32050, 32053) --Smoky Knit Sneakers, Gray Annis Noise Hoodie, Gradient Sleeveless Puffer, Red Obey Omnis T-Shirt
	unlock_packed_bools(32055, 32058) --Gradient Puffer, White & Gold Knit Sneakers, Dark Emperor Modern Hoodie, Red Logo Ruiner T-Shirt
	unlock_packed_bools(32060, 32063) --Orange Knit Sneakers, Light Dinka Hoodie, Blue Bravado Gauntlet T-Shirt, Pink Vibrant Knit Sneakers
	unlock_packed_bools(32065, 32074) --Gold Lampadati Hoodie, Black Bravado Gauntlet T-Shirt, Lime Highlight Knit Sneakers, Dark Dinka Hoodie, Pfister Pocket T-Shirt, Purple Fade Knit Sneakers, Karin 90s T-Shirt, Teal Knit Sneakers, Black & Lime Knit Sneakers, Cyan Fade Knit Sneakers
	unlock_packed_bools(32084, 32084) --Red Highlight Knit Sneakers
	unlock_packed_bools(32094, 32094) --Broker Forwards Cap / Broker Backwards Cap
	unlock_packed_bools(32104, 32104) --Annis Hellion 4x4 T-Shirt
	unlock_packed_bools(32114, 32114) --Pink Gradient Sleeveless Puffer
	unlock_packed_bools(32124, 32124) --Fade Broker Modern Racing
	unlock_packed_bools(32134, 32134) --Tricolor Lampadati Hoodie
	unlock_packed_bools(32144, 32144) --Mono Leather Bomber
	unlock_packed_bools(32154, 32154) --Pink Gradient Puffer
	unlock_packed_bools(32164, 32164) --Red Redwood Retro Racing
	unlock_packed_bools(32174, 32174) --Crash Out Print Hoodie
	unlock_packed_bools(32224, 32224) --Tuned For Speed Racing Suit
	unlock_packed_bools(32319, 32323) --police5 trade price
	unlock_packed_bools(34262, 34361) --LD Organics
	unlock_packed_bools(32273, 32273) --White Born x Raised T-Shirt
	unlock_packed_bools(32275, 32275) --Circoloco T-Shirt
	unlock_packed_bools(32287, 32287) --Dr. Dre
	unlock_packed_bools(32295, 32311) --Orange Goldfish, Purple Goldfish, Bronze Goldfish, Clownfish, Juvenile Gull, Sooty Gull, Black-headed Gull, Herring Gull, Brown Sea Lion, Dark Sea Lion, Spotted Sea Lion, Gray Sea Lion, Green Festive T-Shirt, Red Festive T-Shirt, Orange DJ Pooh T-Shirt, White WCC DJ Pooh T-Shirt, Blue WCC DJ Pooh T-Shirt
	unlock_packed_bools(32315, 32316) --Navy Coveralls, Gray Coveralls, Marathon Hoodie
	unlock_packed_bools(32366, 32366) --Declasse Draugur (Trade Price)
	unlock_packed_bools(32407, 32408) --Bottom Dollar Jacket, The Bottom Dollar
	unlock_packed_bools(34372, 34375) --Horror Pumpkin, Dinka Kanjo SJ (Trade Price), Dinka Postlude (Trade Price), Black LD Organics Cap / White LD Organics T-Shirt
	unlock_packed_bools(34378, 34411) --Junk Energy Chute Bag, Junk Energy Chute, Pumpkin T-Shirt, Pacific Standard Varsity, Pacific Standard Sweater, Cliffford Varsity, Cliffford Hoodie, The Diamond Casino Varsity, The Diamond Strike Vest, Strickler Hat, Sinsimito Cuban Shirt, CLO_E1M_O_MUM, Manor Geo Forwards Cap, Apricot Perseus Forwards Cap, Still Slipping Tie-dye Forwards Cap, Lemon Festive Beer Hat, Bigness Hand-drawn Dome, Grimy Stitched, Pale Stitched, Gray Cracked Puppet, Blushed Cracked Puppet, Green Emissive Lady Liberty, President, Gold Beat Off Earphones, White Spiked Gauntlet (L), Manor Geo Hoodie, Pumpkin Hoodie, LS Smoking Jacket, Hand-Drawn Biker Bomber, Have You Seen Me? Sweater, Still Slipping Tie-dye T-Shirt, Manor Geo Track Pants, Apricot Perseus Track Pants, Sasquatch
	unlock_packed_bools(34415, 34510) --Green Vintage Frank, Brown Vintage Frank, Gray Vintage Frank, Pale Vintage Mummy, Green Vintage Mummy, Weathered Vintage Mummy, Conquest, Death, Famine, War, Black Tech Demon, Gray Tech Demon, White Tech Demon, Green Tech Demon, Orange Tech Demon, Purple Tech Demon, Pink Tech Demon, Red Detail Tech Demon, Blue Detail Tech Demon, Yellow Detail Tech Demon, Green Detail Tech Demon, Pink Detail Tech Demon, Orange & Gray Tech Demon, Red Tech Demon, Camo Tech Demon, Aqua Camo Tech Demon, Brown Digital Tech Demon, Gold Tech Demon, Orange & Cream Tech Demon, Green & Yellow Tech Demon, Pink Floral Tech Demon, Black & Green Tech Demon, White & Red Tech Demon, Carbon Tech Demon, Carbon Teal Tech Demon, Black & White Tech Demon, Painted Tiger, Gray Painted Tiger, Gold Painted Tiger, Ornate Painted Tiger, Gray Yeti Flat Cap, Woodland Yeti Flat Cap, Green FB Flat Cap, Blue FB Flat Cap, Gray Lézard Flat Cap, Green Lézard Flat Cap, Light Plaid Lézard Flat Cap, Dark Plaid Lézard Flat Cap, White Striped Lézard Flat Cap, Red Striped Lézard Flat Cap, Brown Crevis Flat Cap, Gray Crevis Flat Cap, Black Broker Flat Cap, Burgundy Broker Flat Cap, White Beat Off Earphones, Yellow Beat Off Earphones, Salmon Beat Off Earphones, Orange Beat Off Earphones, Purple Beat Off Earphones, Pink Beat Off Earphones, Turquoise Beat Off Earphones, Blue Beat Off Earphones, Black Beat Off Earphones, Gray Beat Off Earphones, Teal Beat Off Earphones, Red Beat Off Earphones, Wild Striped Pool Sliders, Neon Striped Pool Sliders, Black SC Coin Pool Sliders, White SC Coin Pool Sliders, Black SC Pattern Pool Sliders, Pink SC Pattern Pool Sliders, Blue SC Pattern Pool Sliders, Camo Yeti Pool Sliders, Gray Camo Yeti Pool Sliders, Black Bigness Pool Sliders, Purple Bigness Pool Sliders, Camo Bigness Pool Sliders, Black Blagueurs Pool Sliders, White Blagueurs Pool Sliders, Pink Blagueurs Pool Sliders, Gray Cimicino Pool Sliders, Rouge Cimicino Pool Sliders, Navy DS Pool Sliders, Red DS Pool Sliders, Floral Güffy Pool Sliders, Green Güffy Pool Sliders, White Güffy Pool Sliders, Blue Heat Pool Sliders, Red ProLaps Pool Sliders, Black LD Organics T-Shirt, Green UFO Boxer Shorts, White UFO Boxer Shorts, Gray Believe Backwards Cap, Black Believe Backwards Cap, Glow Believe Backwards Cap
	unlock_packed_bools(34703, 34705) --White Vintage Vampire, Dark Green Vintage Vampire, Light Green Vintage Vampire
	unlock_packed_bools(34730, 34737) --Green Festive Beer Hat, Red Snowflake Beer Hat, Blue Snowflake Beer Hat, Red Holly Beer Hat, Pisswasser Festive Beer Hat, Blarneys Festive Beer Hat, Red Reindeer Beer Hat, Borfmas Beer Hat
	unlock_packed_bools(34761, 34761) --Gooch Outfit
	unlock_packed_bools(36630, 36654) --Snowman
	unlock_packed_bools(36699, 36770) --Ice Vinyl, Ice Vinyl Cut, Mustard Vinyl, Mustard Vinyl Cut, Dark Blue Vinyl, Dark Blue Vinyl Cut, Yellow SN Rooster Revere Collar, Red SC Dragon Revere Collar, Blue SC Dragon Revere Collar, Camo Roses Slab Denim, Orange Trickster Type Denim, Black VDG Cardigan, Blue DS Panthers Cardigan, Red DS Panthers Cardigan, Pink SC Baroque Cardigan, Downtown Cab Co. Revere Collar, Valentines Blazer, 420 Smoking Jacket, Yeti Year of the Rabbit T-Shirt, Gray Yeti Combat Shirt, Black Sprunk Festive, Dark Logger Festive, White Logger Festive, Green Logger Festive, Red Logger Festive, Blue Patriot Logo Festive, Black Patriot Logo Festive, Blue Patriot Festive, Red Patriot Festive, Red Pisswasser Festive, Gold Pisswasser Festive, Red Pisswasser Logo Festive, Gold Pisswasser Logo Festive, Green Pride Brew Festive, Yellow Pride Brew Festive, Yellow Holly Pride Festive, White Holly Pride Festive, Sprunk Snowflakes Festive, Broker Checkerboard T-Shirt, Yeti Ape Tucked T-Shirt, Black Bigness Ski, White Bigness Ski, Black Enema Flourish Ski, Teal Enema Flourish Ski, Magenta Enema Flourish Ski, Camo Roses Slab Forwards, Lime Leopard Slab Forwards, Red SC Dragon Embroidered, Classic DS Tiger Embroidered, Gray DS Tiger Embroidered, Black VDG Bandana Wide, Orange Trickster Type Wide, Gray Yeti Battle Pants, Broker Checkerboard Cargos, 420 Smoking Pants, Camo Roses Slab Canvas, Lime Leopard Slab Canvas, White Signs Squash Ugglies & Socks, Traditional Painted Rabbit, Twilight Painted Rabbit, Noh Painted Rabbit, Lime SC Coin Wraps, Pink SC Coin Wraps, Tan Bracelet Ensemble, Red Manor Round Brow Shades, Le Chien Whistle Necklace, Heartbreak Pendant, Rabbit, Budonk-adonk!, The Red-nosed, The Nutcracker, The GoPostal
	unlock_packed_bools(36774, 36788) --Johnny On The Spot Polo, The Gooch Mask, Snowman Outfit, Gold New Year Glasses, Silver New Year Glasses, Rainbow New Year Glasses, Yellow Holly Beer Hat, Green Reindeer Beer Hat, Zebra Dome, Purple Snakeskin Spiked, Manor Surano Jacket, Pistol Mk II - Season's Greetings (Livery), Pump Shotgun - Dildodude Camo (Livery), Micro SMG - Dildodude Camo (Livery)
	unlock_packed_bools(36809, 36809) --Nemesis T-Shirts
	unlock_packed_bools(41316, 41325) --Ghosts Exposed
	unlock_packed_bools(41593, 41593) --The Merryweather Outfit
	unlock_packed_bools(41656, 41659) --Squaddie (Trade Price), Suede Bucks Finish, Employee of the Month Finish, Uncle T Finish
	unlock_packed_bools(41671, 41671) --Manchez Scout (Trade Price)
	unlock_packed_bools(41802, 41802) --Johnny On The Spot Polo
	unlock_packed_bools(41894, 41894) --Hinterland Work T-Shirt
	unlock_packed_bools(41897, 41902) --Love Fist T-Shirt, San Andreas Federal Reserve T-Shirt, Los Santos, San Andreas T-Shirt, Heist Mask T-Shirt, Los Santos Map T-Shirt, PRB T-Shirt
	unlock_packed_bools(41915, 41980) --LS Pounders Cap, Vom Feuer Camo Cap, Western MC Cap, Red & White Ammu-Nation Cap, Santo Capra Cap, Alpine Hat, Alien Tracksuit Pants, Scarlet Vintage Devil Mask, Amber Vintage Devil Mask, Green Vintage Devil Mask, Green Vintage Witch Mask, Yellow Vintage Witch Mask, Orange Vintage Witch Mask, Green Vintage Skull Mask, White Vintage Skull Mask, Brown Vintage Skull Mask, Orange Vintage Werewolf Mask, Blue Vintage Werewolf Mask, Brown Vintage Werewolf Mask, Green Vintage Zombie Mask, Brown Vintage Zombie Mask, Teal Vintage Zombie Mask, Turkey Mask, Royal Calacas Mask, Maritime Calacas Mask, Romance Calacas Mask, Floral Calacas Mask, Stanier LE Cruiser (Trade Price), The Homie, The Retired Criminal, The Groupie, Black SC Ornate Mini Dress, Dark Manor Racing Suit, Bright Manor Racing Suit, Hinterland Bomber Jacket, Red Happy Moon T-Shirt, Black Happy Moon T-Shirt, White Happy Moon T-Shirt, Rockstar Says Relax Tucked T-Shirt, Trevor Heist Mask Tucked T-Shirt, Franklin Heist Mask Tucked T-Shirt, Michael Heist Mask Tucked T-Shirt, Bugstars Tucked T-Shirt, STD Contractors Tucked T-Shirt, Black Los Santos Tucked T-Shirt, San Andreas Republic Tucked T-Shirt, Go Go Space Monkey Tucked T-Shirt, Vom Feuer Camo Tucked T-Shirt, Black SC Ornate Tucked T-Shirt, Warstock Tucked T-Shirt, Western San Andreas Tucked T-Shirt, Ride or Die Tucked T-Shirt, Bourgeoix Tucked T-Shirt, Blêuter'd Tucked T-Shirt, Cherenkov Tucked T-Shirt, Moodymann Portrait Tucked T-Shirt, Rockstar Silver Jubilee Tucked T-Shirt, Rockstar NY Hoodie, Dollar Daggers Hoodie, Merryweather Hoodie, Go Go Space Monkey Hoodie, Rockstar Lion Crest T-Shirt, Ammu-Nation Baseball T-Shirt, Alien Hooded Tracksuit Top, Manor Benefactor Surano T-Shirt, LS Smoking Jacket
	unlock_packed_bools(41994, 41994) --Junk Energy Racing Suit
	unlock_packed_bools(41996, 41996) --??? T-Shirt
	unlock_packed_bools(42054, 42054) --Strapz Bandana
	unlock_packed_bools(42063, 42063) --The LS Panic
	unlock_packed_bools(42068, 42069) --Snowman Finish, Santa's Helper Finish
	unlock_packed_bools(42111, 42111) --The Coast Guard
	unlock_packed_bools(42119, 42123) --Yeti Outfit, Snowman Finish, Santa's Helper Finish, Skull Santa Finish, riot unlocked
	unlock_packed_bools(42125, 42125) --riot trade price
	unlock_packed_bools(42128, 42146) --eCola Festive Sweater, Sprunk Festive Sweater, 1 Party Hat, 2 Party Hat, 3 Party Hat, 4 Party Hat, 5 Party Hat, 6 Party Hat, 7 Party Hat, 8 Party Hat, 9 Party Hat, 10 Party Hat, 11 Party Hat, 12 Party Hat, 13 Party Hat, 14 Party Hat, 15 Party Hat, Bronze Party Outfit, Silver Party Outfit
	unlock_packed_bools(42148, 42149) --Snowball Launcher, DâM-FunK - Even the Score
	unlock_packed_bools(42152, 42190) --The LSDS, The McTony Security, Wooden Dragon Mask, Contrast Dragon Mask, Regal Dragon Mask, Midnight Dragon Mask, Pink Heart Shades, Red Heart Shades, Orange Heart Shades, Yellow Heart Shades, Green Heart Shades, Blue Heart Shades, Purple Heart Shades, Black Heart Shades, Fireworks Bucket Hat, Stars and Stripes Bucket Hat, Lady Liberty Bucket Hat, Green Festive Tree Hat, Red Festive Tree Hat, Brown Festive Reindeer Hat, White Festive Reindeer Hat, Bronze New Year's Hat, Gold New Year's Hat, Silver New Year's Hat, Sprunk x eCola Bodysuit, Rockstar Racing Suit, Rockstar Helmet, Coil Earth Day Tee, IR Earth Day Tee, White High Brass Tee, Black High Brass Tee, Black Lunar New Year Tee, Bigness Carnival Sports Tee, Green 420 Dress, Red Lunar New Year Dress, Carnival Sun Dress, Carnival Bandana, Bigness Carnival Bucket Hat, Black 420 Forwards Cap
	unlock_packed_bools(42217, 42217) --Cluckin' Bell Forwards Cap
	unlock_packed_bools(42233, 42234) --BOXVILLE6, BENSON2
	unlock_packed_bools(42239, 42242) --CAVALCADE3, IMPALER5, POLGAUNTLET, DORADO
	unlock_packed_bools(42244, 42247) --BALLER8, TERMINUS, BOXVILLE6, BENSON2
	unlock_packed_bools(42249, 42249) --Candy Cane
	unlock_packed_bools(42280, 42284) --Unlock pizzaboy, poldominator10, poldorado, polimpaler5, polimpaler6 trade price.
	unlock_packed_bools(42257, 42268) --The Street Artist, Ghosts Exposed 2024, Ghosts Exposed Outfit
	unlock_packed_bools(42286, 42287) --Ludendorff Survivor, Pizza This... Forwards Cap, Pizza This... Backwards Cap, Pizza This... Outfit
	unlock_packed_bools(51189, 51189) -- Spray Can
	unlock_packed_bools(51196, 51197) --The Shocker, Bottom Dollar Bail Enforcement tint for Stungun
	unlock_packed_bools(51215, 51258) --Alpine Outfit, Brown Alpine Hat, Pisswasser Good Time Tee, Gold Pisswasser Shorts, Mid Autumn Festival Shirt, Mid Autumn Festival Sundress (female), Día de Muertos Tee, Halloween Spooky Tee, Black Demon Goat Mask, Red Demon Goat Mask, Tan Demon Goat Mask, Black Creepy Cat Mask, Gray Creepy Cat Mask, Brown Creepy Cat Mask, Gray Hooded Skull Mask, Red Hooded Skull Mask, Blue Hooded Skull Mask, Red Flaming Skull Mask, Green Flaming Skull Mask, Orange Flaming Skull Mask, Orange Glow Skeleton Onesie, Purple Glow Skeleton Onesie, Green Glow Skeleton Onesie, Tan Turkey, Brown Turkey, Rockstar Red Logo Sweater, Silver Gun Necklace, Black Gun Necklace, Gold Gun Necklace, Rose Gun Necklace, Bronze Gun Necklace, Black Yeti Fall Sweater, White Yeti Fall Sweater, Red Yeti Fall Sweater, The Diamond Jackpot Tee, Cobalt Jackal Racing Jersey, Cobalt Jackal Racing Pants, Khaki 247 Chino Pants, Demon Biker Jacket, Purple Güffy Cardigan, SA Denim Biker Jacket, Green 247 Shirt, Barbed Wire Shirt, Ride or Die Gaiter, Pizza This... Tee
	if is_player_male then
		unlock_packed_bools(3483, 3492) --Death Defying T-Shirt (Male), For Hire T-Shirt (Male), Gimme That T-Shirt (Male), Asshole T-Shirt (Male), Can't Touch This T-Shirt (Male), Decorated T-Shirt (Male), Psycho Killer T-Shirt (Male), One Man Army T-Shirt (Male), Shot Caller T-Shirt (Male), Showroom T-Shirt (Male)
		unlock_packed_bools(6082, 6083) --Black Benny's T-Shirt, White Benny's T-Shirt
		unlock_packed_bools(6097, 6097) --I Heart LC (T-Shirt) (Male)
		unlock_packed_bools(6169, 6169) --DCTL T-Shirt (Male)
		unlock_packed_bools(6303, 6304) --Crosswalk Tee (Male), R* Crosswalk Tee (Male)
		unlock_packed_bools(15708, 15708) --Black The Black Madonna Emb. Tee (Male)
		unlock_packed_bools(15710, 15710) --The Black Madonna Star Tee (Male)
		unlock_packed_bools(15717, 15717) --White Dixon Repeated Logo Tee (Male)
		unlock_packed_bools(15720, 15720) --Black Dixon Wilderness Tee (Male)
		unlock_packed_bools(15724, 15724) --Tale Of Us Black Box Tee (Male)
		unlock_packed_bools(15728, 15728) --Black Tale Of Us Emb. Tee (Male)
		unlock_packed_bools(15730, 15730) --Black Solomun Yellow Logo Tee (Male)
		unlock_packed_bools(15732, 15732) --White Solomun Tee (Male)
		unlock_packed_bools(15737, 15737) --??? (Tattoo) (Male)
		unlock_packed_bools(15887, 15887) --Lucky 7s (Tattoo) (Male)
		unlock_packed_bools(15894, 15894) --The Royals (Tattoo) (Male)
		unlock_packed_bools(28393, 28416) --Badlands Revenge II Retro Tee (Male), Badlands Revenge II Pixtro Tee (Male), Degenatron Glitch Tee (Male), Degenatron Logo Tee (Male), The Wizard's Ruin Rescue Tee (Male), The Wizard's Ruin Vow Tee (Male), Space Monkey Art Tee (Male), Crotch Rockets Tee (Male), Street Legal Tee (Male), Get Truckin' Tee (Male), Arcade Trophy Tee (Male), Videogeddon Tee (Male), Insert Coin Tee (Male), Plushie Princess Tee (Male), Plushie Wasabi Kitty Tee (Male), Plushie Master Tee (Male), Plushie Muffy Tee (Male), Plushie Humpy Tee (Male), Plushie Saki Tee (Male), Plushie Grindy Tee (Male), Plushie Poopie Tee (Male), Plushie Smoker Tee (Male), Shiny Wasabi Kitty Claw Tee (Male), Nazar Speaks Tee (Male)
		unlock_packed_bools(28447, 28451) --11 11 Tee (Male), King Of QUB3D Tee (Male), Qubism Tee (Male), God Of QUB3D Tee (Male), QUB3D Boxart Tee (Male)
		unlock_packed_bools(28452, 28478) --Channel X Aged Tee (Male), Rebel Radio Aged Tee (Male), LSUR Aged Tee (Male), Steel Horse Solid Logo Aged Tee (Male), Black Western Logo Aged Tee (Male), White Nagasaki Aged Tee (Male), Black Principe Aged Tee (Male), Albany Vintage Aged Tee (Male), Benefactor Aged Tee (Male), Bravado Aged Tee (Male), Declasse Aged Tee (Male), Dinka Aged Tee (Male), Grotti Aged Tee (Male), Lampadati Aged Tee (Male), Ocelot Aged Tee (Male), Overflod Aged Tee (Male), Pegassi Aged Tee (Male), Pfister Aged Tee (Male), Vapid Aged Tee (Male), Weeny Aged Tee (Male), Toe Shoes Aged T-Shirt (Male), Vanilla Unicorn Aged T-Shirt (Male), Fake Vapid Aged T-Shirt (Male), I Married My Dad Aged T-Shirt (Male), White Rockstar Camo Aged Tee (Male), Razor Aged T-Shirt (Male), Noise Rockstar Logo Aged Tee (Male)
		unlock_packed_bools(30355, 30361) --Noise Aged Tee (Male), Emotion 98.3 Aged T-Shirt (Male), KDST Aged T-Shirt (Male), KJAH Radio Aged T-Shirt (Male), Bounce FM Aged T-Shirt (Male), K-Rose Aged T-Shirt (Male), Blue The Diamond Resort LS Aged Tee (Male)
		unlock_packed_bools(30407, 30410) --White Keinemusik Tee (Male), Blue Keinemusik Tee (Male), Moodymann Tee (Male), Palms Trax Tee (Male)
		unlock_packed_bools(30418, 30422) --Faces of Death Tee (Male), Straight to Video Tee (Male), Monkey See Monkey Die Tee (Male), Trained to Kill Tee (Male), The Director Tee (Male)
		unlock_packed_bools(41273, 41284) --Monkey (Tattoo) (Male), Dragon (Tattoo) (Male), Snake (Tattoo) (Male), Goat (Tattoo) (Male), Rat (Tattoo) (Male), Rabbit (Tattoo) (Male), Ox (Tattoo) (Male), Pig (Tattoo) (Male), Rooster (Tattoo) (Male), Dog (Tattoo) (Male), Horse (Tattoo) (Male), Tiger (Tattoo) (Male)
		unlock_packed_bools(41293, 41293) --Hinterland Work T-Shirt (Male)
	else
		unlock_packed_bools(3496, 3505) --Death Defying Top (Female), For Hire Top (Female), Gimme That Top (Female), Asshole Top (Female), Can't Touch This Top (Female), Decorated Top (Female), Psycho Killer Top (Female), One Man Army Top (Female), Shot Caller Top (Female), Showroom Top (Female)
		unlock_packed_bools(6091, 6092) --Black Benny's T-Shirt, White Benny's T-Shirt
		unlock_packed_bools(6106, 6106) --I Heart LC (T-Shirt) (Female)
		unlock_packed_bools(6181, 6181) --DCTL T-Shirt (Female)
		unlock_packed_bools(6316, 6317) --Crosswalk Tee (Female), R* Crosswalk Tee (Female)
		unlock_packed_bools(15719, 15719) --Black The Black Madonna Emb. Tee (Female)
		unlock_packed_bools(15721, 15721) --The Black Madonna Star Tee (Female)
		unlock_packed_bools(15728, 15728) --White Dixon Repeated Logo Tee (Female)
		unlock_packed_bools(15731, 15731) --Black Dixon Wilderness Tee (Female)
		unlock_packed_bools(15735, 15735) --Tale Of Us Black Box Tee (Female)
		unlock_packed_bools(15739, 15739) --Black Tale Of Us Emb. Tee (Female)
		unlock_packed_bools(15741, 15741) --Black Solomun Yellow Logo Tee (Female)
		unlock_packed_bools(15743, 15743) --White Solomun Tee (Female)
		unlock_packed_bools(15748, 15748) --??? (Tattoo) (Female)
		unlock_packed_bools(15898, 15898) --Lucky 7s (Tattoo) (Female)
		unlock_packed_bools(15905, 15905) --The Royals (Tattoo) (Female)
		unlock_packed_bools(28404, 28427) --Badlands Revenge II Retro Tee (Female), Badlands Revenge II Pixtro Tee (Female), Degenatron Glitch Tee (Female), Degenatron Logo Tee (Female), The Wizard's Ruin Rescue Tee (Female), The Wizard's Ruin Vow Tee (Female), Space Monkey Art Tee (Female), Crotch Rockets Tee (Female), Street Legal Tee (Female), Get Truckin' Tee (Female), Arcade Trophy Tee (Female), Videogeddon Tee (Female), Insert Coin Tee (Female), Plushie Princess Tee (Female), Plushie Wasabi Kitty Tee (Female), Plushie Master Tee (Female), Plushie Muffy Tee (Female), Plushie Humpy Tee (Female), Plushie Saki Tee (Female), Plushie Grindy Tee (Female), Plushie Poopie Tee (Female), Plushie Smoker Tee (Female), Shiny Wasabi Kitty Claw Tee (Female), Nazar Speaks Tee (Female)
		unlock_packed_bools(28458, 28462) --11 11 Tee (Female), King Of QUB3D Tee (Female), Qubism Tee (Female), God Of QUB3D Tee (Female), QUB3D Boxart Tee (Female)
		unlock_packed_bools(28463, 28478) --Channel X Aged Tee (Female), Rebel Radio Aged Tee (Female), LSUR Aged Tee (Female), Steel Horse Solid Logo Aged Tee (Female), Black Western Logo Aged Tee (Female), White Nagasaki Aged Tee (Female), Black Principe Aged Tee (Female), Albany Vintage Aged Tee (Female), Benefactor Aged Tee (Female), Bravado Aged Tee (Female), Declasse Aged Tee (Female), Dinka Aged Tee (Female), Grotti Aged Tee (Female), Lampadati Aged Tee (Female), Ocelot Aged Tee (Female), Overflod Aged Tee (Female)
		unlock_packed_bools(30418, 30421) --White Keinemusik Tee (Female), Blue Keinemusik Tee (Female), Moodymann Tee (Female), Palms Trax Tee (Female)
		unlock_packed_bools(30355, 30372) --Pegassi Aged Tee (Female), Pfister Aged Tee (Female), Vapid Aged Tee (Female), Weeny Aged Tee (Female), Toe Shoes Aged T-Shirt (Female), Vanilla Unicorn Aged T-Shirt (Female), Fake Vapid Aged T-Shirt (Female), I Married My Dad Aged T-Shirt (Female), White Rockstar Camo Aged Tee (Female), Razor Aged T-Shirt (Female), Noise Rockstar Logo Aged Tee (Female), Noise Aged Tee (Female), Emotion 98.3 Aged T-Shirt (Female), KDST Aged T-Shirt (Female), KJAH Radio Aged T-Shirt (Female), Bounce FM Aged T-Shirt (Female), K-Rose Aged T-Shirt (Female), Blue The Diamond Resort LS Aged Tee (Female)
		unlock_packed_bools(30429, 30433) --Faces of Death Tee (Female), Straight to Video Tee (Female), Monkey See Monkey Die Tee (Female), Trained to Kill Tee (Female), The Director Tee (Female)
		unlock_packed_bools(41285, 41296) --Monkey (Tattoo) (Female), Dragon (Tattoo) (Female), Snake (Tattoo) (Female), Goat (Tattoo) (Female), Rat (Tattoo) (Female), Rabbit (Tattoo) (Female), Ox (Tattoo) (Female), Pig (Tattoo) (Female), Rooster (Tattoo) (Female), Dog (Tattoo) (Female), Horse (Tattoo) (Female), Tiger (Tattoo) (Female)
		unlock_packed_bools(41304, 41304) --Hinterland Work T-Shirt (Female)
	end
	stats.set_int(MPX .. "GANGOPS_FLOW_MISSION_PROG", 240)
	stats.set_int(MPX .. "GANGOPS_HEIST_STATUS", 229378)
	stats.set_int(MPX .. "GANGOPS_FLOW_NOTIFICATIONS", 1557)
	stats.set_int(MPX .. "GANGOPS_FLOW_MISSION_PROG", 240)
	stats.set_int(MPX .. "GANGOPS_HEIST_STATUS", 229378)
	stats.set_int(MPX .. "GANGOPS_FLOW_NOTIFICATIONS", 1557)
	stats.set_int(MPX .. "GANGOPS_FLOW_MISSION_PROG", 16368)
	stats.set_int(MPX .. "GANGOPS_HEIST_STATUS", 229380)
	stats.set_int(MPX .. "GANGOPS_FLOW_NOTIFICATIONS", 1557)
	stats.set_int(MPX .. "FIXER_GENERAL_BS", -1)
	stats.set_int(MPX .. "FIXER_COMPLETED_BS", -1)
	stats.set_int(MPX .. "FIXER_STORY_BS", -1)
	stats.set_int(MPX .. "FIXER_STORY_STRAND", -1)
	stats.set_int(MPX .. "FIXER_STORY_COOLDOWN", -1)
	stats.set_int(MPX .. "FIXER_SC_VEH_RECOVERED", 100)
	stats.set_int(MPX .. "FIXER_SC_VAL_RECOVERED", 100)
	stats.set_int(MPX .. "FIXER_SC_GANG_TERMINATED", 100)
	stats.set_int(MPX .. "FIXER_SC_VIP_RESCUED", 100)
	stats.set_int(MPX .. "FIXER_SC_ASSETS_PROTECTED", 100)
	stats.set_int(MPX .. "FIXER_SC_EQ_DESTROYED", 100)
	stats.set_int(MPX .. "FIXER_COUNT", 500)
	stats.set_int(MPX .. "FIXER_EARNINGS", 26340756)
	stats.set_int(MPX .. "PAYPHONE_BONUS_KILL_METHOD", -1)
	stats.set_int("MPPLY_XMASLIVERIES0", -1)
	stats.set_int("MPPLY_XMASLIVERIES1", -1)
	stats.set_int("MPPLY_XMASLIVERIES2", -1)
	stats.set_int("MPPLY_XMASLIVERIES3", -1)
	stats.set_int("MPPLY_XMASLIVERIES5", -1)
	stats.set_int("MPPLY_XMASLIVERIES6", -1)
	stats.set_int("MPPLY_XMASLIVERIES7", -1)
	stats.set_int("MPPLY_XMASLIVERIES8", -1)
	stats.set_int("MPPLY_XMASLIVERIES9", -1)
	stats.set_int("MPPLY_XMASLIVERIES10", -1)
	stats.set_int("MPPLY_XMASLIVERIES11", -1)
	stats.set_int("MPPLY_XMASLIVERIES12", -1)
	stats.set_int("MPPLY_XMASLIVERIES13", -1)
	stats.set_int("MPPLY_XMASLIVERIES14", -1)
	stats.set_int("MPPLY_XMASLIVERIES15", -1)
	stats.set_int("MPPLY_XMASLIVERIES16", -1)
	stats.set_int("MPPLY_XMASLIVERIES17", -1)
	stats.set_int("MPPLY_XMASLIVERIES18", -1)
	stats.set_int("MPPLY_XMASLIVERIES19", -1)
	stats.set_int("MPPLY_XMASLIVERIES20", -1)
	stats.set_int(MPX .. "AWD_WATCH_YOUR_STEP", 15)
	stats.set_int(MPX .. "AWD_TOWER_OFFENSE", 15)
	stats.set_int(MPX .. "AWD_READY_FOR_WAR", 60)
	stats.set_int(MPX .. "AWD_THROUGH_A_LENS", 60)
	stats.set_int(MPX .. "AWD_SPINNER", 60)
	stats.set_int(MPX .. "AWD_YOUMEANBOOBYTRAPS", 15)
	stats.set_int(MPX .. "AWD_MASTER_BANDITO", 12)
	stats.set_int(MPX .. "AWD_SITTING_DUCK", 60)
	stats.set_int(MPX .. "AWD_CROWDPARTICIPATION", 60)
	stats.set_int(MPX .. "AWD_KILL_OR_BE_KILLED", 60)
	stats.set_int(MPX .. "AWD_MASSIVE_SHUNT", 60)
	stats.set_int(MPX .. "AWD_YOURE_OUTTA_HERE", 110)
	stats.set_int(MPX .. "AWD_WEVE_GOT_ONE", 52)
	stats.set_int(MPX .. "AWD_TIME_SERVED", 110)
	stats.set_int(MPX .. "AWD_CAREER_WINNER", 110)
	stats.set_int(MPX .. "AWD_ARENA_WAGEWORKER", 1100000)
	stats.set_int(MPX .. "CH_ARC_CAB_CLAW_TROPHY", -1)
	stats.set_int(MPX .. "CH_ARC_CAB_LOVE_TROPHY", -1)
	stats.set_int(MPX .. "AWD_PREPARATION", 40)
	stats.set_int(MPX .. "AWD_ASLEEPONJOB", 20)
	stats.set_int(MPX .. "AWD_DAICASHCRAB", 100000)
	stats.set_int(MPX .. "AWD_BIGBRO", 40)
	stats.set_int(MPX .. "AWD_SHARPSHOOTER", 40)
	stats.set_int(MPX .. "AWD_RACECHAMP", 40)
	stats.set_int(MPX .. "AWD_BATSWORD", 1000000)
	stats.set_int(MPX .. "AWD_COINPURSE", 950000)
	stats.set_int(MPX .. "AWD_ASTROCHIMP", 3000000)
	stats.set_int(MPX .. "AWD_MASTERFUL", 40000)
	stats.set_int(MPX .. "SCGW_NUM_WINS_GANG_0", 50)
	stats.set_int(MPX .. "SCGW_NUM_WINS_GANG_1", 50)
	stats.set_int(MPX .. "SCGW_NUM_WINS_GANG_2", 50)
	stats.set_int(MPX .. "SCGW_NUM_WINS_GANG_3", 50)
	stats.set_int(MPX .. "IAP_MA0_MOON_DIST", 2147483647)
	stats.set_int(MPX .. "AWD_FACES_OF_DEATH", 50)
	stats.set_int(MPX .. "HEIST_PLANNING_STAGE", -1)
	stats.set_int(MPX .. "LIFETIME_BKR_SELL_EARNINGS5", 50000000)
	stats.set_int(MPX .. "VCM_FLOW_PROGRESS", -1)
	stats.set_int(MPX .. "VCM_STORY_PROGRESS", -1)
	stats.set_int(MPX .. "MKRIFLE_MK2_KILLS", 500)
	stats.set_int(MPX .. "MKRIFLE_MK2_DEATHS", 100)
	stats.set_int(MPX .. "MKRIFLE_MK2_SHOTS", 500)
	stats.set_int(MPX .. "MKRIFLE_MK2_HITS", 500)
	stats.set_int(MPX .. "MKRIFLE_MK2_HEADSHOTS", 500)
	stats.set_int(MPX .. "MKRIFLE_MK2_HELDTIME", 5963259)
	stats.set_int(MPX .. "MKRIFLE_MK2_DB_HELDTIME", 5963259)
	stats.set_int(MPX .. "MKRIFLE_MK2_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "AWD_ODD_JOBS", 52)
	stats.set_int(MPX .. "AWD_PREPARATION", 50)
	stats.set_int(MPX .. "AWD_ASLEEPONJOB", 20)
	stats.set_int(MPX .. "AWD_DAICASHCRAB", 100000)
	stats.set_int(MPX .. "AWD_BIGBRO", 40)
	stats.set_int(MPX .. "HIGHEST_SKITTLES", 900)
	stats.set_int(MPX .. "NUMBER_NEAR_MISS", 1000)
	stats.set_int(MPX .. "LAP_DANCED_BOUGHT", 100)
	stats.set_int(MPX .. "CARS_EXPLODED", 500)
	stats.set_int(MPX .. "CARS_COPS_EXPLODED", 300)
	stats.set_int(MPX .. "BIKES_EXPLODED", 100)
	stats.set_int(MPX .. "BOATS_EXPLODED", 168)
	stats.set_int(MPX .. "HELIS_EXPLODED", 98)
	stats.set_int(MPX .. "PLANES_EXPLODED", 138)
	stats.set_int(MPX .. "QUADBIKE_EXPLODED", 50)
	stats.set_int(MPX .. "BICYCLE_EXPLODED", 48)
	stats.set_int(MPX .. "SUBMARINE_EXPLODED", 28)
	stats.set_int(MPX .. "DEATHS", 499)
	stats.set_int(MPX .. "DIED_IN_DROWNING", 833)
	stats.set_int(MPX .. "DIED_IN_DROWNINGINVEHICLE", 833)
	stats.set_int(MPX .. "DIED_IN_EXPLOSION", 833)
	stats.set_int(MPX .. "DIED_IN_FALL", 833)
	stats.set_int(MPX .. "DIED_IN_FIRE", 833)
	stats.set_int(MPX .. "DIED_IN_ROAD", 833)
	stats.set_int(MPX .. "NO_PHOTOS_TAKEN", 100)
	stats.set_int(MPX .. "PROSTITUTES_FREQUENTED", 100)
	stats.set_int(MPX .. "BOUNTSONU", 200)
	stats.set_int(MPX .. "BOUNTPLACED", 500)
	stats.set_int(MPX .. "PASS_DB_KILLS", 300)
	stats.set_int(MPX .. "PASS_DB_PLAYER_KILLS", 300)
	stats.set_int(MPX .. "PASS_DB_SHOTS", 300)
	stats.set_int(MPX .. "PASS_DB_HITS", 300)
	stats.set_int(MPX .. "PASS_DB_HITS_PEDS_VEHICLES", 300)
	stats.set_int(MPX .. "PASS_DB_HEADSHOTS", 300)
	stats.set_int(MPX .. "TIRES_POPPED_BY_GUNSHOT", 500)
	stats.set_int(MPX .. "NUMBER_CRASHES_CARS", 300)
	stats.set_int(MPX .. "NUMBER_CRASHES_BIKES", 300)
	stats.set_int(MPX .. "BAILED_FROM_VEHICLE", 300)
	stats.set_int(MPX .. "NUMBER_CRASHES_QUADBIKES", 300)
	stats.set_int(MPX .. "NUMBER_STOLEN_COP_VEHICLE", 300)
	stats.set_int(MPX .. "NUMBER_STOLEN_CARS", 300)
	stats.set_int(MPX .. "NUMBER_STOLEN_BIKES", 300)
	stats.set_int(MPX .. "NUMBER_STOLEN_BOATS", 300)
	stats.set_int(MPX .. "NUMBER_STOLEN_HELIS", 300)
	stats.set_int(MPX .. "NUMBER_STOLEN_PLANES", 300)
	stats.set_int(MPX .. "NUMBER_STOLEN_QUADBIKES", 300)
	stats.set_int(MPX .. "NUMBER_STOLEN_BICYCLES", 300)
	stats.set_int(MPX .. "FAVOUTFITBIKETIMECURRENT", 884483972)
	stats.set_int(MPX .. "FAVOUTFITBIKETIME1ALLTIME", 884483972)
	stats.set_int(MPX .. "FAVOUTFITBIKETYPECURRENT", 884483972)
	stats.set_int(MPX .. "FAVOUTFITBIKETYPEALLTIME", 884483972)
	stats.set_int(MPX .. "MC_CONTRIBUTION_POINTS", 1000)
	stats.set_int(MPX .. "MEMBERSMARKEDFORDEATH", 700)
	stats.set_int(MPX .. "MCKILLS", 500)
	stats.set_int(MPX .. "MCDEATHS", 700)
	stats.set_int(MPX .. "RIVALPRESIDENTKILLS", 700)
	stats.set_int(MPX .. "RIVALCEOANDVIPKILLS", 700)
	stats.set_int(MPX .. "MELEEKILLS", 700)
	stats.set_int(MPX .. "CLUBHOUSECONTRACTSCOMPLETE", 700)
	stats.set_int(MPX .. "CLUBHOUSECONTRACTEARNINGS", 32698547)
	stats.set_int(MPX .. "CLUBCHALLENGESCOMPLETED", 700)
	stats.set_int(MPX .. "MEMBERCHALLENGESCOMPLETED", 700)
	stats.set_int(MPX .. "HITS", 100000)
	stats.set_int(MPX .. "MKRIFLE_KILLS", 500)
	stats.set_int(MPX .. "MKRIFLE_DEATHS", 100)
	stats.set_int(MPX .. "MKRIFLE_SHOTS", 500)
	stats.set_int(MPX .. "MKRIFLE_HITS", 500)
	stats.set_int(MPX .. "MKRIFLE_HEADSHOTS", 500)
	stats.set_int(MPX .. "MKRIFLE_HELDTIME", 5963259)
	stats.set_int(MPX .. "MKRIFLE_DB_HELDTIME", 5963259)
	stats.set_int(MPX .. "MKRIFLE_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "BETAMOUNT", 500)
	stats.set_int(MPX .. "GHKILLS", 500)
	stats.set_int(MPX .. "HORDELVL", 10)
	stats.set_int(MPX .. "HORDKILLS", 500)
	stats.set_int(MPX .. "UNIQUECRATES", 500)
	stats.set_int(MPX .. "BJWINS", 500)
	stats.set_int(MPX .. "HORDEWINS", 500)
	stats.set_int(MPX .. "MCMWINS", 500)
	stats.set_int(MPX .. "GANGHIDWINS", 500)
	stats.set_int(MPX .. "KILLS", 800)
	stats.set_int(MPX .. "HITS_PEDS_VEHICLES", 100)
	stats.set_int(MPX .. "SHOTS", 1000)
	stats.set_int(MPX .. "HEADSHOTS", 100)
	stats.set_int(MPX .. "KILLS_ARMED", 650)
	stats.set_int(MPX .. "SUCCESSFUL_COUNTERS", 100)
	stats.set_int(MPX .. "KILLS_PLAYERS", 3593)
	stats.set_int(MPX .. "DEATHS_PLAYER", 1002)
	stats.set_int(MPX .. "KILLS_STEALTH", 100)
	stats.set_int(MPX .. "KILLS_INNOCENTS", 500)
	stats.set_int(MPX .. "KILLS_ENEMY_GANG_MEMBERS", 100)
	stats.set_int(MPX .. "KILLS_FRIENDLY_GANG_MEMBERS", 100)
	stats.set_int(MPX .. "KILLS_BY_OTHERS", 100)
	stats.set_int(MPX .. "HITS", 600)
	stats.set_int(MPX .. "BIGGEST_VICTIM_KILLS", 500)
	stats.set_int(MPX .. "ARCHENEMY_KILLS", 500)
	stats.set_int(MPX .. "CRARMWREST", 500)
	stats.set_int(MPX .. "CRBASEJUMP", 500)
	stats.set_int(MPX .. "CRDARTS", 500)
	stats.set_int(MPX .. "CRDM", 500)
	stats.set_int(MPX .. "CRGANGHIDE", 500)
	stats.set_int(MPX .. "CRGOLF", 500)
	stats.set_int(MPX .. "CRHORDE", 500)
	stats.set_int(MPX .. "CRMISSION", 500)
	stats.set_int(MPX .. "CRSHOOTRNG", 500)
	stats.set_int(MPX .. "CRTENNIS", 500)
	stats.set_int(MPX .. "TOTAL_TIME_CINEMA", 2147483647)
	stats.set_int(MPX .. "NO_TIMES_CINEMA", 500)
	stats.set_int(MPX .. "TIME_AS_A_PASSENGER", 2147483647)
	stats.set_int(MPX .. "TIME_AS_A_DRIVER", 2147483647)
	stats.set_int(MPX .. "TIME_SPENT_FLYING", 2147483647)
	stats.set_int(MPX .. "TIME_IN_CAR", 2147483647)
	stats.set_int(MPX .. "LIFETIME_BKR_SELL_UNDERTABC", 500)
	stats.set_int(MPX .. "LIFETIME_BKR_SELL_COMPLETBC", 500)
	stats.set_int(MPX .. "BKR_PROD_STOP_COUT_S1_0", 500)
	stats.set_int(MPX .. "BKR_PROD_STOP_COUT_S2_0", 500)
	stats.set_int(MPX .. "BKR_PROD_STOP_COUT_S3_0", 500)
	stats.set_int(MPX .. "LFETIME_BIKER_BUY_UNDERTA1", 500)
	stats.set_int(MPX .. "LFETIME_BIKER_BUY_COMPLET1", 500)
	stats.set_int(MPX .. "LFETIME_BIKER_SELL_UNDERTA1", 500)
	stats.set_int(MPX .. "LFETIME_BIKER_SELL_COMPLET1", 500)
	stats.set_int(MPX .. "LIFETIME_BKR_SEL_UNDERTABC1", 500)
	stats.set_int(MPX .. "LIFETIME_BKR_SEL_COMPLETBC1", 500)
	stats.set_int(MPX .. "BKR_PROD_STOP_COUT_S1_1", 500)
	stats.set_int(MPX .. "BKR_PROD_STOP_COUT_S2_1", 500)
	stats.set_int(MPX .. "BKR_PROD_STOP_COUT_S3_1", 500)
	stats.set_int(MPX .. "LFETIME_BIKER_BUY_UNDERTA2", 500)
	stats.set_int(MPX .. "LFETIME_BIKER_BUY_COMPLET2", 500)
	stats.set_int(MPX .. "LFETIME_BIKER_SELL_UNDERTA2", 500)
	stats.set_int(MPX .. "LFETIME_BIKER_SELL_COMPLET2", 500)
	stats.set_int(MPX .. "LIFETIME_BKR_SEL_UNDERTABC2", 500)
	stats.set_int(MPX .. "LIFETIME_BKR_SEL_COMPLETBC2", 500)
	stats.set_int(MPX .. "BKR_PROD_STOP_COUT_S1_2", 500)
	stats.set_int(MPX .. "BKR_PROD_STOP_COUT_S2_2", 500)
	stats.set_int(MPX .. "BKR_PROD_STOP_COUT_S3_2", 500)
	stats.set_int(MPX .. "LFETIME_BIKER_BUY_UNDERTA3", 500)
	stats.set_int(MPX .. "LFETIME_BIKER_BUY_COMPLET3", 500)
	stats.set_int(MPX .. "LFETIME_BIKER_SELL_UNDERTA3", 500)
	stats.set_int(MPX .. "LFETIME_BIKER_SELL_COMPLET3", 500)
	stats.set_int(MPX .. "LIFETIME_BKR_SEL_UNDERTABC3", 500)
	stats.set_int(MPX .. "LIFETIME_BKR_SEL_COMPLETBC3", 500)
	stats.set_int(MPX .. "BKR_PROD_STOP_COUT_S1_3", 500)
	stats.set_int(MPX .. "BKR_PROD_STOP_COUT_S2_3", 500)
	stats.set_int(MPX .. "BKR_PROD_STOP_COUT_S3_3", 500)
	stats.set_int(MPX .. "LFETIME_BIKER_BUY_UNDERTA4", 500)
	stats.set_int(MPX .. "LFETIME_BIKER_BUY_COMPLET4", 500)
	stats.set_int(MPX .. "LFETIME_BIKER_SELL_UNDERTA4", 500)
	stats.set_int(MPX .. "LFETIME_BIKER_SELL_COMPLET4", 500)
	stats.set_int(MPX .. "LIFETIME_BKR_SEL_UNDERTABC4", 500)
	stats.set_int(MPX .. "LIFETIME_BKR_SEL_COMPLETBC4", 500)
	stats.set_int(MPX .. "BKR_PROD_STOP_COUT_S1_4", 500)
	stats.set_int(MPX .. "BKR_PROD_STOP_COUT_S2_4", 500)
	stats.set_int(MPX .. "BKR_PROD_STOP_COUT_S3_4", 500)
	stats.set_int(MPX .. "LFETIME_BIKER_BUY_UNDERTA5", 500)
	stats.set_int(MPX .. "LFETIME_BIKER_BUY_COMPLET5", 500)
	stats.set_int(MPX .. "LIFETIME_BKR_SEL_UNDERTABC5", 500)
	stats.set_int(MPX .. "LIFETIME_BKR_SEL_COMPLETBC5", 500)
	stats.set_int(MPX .. "LFETIME_BIKER_SELL_UNDERTA5", 500)
	stats.set_int(MPX .. "LFETIME_BIKER_SELL_COMPLET5", 500)
	stats.set_int(MPX .. "BUNKER_UNITS_MANUFAC", 500)
	stats.set_int(MPX .. "LFETIME_HANGAR_BUY_UNDETAK", 500)
	stats.set_int(MPX .. "LFETIME_HANGAR_BUY_COMPLET", 500)
	stats.set_int(MPX .. "LFETIME_HANGAR_SEL_UNDETAK", 500)
	stats.set_int(MPX .. "LFETIME_HANGAR_SEL_COMPLET", 500)
	stats.set_int(MPX .. "LFETIME_HANGAR_EARNINGS", 29654123)
	stats.set_int(MPX .. "LFETIME_HANGAR_EARN_BONUS", 15987456)
	stats.set_int(MPX .. "RIVAL_HANGAR_CRATES_STOLEN", 500)
	stats.set_int(MPX .. "LFETIME_IE_STEAL_STARTED", 500)
	stats.set_int(MPX .. "LFETIME_IE_EXPORT_STARTED", 500)
	stats.set_int(MPX .. "LFETIME_IE_EXPORT_COMPLETED", 500)
	stats.set_int(MPX .. "LFETIME_IE_MISSION_EARNINGS", 59654897)
	stats.set_int(MPX .. "AT_FLOW_IMPEXP_NUM", 500)
	stats.set_int(MPX .. "CLUB_POPULARITY", 1000)
	stats.set_int(MPX .. "NIGHTCLUB_VIP_APPEAR", 300)
	stats.set_int(MPX .. "NIGHTCLUB_JOBS_DONE", 500)
	stats.set_int(MPX .. "NIGHTCLUB_EARNINGS", 39856412)
	stats.set_int(MPX .. "HUB_SALES_COMPLETED", 500)
	stats.set_int(MPX .. "HUB_EARNINGS", 29865423)
	stats.set_int(MPX .. "DANCE_COMBO_DURATION_MINS", 86400000)
	stats.set_int(MPX .. "NIGHTCLUB_PLAYER_APPEAR", 500)
	stats.set_int(MPX .. "LIFETIME_HUB_GOODS_SOLD", 500)
	stats.set_int(MPX .. "LIFETIME_HUB_GOODS_MADE", 500)
	stats.set_int(MPX .. "ADMIN_CLOTHES_GV_BS_1", -1)
	stats.set_int(MPX .. "ADMIN_CLOTHES_GV_BS_10", -1)
	stats.set_int(MPX .. "ADMIN_CLOTHES_GV_BS_11", -1)
	stats.set_int(MPX .. "ADMIN_CLOTHES_GV_BS_12", -1)
	stats.set_int(MPX .. "ADMIN_CLOTHES_GV_BS_2", -1)
	stats.set_int(MPX .. "ADMIN_CLOTHES_GV_BS_3", -1)
	stats.set_int(MPX .. "ADMIN_CLOTHES_GV_BS_4", -1)
	stats.set_int(MPX .. "ADMIN_CLOTHES_GV_BS_5", -1)
	stats.set_int(MPX .. "ADMIN_CLOTHES_GV_BS_6", -1)
	stats.set_int(MPX .. "ADMIN_CLOTHES_GV_BS_7", -1)
	stats.set_int(MPX .. "ADMIN_CLOTHES_GV_BS_8", -1)
	stats.set_int(MPX .. "ADMIN_CLOTHES_GV_BS_9", -1)
	stats.set_int(MPX .. "ADMIN_WEAPON_GV_BS_1", -1)
	stats.set_int(MPX .. "AIR_LAUNCHES_OVER_40M", 25)
	stats.set_int(MPX .. "AWD_5STAR_WANTED_AVOIDANCE", 50)
	stats.set_int(MPX .. "AWD_CAR_BOMBS_ENEMY_KILLS", 25)
	stats.set_int(MPX .. "AWD_CARS_EXPORTED", 50)
	stats.set_int(MPX .. "AWD_CONTROL_CROWDS", 25)
	stats.set_int(MPX .. "AWD_DAILYOBJCOMPLETED", 100)
	stats.set_int(MPX .. "AWD_DO_HEIST_AS_MEMBER", 25)
	stats.set_int(MPX .. "AWD_DO_HEIST_AS_THE_LEADER", 25)
	stats.set_int(MPX .. "AWD_DROPOFF_CAP_PACKAGES", 100)
	stats.set_int(MPX .. "AWD_FINISH_HEIST_SETUP_JOB", 50)
	stats.set_int(MPX .. "AWD_FINISH_HEISTS", 50)
	stats.set_int(MPX .. "AWD_FM_DM_3KILLSAMEGUY", 50)
	stats.set_int(MPX .. "AWD_FM_DM_KILLSTREAK", 100)
	stats.set_int(MPX .. "AWD_FM_DM_STOLENKILL", 50)
	stats.set_int(MPX .. "AWD_FM_DM_TOTALKILLS", 500)
	stats.set_int(MPX .. "AWD_FM_DM_WINS", 50)
	stats.set_int(MPX .. "AWD_FM_GOLF_HOLE_IN_1", 300)
	stats.set_int(MPX .. "AWD_FM_GOLF_BIRDIES", 25)
	stats.set_int(MPX .. "AWD_FM_GOLF_WON", 25)
	stats.set_int(MPX .. "AWD_FM_GTA_RACES_WON", 50)
	stats.set_int(MPX .. "AWD_FM_RACE_LAST_FIRST", 25)
	stats.set_int(MPX .. "AWD_FM_RACES_FASTEST_LAP", 50)
	stats.set_int(MPX .. "AWD_FM_SHOOTRANG_CT_WON", 25)
	stats.set_int(MPX .. "AWD_FM_SHOOTRANG_RT_WON", 25)
	stats.set_int(MPX .. "AWD_FM_SHOOTRANG_TG_WON", 25)
	stats.set_int(MPX .. "AWD_FM_TDM_MVP", 50)
	stats.set_int(MPX .. "AWD_FM_TDM_WINS", 50)
	stats.set_int(MPX .. "AWD_FM_TENNIS_ACE", 25)
	stats.set_int(MPX .. "AWD_FM_TENNIS_WON", 25)
	stats.set_int(MPX .. "AWD_FMBASEJMP", 25)
	stats.set_int(MPX .. "AWD_FMBBETWIN", 50000)
	stats.set_int(MPX .. "AWD_FMCRATEDROPS", 25)
	stats.set_int(MPX .. "AWD_FMDRIVEWITHOUTCRASH", 30)
	stats.set_int(MPX .. "AWD_FMHORDWAVESSURVIVE", 10)
	stats.set_int(MPX .. "AWD_FMKILLBOUNTY", 25)
	stats.set_int(MPX .. "AWD_FMRALLYWONDRIVE", 25)
	stats.set_int(MPX .. "AWD_FMRALLYWONNAV", 25)
	stats.set_int(MPX .. "AWD_FMREVENGEKILLSD", 50)
	stats.set_int(MPX .. "AWD_FMSHOOTDOWNCOPHELI", 25)
	stats.set_int(MPX .. "AWD_FMWINAIRRACE", 25)
	stats.set_int(MPX .. "AWD_FMWINRACETOPOINTS", 25)
	stats.set_int(MPX .. "AWD_FMWINSEARACE", 25)
	stats.set_int(MPX .. "AWD_HOLD_UP_SHOPS", 20)
	stats.set_int(MPX .. "AWD_KILL_CARRIER_CAPTURE", 100)
	stats.set_int(MPX .. "AWD_KILL_PSYCHOPATHS", 100)
	stats.set_int(MPX .. "AWD_KILL_TEAM_YOURSELF_LTS", 25)
	stats.set_int(MPX .. "AWD_LAPDANCES", 25)
	stats.set_int(MPX .. "AWD_LESTERDELIVERVEHICLES", 25)
	stats.set_int(MPX .. "AWD_MENTALSTATE_TO_NORMAL", 50)
	stats.set_int(MPX .. "AWD_NIGHTVISION_KILLS", 100)
	stats.set_int(MPX .. "AWD_NO_HAIRCUTS", 25)
	stats.set_int(MPX .. "AWD_ODISTRACTCOPSNOEATH", 25)
	stats.set_int(MPX .. "AWD_ONLY_PLAYER_ALIVE_LTS", 50)
	stats.set_int(MPX .. "AWD_PARACHUTE_JUMPS_20M", 25)
	stats.set_int(MPX .. "AWD_PARACHUTE_JUMPS_50M", 25)
	stats.set_int(MPX .. "AWD_PASSENGERTIME", 4)
	stats.set_int(MPX .. "AWD_PICKUP_CAP_PACKAGES", 100)
	stats.set_int(MPX .. "AWD_RACES_WON", 50)
	stats.set_int(MPX .. "AWD_SECURITY_CARS_ROBBED", 25)
	stats.set_int(MPX .. "AWD_TAKEDOWNSMUGPLANE", 50)
	stats.set_int(MPX .. "AWD_TIME_IN_HELICOPTER", 4)
	stats.set_int(MPX .. "AWD_TRADE_IN_YOUR_PROPERTY", 25)
	stats.set_int(MPX .. "AWD_VEHICLES_JACKEDR", 500)
	stats.set_int(MPX .. "AWD_WIN_AT_DARTS", 25)
	stats.set_int(MPX .. "AWD_WIN_CAPTURE_DONT_DYING", 25)
	stats.set_int(MPX .. "AWD_WIN_CAPTURES", 50)
	stats.set_int(MPX .. "AWD_WIN_GOLD_MEDAL_HEISTS", 25)
	stats.set_int(MPX .. "AWD_WIN_LAST_TEAM_STANDINGS", 50)
	stats.set_int(MPX .. "BOTTLE_IN_POSSESSION", -1)
	stats.set_int(MPX .. "CHAR_FM_CARMOD_1_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_CARMOD_2_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_CARMOD_3_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_CARMOD_4_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_CARMOD_5_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_CARMOD_6_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_CARMOD_7_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_VEHICLE_1_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_VEHICLE_2_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_1_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_2_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_3_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_4_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_5_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_UNLOCKED", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_UNLOCKED2", -1)
	stats.set_int(MPX .. "CHAR_KIT_1_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_2_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_3_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_4_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_5_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_6_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_7_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_8_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_9_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_10_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_11_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_12_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_13_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_14_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_15_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_16_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_17_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_18_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_19_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_20_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_21_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_22_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_23_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_24_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_25_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_26_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_27_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_28_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_29_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_30_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_30_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_31_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_32_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_33_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_34_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_35_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_36_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_37_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_38_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_39_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_40_FM_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_KIT_41_FM_UNLCK", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_0", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_1", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_2", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_3", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_4", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_5", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_6", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_7", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_8", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_9", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_10", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_11", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_12", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_13", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_14", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_15", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_16", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_17", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_18", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_19", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_20", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_21", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_22", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_23", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_24", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_25", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_26", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_27", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_28", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_29", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_30", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_31", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_32", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_33", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_34", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_35", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_36", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_37", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_38", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_39", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_40", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_41", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_42", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_43", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_44", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_45", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_46", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_47", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_48", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_49", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_50", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_51", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_52", -1)
	stats.set_int(MPX .. "TATTOO_FM_UNLOCKS_53", -1)
	stats.set_int(MPX .. "CHAR_KIT_FM_PURCHASE", -1)
	stats.set_int(MPX .. "CHAR_KIT_FM_PURCHASE10", -1)
	stats.set_int(MPX .. "CHAR_KIT_FM_PURCHASE11", -1)
	stats.set_int(MPX .. "CHAR_KIT_FM_PURCHASE12", -1)
	stats.set_int(MPX .. "CHAR_KIT_FM_PURCHASE2", -1)
	stats.set_int(MPX .. "CHAR_KIT_FM_PURCHASE3", -1)
	stats.set_int(MPX .. "CHAR_KIT_FM_PURCHASE4", -1)
	stats.set_int(MPX .. "CHAR_KIT_FM_PURCHASE5", -1)
	stats.set_int(MPX .. "CHAR_KIT_FM_PURCHASE6", -1)
	stats.set_int(MPX .. "CHAR_KIT_FM_PURCHASE7", -1)
	stats.set_int(MPX .. "CHAR_KIT_FM_PURCHASE8", -1)
	stats.set_int(MPX .. "CHAR_KIT_FM_PURCHASE9", -1)
	stats.set_int(MPX .. "CHAR_WANTED_LEVEL_TIME5STAR", -1)
	stats.set_int(MPX .. "CHAR_WEAP_FM_PURCHASE", -1)
	stats.set_int(MPX .. "CHAR_WEAP_FM_PURCHASE2", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_BERD", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_BERD_1", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_BERD_2", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_BERD_3", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_BERD_4", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_BERD_5", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_BERD_6", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_DECL", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_FEET", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_FEET_1", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_FEET_2", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_FEET_3", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_FEET_4", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_FEET_5", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_FEET_6", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_FEET_7", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_JBIB", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_JBIB_1", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_JBIB_2", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_JBIB_3", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_JBIB_4", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_JBIB_5", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_JBIB_6", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_JBIB_7", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_LEGS", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_LEGS_1", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_LEGS_2", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_LEGS_3", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_LEGS_4", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_LEGS_5", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_LEGS_6", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_LEGS_7", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_OUTFIT", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_PROPS", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_PROPS_1", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_PROPS_10", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_PROPS_2", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_PROPS_3", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_PROPS_4", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_PROPS_5", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_PROPS_6", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_PROPS_7", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_PROPS_8", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_PROPS_9", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_SPECIAL", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_SPECIAL2", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_SPECIAL2_1", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_SPECIAL_1", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_SPECIAL_2", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_SPECIAL_3", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_SPECIAL_4", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_SPECIAL_5", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_SPECIAL_6", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_SPECIAL_7", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_TEETH", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_TEETH_1", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_TEETH_2", -1)
	stats.set_int(MPX .. "CLTHS_ACQUIRED_TORSO", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_BERD", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_BERD_1", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_BERD_2", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_BERD_3", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_BERD_4", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_BERD_5", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_BERD_6", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_BERD_7", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_DECL", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_FEET", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_FEET_1", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_FEET_2", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_FEET_3", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_FEET_4", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_FEET_5", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_FEET_6", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_FEET_7", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_HAIR", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_HAIR_1", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_HAIR_2", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_HAIR_3", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_HAIR_4", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_HAIR_5", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_HAIR_6", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_HAIR_7", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_JBIB", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_JBIB_1", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_JBIB_2", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_JBIB_3", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_JBIB_4", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_JBIB_5", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_JBIB_6", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_JBIB_7", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_LEGS", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_LEGS_1", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_LEGS_2", -1)
	stats.set_int(MPX .. "CHAR_CREWUNLOCK_1_FM_EQUIP", -1)
	stats.set_int(MPX .. "CHAR_CREWUNLOCK_2_FM_EQUIP", -1)
	stats.set_int(MPX .. "CHAR_CREWUNLOCK_3_FM_EQUIP", -1)
	stats.set_int(MPX .. "CHAR_CREWUNLOCK_4_FM_EQUIP", -1)
	stats.set_int(MPX .. "CHAR_CREWUNLOCK_5_FM_EQUIP", -1)
	stats.set_int(MPX .. "CHAR_FM_CLOTHES_1_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_CLOTHES_2_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_CLOTHES_3_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_CLOTHES_4_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_CLOTHES_5_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_CLOTHES_6_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_CLOTHES_7_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_CLOTHES_8_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_CLOTHES_9_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_CLOTHES_10_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_CLOTHES_11_UNLCK", -1)
	stats.set_int(MPX .. "SAVESTRA_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "SAVESTRA_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "STROMBERG_MG_KILLS", 500)
	stats.set_int(MPX .. "STROMBERG_MG_DEATHS", 100)
	stats.set_int(MPX .. "STROMBERG_MG_SHOTS", 500)
	stats.set_int(MPX .. "STROMBERG_MG_HITS", 500)
	stats.set_int(MPX .. "STROMBERG_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "STROMBERG_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "STROMBERG_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "STROMBERG_MISS_KILLS", 500)
	stats.set_int(MPX .. "STROMBERG_MISS_DEATHS", 100)
	stats.set_int(MPX .. "STROMBERG_MISS_SHOTS", 500)
	stats.set_int(MPX .. "STROMBERG_MISS_HITS", 500)
	stats.set_int(MPX .. "STROMBERG_MISS_HELDTIME", 5963259)
	stats.set_int(MPX .. "STROMBERG_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "STROMBERG_TORP_KILLS", 500)
	stats.set_int(MPX .. "STROMBERG_TORP_DEATHS", 100)
	stats.set_int(MPX .. "STROMBERG_TORP_SHOTS", 500)
	stats.set_int(MPX .. "STROMBERG_TORP_HITS", 500)
	stats.set_int(MPX .. "STROMBERG_TORP_HELDTIME", 5963259)
	stats.set_int(MPX .. "STROMBERG_TORP_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "THRUSTER_MG_KILLS", 500)
	stats.set_int(MPX .. "THRUSTER_MG_DEATHS", 100)
	stats.set_int(MPX .. "THRUSTER_MG_SHOTS", 500)
	stats.set_int(MPX .. "THRUSTER_MG_HITS", 500)
	stats.set_int(MPX .. "THRUSTER_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "THRUSTER_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "THRUSTER_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "THRUSTER_MISS_KILLS", 500)
	stats.set_int(MPX .. "THRUSTER_MISS_DEATHS", 100)
	stats.set_int(MPX .. "THRUSTER_MISS_SHOTS", 500)
	stats.set_int(MPX .. "THRUSTER_MISS_HITS", 500)
	stats.set_int(MPX .. "THRUSTER_MISS_HELDTIME", 5963259)
	stats.set_int(MPX .. "THRUSTER_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "VISERIS_MG_KILLS", 500)
	stats.set_int(MPX .. "VISERIS_MG_DEATHS", 100)
	stats.set_int(MPX .. "VISERIS_MG_SHOTS", 500)
	stats.set_int(MPX .. "VISERIS_MG_HITS", 500)
	stats.set_int(MPX .. "VISERIS_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "VISERIS_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "VISERIS_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "VOLATOL_MG_KILLS", 500)
	stats.set_int(MPX .. "VOLATOL_MG_DEATHS", 100)
	stats.set_int(MPX .. "VOLATOL_MG_SHOTS", 500)
	stats.set_int(MPX .. "VOLATOL_MG_HITS", 500)
	stats.set_int(MPX .. "VOLATOL_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "VOLATOL_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "VOLATOL_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "MULE4_MG_KILLS", 500)
	stats.set_int(MPX .. "MULE4_MG_DEATHS", 100)
	stats.set_int(MPX .. "MULE4_MG_SHOTS", 500)
	stats.set_int(MPX .. "MULE4_MG_HITS", 500)
	stats.set_int(MPX .. "MULE4_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "MULE4_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "MULE4_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "MULE4_MISS_KILLS", 500)
	stats.set_int(MPX .. "MULE4_MISS_DEATHS", 100)
	stats.set_int(MPX .. "MULE4_MISS_SHOTS", 500)
	stats.set_int(MPX .. "MULE4_MISS_HITS", 500)
	stats.set_int(MPX .. "MULE4_MISS_HELDTIME", 5963259)
	stats.set_int(MPX .. "MULE4_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "MULE4_GL_KILLS", 500)
	stats.set_int(MPX .. "MULE4_GL_DEATHS", 100)
	stats.set_int(MPX .. "MULE4_GL_SHOTS", 500)
	stats.set_int(MPX .. "MULE4_GL_HITS", 500)
	stats.set_int(MPX .. "MULE4_GL_HELDTIME", 5963259)
	stats.set_int(MPX .. "MULE4_GL_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "MENACER_MG_KILLS", 500)
	stats.set_int(MPX .. "MENACER_MG_DEATHS", 100)
	stats.set_int(MPX .. "MENACER_MG_SHOTS", 500)
	stats.set_int(MPX .. "MENACER_MG_HITS", 500)
	stats.set_int(MPX .. "MENACER_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "MENACER_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "MENACER_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "MENACER_TURR_KILLS", 500)
	stats.set_int(MPX .. "MENACER_TURR_DEATHS", 100)
	stats.set_int(MPX .. "MENACER_TURR_SHOTS", 500)
	stats.set_int(MPX .. "MENACER_TURR_HITS", 500)
	stats.set_int(MPX .. "MENACER_TURR_HEADSHOTS", 500)
	stats.set_int(MPX .. "MENACER_TURR_HELDTIME", 5963259)
	stats.set_int(MPX .. "MENACER_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "MENACER_MINI_KILLS", 500)
	stats.set_int(MPX .. "MENACER_MINI_DEATHS", 100)
	stats.set_int(MPX .. "MENACER_MINI_SHOTS", 500)
	stats.set_int(MPX .. "MENACER_MINI_HITS", 500)
	stats.set_int(MPX .. "MENACER_MINI_HEADSHOTS", 500)
	stats.set_int(MPX .. "MENACER_MINI_HELDTIME", 5963259)
	stats.set_int(MPX .. "MENACER_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "OPPRESSOR2_MG_KILLS", 500)
	stats.set_int(MPX .. "OPPRESSOR2_MG_DEATHS", 100)
	stats.set_int(MPX .. "OPPRESSOR2_MG_SHOTS", 500)
	stats.set_int(MPX .. "OPPRESSOR2_MG_HITS", 500)
	stats.set_int(MPX .. "OPPRESSOR2_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "OPPRESSOR2_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "OPPRESSOR2_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "OPPRESSOR2_CANN_KILLS", 500)
	stats.set_int(MPX .. "OPPRESSOR2_CANN_DEATHS", 100)
	stats.set_int(MPX .. "OPPRESSOR2_CANN_SHOTS", 500)
	stats.set_int(MPX .. "OPPRESSOR2_CANN_HITS", 500)
	stats.set_int(MPX .. "OPPRESSOR2_CANN_HELDTIME", 5963259)
	stats.set_int(MPX .. "OPPRESSOR2_CANN_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "OPPRESSOR2_MISS_KILLS", 500)
	stats.set_int(MPX .. "OPPRESSOR2_MISS_DEATHS", 100)
	stats.set_int(MPX .. "OPPRESSOR2_MISS_SHOTS", 500)
	stats.set_int(MPX .. "OPPRESSOR2_MISS_HITS", 500)
	stats.set_int(MPX .. "OPPRESSOR2_MISS_HELDTIME", 5963259)
	stats.set_int(MPX .. "OPPRESSOR2_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "BRUISER_MG50_KILLS", 500)
	stats.set_int(MPX .. "BRUISER_MG50_DEATHS", 100)
	stats.set_int(MPX .. "BRUISER_MG50_SHOTS", 500)
	stats.set_int(MPX .. "BRUISER_MG50_HITS", 500)
	stats.set_int(MPX .. "BRUISER_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "BRUISER_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "BRUISER_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "BRUISER2_MG50_KILLS", 500)
	stats.set_int(MPX .. "BRUISER2_MG50_DEATHS", 100)
	stats.set_int(MPX .. "BRUISER2_MG50_SHOTS", 500)
	stats.set_int(MPX .. "BRUISER2_MG50_HITS", 500)
	stats.set_int(MPX .. "BRUISER2_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "BRUISER2_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "BRUISER2_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "BRUISER2_LAS_KILLS", 500)
	stats.set_int(MPX .. "BRUISER2_LAS_DEATHS", 100)
	stats.set_int(MPX .. "BRUISER2_LAS_SHOTS", 500)
	stats.set_int(MPX .. "BRUISER2_LAS_HITS", 500)
	stats.set_int(MPX .. "BRUISER2_LAS_HEADSHOTS", 500)
	stats.set_int(MPX .. "BRUISER2_LAS_HELDTIME", 5963259)
	stats.set_int(MPX .. "BRUISER2_LAS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "BRUISER3_MG50_KILLS", 500)
	stats.set_int(MPX .. "BRUISER3_MG50_DEATHS", 100)
	stats.set_int(MPX .. "BRUISER3_MG50_SHOTS", 500)
	stats.set_int(MPX .. "BRUISER3_MG50_HITS", 500)
	stats.set_int(MPX .. "BRUISER3_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "BRUISER3_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "BRUISER3_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "BRUTUS_MG50_KILLS", 500)
	stats.set_int(MPX .. "BRUTUS_MG50_DEATHS", 100)
	stats.set_int(MPX .. "BRUTUS_MG50_SHOTS", 500)
	stats.set_int(MPX .. "BRUTUS_MG50_HITS", 500)
	stats.set_int(MPX .. "BRUTUS_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "BRUTUS_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "BRUTUS2_MG50_KILLS", 500)
	stats.set_int(MPX .. "BRUTUS2_MG50_DEATHS", 100)
	stats.set_int(MPX .. "BRUTUS2_MG50_SHOTS", 500)
	stats.set_int(MPX .. "BRUTUS2_MG50_HITS", 500)
	stats.set_int(MPX .. "BRUTUS2_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "BRUTUS2_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "BRUTUS2_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "BRUTUS2_LAS_KILLS", 500)
	stats.set_int(MPX .. "BRUTUS2_LAS_DEATHS", 100)
	stats.set_int(MPX .. "BRUTUS2_LAS_SHOTS", 500)
	stats.set_int(MPX .. "BRUTUS2_LAS_HITS", 500)
	stats.set_int(MPX .. "BRUTUS2_LAS_HEADSHOTS", 500)
	stats.set_int(MPX .. "BRUTUS2_LAS_HELDTIME", 5963259)
	stats.set_int(MPX .. "BRUTUS2_LAS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "BRUTUS3_MG50_KILLS", 500)
	stats.set_int(MPX .. "BRUTUS3_MG50_DEATHS", 100)
	stats.set_int(MPX .. "BRUTUS3_MG50_SHOTS", 500)
	stats.set_int(MPX .. "BRUTUS3_MG50_HITS", 500)
	stats.set_int(MPX .. "BRUTUS3_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "BRUTUS3_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "BRUTUS3_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "CERBERUS_FLAME_KILLS", 500)
	stats.set_int(MPX .. "CERBERUS_FLAME_DEATHS", 100)
	stats.set_int(MPX .. "CERBERUS_FLAME_SHOTS", 500)
	stats.set_int(MPX .. "CERBERUS_FLAME_HITS", 500)
	stats.set_int(MPX .. "CERBERUS_FLAME_HEADSHOTS", 500)
	stats.set_int(MPX .. "CERBERUS_FLAME_HELDTIME", 5963259)
	stats.set_int(MPX .. "CERBERUS_FLAME_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "CERBERUS2_FLAME_KILLS", 500)
	stats.set_int(MPX .. "CERBERUS2_FLAME_DEATHS", 100)
	stats.set_int(MPX .. "CERBERUS2_FLAME_SHOTS", 500)
	stats.set_int(MPX .. "CERBERUS2_FLAME_HITS", 500)
	stats.set_int(MPX .. "CERBERUS2_FLAME_HEADSHOTS", 500)
	stats.set_int(MPX .. "CERBERUS2_FLAME_HELDTIME", 5963259)
	stats.set_int(MPX .. "CERBERUS2_FLAME_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "CERBERUS3_FLAME_KILLS", 500)
	stats.set_int(MPX .. "CERBERUS3_FLAME_DEATHS", 100)
	stats.set_int(MPX .. "CERBERUS3_FLAME_SHOTS", 500)
	stats.set_int(MPX .. "CERBERUS3_FLAME_HITS", 500)
	stats.set_int(MPX .. "CERBERUS3_FLAME_HEADSHOTS", 500)
	stats.set_int(MPX .. "CERBERUS3_FLAME_HELDTIME", 5963259)
	stats.set_int(MPX .. "CERBERUS3_FLAME_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "DEATHBIKE_MINI_KILLS", 500)
	stats.set_int(MPX .. "DEATHBIKE_MINI_DEATHS", 100)
	stats.set_int(MPX .. "DEATHBIKE_MINI_SHOTS", 500)
	stats.set_int(MPX .. "DEATHBIKE_MINI_HITS", 500)
	stats.set_int(MPX .. "DEATHBIKE_MINI_HEADSHOTS", 500)
	stats.set_int(MPX .. "DEATHBIKE_MINI_HELDTIME", 5963259)
	stats.set_int(MPX .. "DEATHBIKE_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "DEATHBIKE2_LAS_KILLS", 500)
	stats.set_int(MPX .. "DEATHBIKE2_LAS_DEATHS", 100)
	stats.set_int(MPX .. "DEATHBIKE2_LAS_SHOTS", 500)
	stats.set_int(MPX .. "DEATHBIKE2_LAS_HITS", 500)
	stats.set_int(MPX .. "DEATHBIKE2_LAS_HEADSHOTS", 500)
	stats.set_int(MPX .. "DEATHBIKE2_LAS_HELDTIME", 5963259)
	stats.set_int(MPX .. "DEATHBIKE2_LAS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "DEATHBIKE3_MINI_KILLS", 500)
	stats.set_int(MPX .. "DEATHBIKE3_MINI_DEATHS", 100)
	stats.set_int(MPX .. "DEATHBIKE3_MINI_SHOTS", 500)
	stats.set_int(MPX .. "DEATHBIKE3_MINI_HITS", 500)
	stats.set_int(MPX .. "DEATHBIKE3_MINI_HEADSHOTS", 500)
	stats.set_int(MPX .. "DEATHBIKE3_MINI_HELDTIME", 5963259)
	stats.set_int(MPX .. "DEATHBIKE3_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "DOMINATOR4_MG50_KILLS", 500)
	stats.set_int(MPX .. "DOMINATOR4_MG50_DEATHS", 100)
	stats.set_int(MPX .. "DOMINATOR4_MG50_SHOTS", 500)
	stats.set_int(MPX .. "DOMINATOR4_MG50_HITS", 500)
	stats.set_int(MPX .. "DOMINATOR4_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "DOMINATOR4_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "DOMINATOR4_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "DOMINATOR5_MG50_KILLS", 500)
	stats.set_int(MPX .. "DOMINATOR5_MG50_DEATHS", 100)
	stats.set_int(MPX .. "DOMINATOR5_MG50_SHOTS", 500)
	stats.set_int(MPX .. "DOMINATOR5_MG50_HITS", 500)
	stats.set_int(MPX .. "DOMINATOR5_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "DOMINATOR5_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "DOMINATOR5_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "DOMINATOR5_LAS_KILLS", 500)
	stats.set_int(MPX .. "DOMINATOR5_LAS_DEATHS", 100)
	stats.set_int(MPX .. "DOMINATOR5_LAS_SHOTS", 500)
	stats.set_int(MPX .. "DOMINATOR5_LAS_HITS", 500)
	stats.set_int(MPX .. "DOMINATOR5_LAS_HEADSHOTS", 500)
	stats.set_int(MPX .. "DOMINATOR5_LAS_HELDTIME", 5963259)
	stats.set_int(MPX .. "DOMINATOR5_LAS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "DOMINATOR6_MG50_KILLS", 500)
	stats.set_int(MPX .. "DOMINATOR6_MG50_DEATHS", 100)
	stats.set_int(MPX .. "DOMINATOR6_MG50_SHOTS", 500)
	stats.set_int(MPX .. "DOMINATOR6_MG50_HITS", 500)
	stats.set_int(MPX .. "DOMINATOR6_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "DOMINATOR6_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "DOMINATOR6_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "IMPALER2_MG50_KILLS", 500)
	stats.set_int(MPX .. "IMPALER2_MG50_DEATHS", 100)
	stats.set_int(MPX .. "IMPALER2_MG50_SHOTS", 500)
	stats.set_int(MPX .. "IMPALER2_MG50_HITS", 500)
	stats.set_int(MPX .. "IMPALER2_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "IMPALER2_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "IMPALER2_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "IMPALER3_MG50_KILLS", 500)
	stats.set_int(MPX .. "IMPALER3_MG50_DEATHS", 100)
	stats.set_int(MPX .. "IMPALER3_MG50_SHOTS", 500)
	stats.set_int(MPX .. "IMPALER3_MG50_HITS", 500)
	stats.set_int(MPX .. "IMPALER3_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "IMPALER3_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "IMPALER3_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "IMPALER3_LAS_KILLS", 500)
	stats.set_int(MPX .. "IMPALER3_LAS_DEATHS", 100)
	stats.set_int(MPX .. "IMPALER3_LAS_SHOTS", 500)
	stats.set_int(MPX .. "IMPALER3_LAS_HITS", 500)
	stats.set_int(MPX .. "IMPALER3_LAS_HEADSHOTS", 500)
	stats.set_int(MPX .. "IMPALER3_LAS_HELDTIME", 5963259)
	stats.set_int(MPX .. "IMPALER3_LAS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "IMPALER4_MG50_KILLS", 500)
	stats.set_int(MPX .. "IMPALER4_MG50_DEATHS", 100)
	stats.set_int(MPX .. "IMPALER4_MG50_SHOTS", 500)
	stats.set_int(MPX .. "IMPALER4_MG50_HITS", 500)
	stats.set_int(MPX .. "IMPALER4_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "IMPALER4_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "IMPALER4_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "IMPERATOR_MG50_KILLS", 500)
	stats.set_int(MPX .. "IMPERATOR_MG50_DEATHS", 100)
	stats.set_int(MPX .. "IMPERATOR_MG50_SHOTS", 500)
	stats.set_int(MPX .. "IMPERATOR_MG50_HITS", 500)
	stats.set_int(MPX .. "IMPERATOR_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "IMPERATOR_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "IMPERATOR_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "IMPERATOR_KIN_KILLS", 500)
	stats.set_int(MPX .. "IMPERATOR_KIN_DEATHS", 100)
	stats.set_int(MPX .. "IMPERATOR_KIN_SHOTS", 500)
	stats.set_int(MPX .. "IMPERATOR_KIN_HITS", 500)
	stats.set_int(MPX .. "IMPERATOR_KIN_HELDTIME", 5963259)
	stats.set_int(MPX .. "IMPERATOR_KIN_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "IMPERATOR2_MG50_KILLS", 500)
	stats.set_int(MPX .. "IMPERATOR2_MG50_DEATHS", 100)
	stats.set_int(MPX .. "IMPERATOR2_MG50_SHOTS", 500)
	stats.set_int(MPX .. "IMPERATOR2_MG50_HITS", 500)
	stats.set_int(MPX .. "IMPERATOR2_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "IMPERATOR2_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "IMPERATOR2_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "IMPERATOR2_KIN_KILLS", 500)
	stats.set_int(MPX .. "IMPERATOR2_KIN_DEATHS", 100)
	stats.set_int(MPX .. "IMPERATOR2_KIN_SHOTS", 500)
	stats.set_int(MPX .. "IMPERATOR2_KIN_HITS", 500)
	stats.set_int(MPX .. "IMPERATOR2_KIN_HELDTIME", 5963259)
	stats.set_int(MPX .. "IMPERATOR2_KIN_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "IMPERATOR2_LAS_KILLS", 500)
	stats.set_int(MPX .. "IMPERATOR2_LAS_DEATHS", 100)
	stats.set_int(MPX .. "IMPERATOR2_LAS_SHOTS", 500)
	stats.set_int(MPX .. "IMPERATOR2_LAS_HITS", 500)
	stats.set_int(MPX .. "IMPERATOR2_LAS_HEADSHOTS", 500)
	stats.set_int(MPX .. "IMPERATOR2_LAS_HELDTIME", 5963259)
	stats.set_int(MPX .. "IMPERATOR2_LAS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "IMPERATOR3_MG50_KILLS", 500)
	stats.set_int(MPX .. "IMPERATOR3_MG50_DEATHS", 100)
	stats.set_int(MPX .. "IMPERATOR3_MG50_SHOTS", 500)
	stats.set_int(MPX .. "IMPERATOR3_MG50_HITS", 500)
	stats.set_int(MPX .. "IMPERATOR3_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "IMPERATOR3_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "IMPERATOR3_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "IMPERATOR3_KIN_KILLS", 500)
	stats.set_int(MPX .. "IMPERATOR3_KIN_DEATHS", 100)
	stats.set_int(MPX .. "IMPERATOR3_KIN_SHOTS", 500)
	stats.set_int(MPX .. "IMPERATOR3_KIN_HITS", 500)
	stats.set_int(MPX .. "IMPERATOR3_KIN_HELDTIME", 5963259)
	stats.set_int(MPX .. "IMPERATOR3_KIN_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "VALKYRIE_CANNON_KILLS", 500)
	stats.set_int(MPX .. "VALKYRIE_CANNON_DEATHS", 100)
	stats.set_int(MPX .. "VALKYRIE_CANNON_SHOTS", 500)
	stats.set_int(MPX .. "VALKYRIE_CANNON_HITS", 500)
	stats.set_int(MPX .. "VALKYRIE_CANNON_HEADSHOTS", 500)
	stats.set_int(MPX .. "VALKYRIE_CANNON_HELDTIME", 5963259)
	stats.set_int(MPX .. "VALKYRIE_CANNON_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "VALKYRIE_TURR_KILLS", 500)
	stats.set_int(MPX .. "VALKYRIE_TURR_DEATHS", 100)
	stats.set_int(MPX .. "VALKYRIE_TURR_SHOTS", 500)
	stats.set_int(MPX .. "VALKYRIE_TURR_HITS", 500)
	stats.set_int(MPX .. "VALKYRIE_TURR_HEADSHOTS", 500)
	stats.set_int(MPX .. "VALKYRIE_TURR_HELDTIME", 5963259)
	stats.set_int(MPX .. "VALKYRIE_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "JB7002_MG_KILLS", 500)
	stats.set_int(MPX .. "JB7002_MG_DEATHS", 100)
	stats.set_int(MPX .. "JB7002_MG_SHOTS", 500)
	stats.set_int(MPX .. "JB7002_MG_HITS", 500)
	stats.set_int(MPX .. "JB7002_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "JB7002_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "JB7002_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "MINITANK_MG_KILLS", 500)
	stats.set_int(MPX .. "MINITANK_MG_DEATHS", 100)
	stats.set_int(MPX .. "MINITANK_MG_SHOTS", 500)
	stats.set_int(MPX .. "MINITANK_MG_HITS", 500)
	stats.set_int(MPX .. "MINITANK_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "MINITANK_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "MINITANK_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "MINITANK_FL_KILLS", 500)
	stats.set_int(MPX .. "MINITANK_FL_DEATHS", 100)
	stats.set_int(MPX .. "MINITANK_FL_SHOTS", 500)
	stats.set_int(MPX .. "MINITANK_FL_HITS", 500)
	stats.set_int(MPX .. "MINITANK_FL_HELDTIME", 5963259)
	stats.set_int(MPX .. "MINITANK_FL_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "MINITANK_RK_KILLS", 500)
	stats.set_int(MPX .. "MINITANK_RK_DEATHS", 100)
	stats.set_int(MPX .. "MINITANK_RK_SHOTS", 500)
	stats.set_int(MPX .. "MINITANK_RK_HITS", 500)
	stats.set_int(MPX .. "MINITANK_RK_HELDTIME", 5963259)
	stats.set_int(MPX .. "MINITANK_RK_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "MINITANK_LZ_KILLS", 500)
	stats.set_int(MPX .. "MINITANK_LZ_DEATHS", 100)
	stats.set_int(MPX .. "MINITANK_LZ_SHOTS", 500)
	stats.set_int(MPX .. "MINITANK_LZ_HITS", 500)
	stats.set_int(MPX .. "MINITANK_LZ_HEADSHOTS", 500)
	stats.set_int(MPX .. "MINITANK_LZ_HELDTIME", 5963259)
	stats.set_int(MPX .. "MINITANK_LZ_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "FLAREGUN_KILLS", 500)
	stats.set_int(MPX .. "FLAREGUN_DEATHS", 100)
	stats.set_int(MPX .. "FLAREGUN_SHOTS", 500)
	stats.set_int(MPX .. "FLAREGUN_HITS", 500)
	stats.set_int(MPX .. "FLAREGUN_HEADSHOTS", 500)
	stats.set_int(MPX .. "FLAREGUN_HELDTIME", 5963259)
	stats.set_int(MPX .. "FLAREGUN_DB_HELDTIME", 5963259)
	stats.set_int(MPX .. "FLAREGUN_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "INSURGENT_TURR_KILLS", 500)
	stats.set_int(MPX .. "INSURGENT_TURR_DEATHS", 100)
	stats.set_int(MPX .. "INSURGENT_TURR_SHOTS", 500)
	stats.set_int(MPX .. "INSURGENT_TURR_HITS", 500)
	stats.set_int(MPX .. "INSURGENT_TURR_HEADSHOTS", 500)
	stats.set_int(MPX .. "INSURGENT_TURR_HELDTIME", 5963259)
	stats.set_int(MPX .. "INSURGENT_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "SAVAGE_ROCKET_KILLS", 500)
	stats.set_int(MPX .. "SAVAGE_ROCKET_DEATHS", 100)
	stats.set_int(MPX .. "SAVAGE_ROCKET_SHOTS", 500)
	stats.set_int(MPX .. "SAVAGE_ROCKET_HITS", 500)
	stats.set_int(MPX .. "SAVAGE_ROCKET_HELDTIME", 5963259)
	stats.set_int(MPX .. "SAVAGE_ROCKET_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "SAVAGE_BULLET_KILLS", 500)
	stats.set_int(MPX .. "SAVAGE_BULLET_DEATHS", 100)
	stats.set_int(MPX .. "SAVAGE_BULLET_SHOTS", 500)
	stats.set_int(MPX .. "SAVAGE_BULLET_HITS", 500)
	stats.set_int(MPX .. "SAVAGE_BULLET_HEADSHOTS", 500)
	stats.set_int(MPX .. "SAVAGE_BULLET_HELDTIME", 5963259)
	stats.set_int(MPX .. "SAVAGE_BULLET_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "TECHNICAL_TURR_KILLS", 500)
	stats.set_int(MPX .. "TECHNICAL_TURR_DEATHS", 100)
	stats.set_int(MPX .. "TECHNICAL_TURR_SHOTS", 500)
	stats.set_int(MPX .. "TECHNICAL_TURR_HITS", 500)
	stats.set_int(MPX .. "TECHNICAL_TURR_HEADSHOTS", 500)
	stats.set_int(MPX .. "TECHNICAL_TURR_HELDTIME", 5963259)
	stats.set_int(MPX .. "TECHNICAL_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "VEHBOMB_KILLS", 500)
	stats.set_int(MPX .. "VEHBOMB_DEATHS", 100)
	stats.set_int(MPX .. "VEHBOMB_SHOTS", 500)
	stats.set_int(MPX .. "VEHBOMB_HITS", 500)
	stats.set_int(MPX .. "VEHBOMB_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "VEHBOMB_C_KILLS", 500)
	stats.set_int(MPX .. "VEHBOMB_C_DEATHS", 100)
	stats.set_int(MPX .. "VEHBOMB_C_SHOTS", 500)
	stats.set_int(MPX .. "VEHBOMB_C_HITS", 500)
	stats.set_int(MPX .. "VEHBOMB_C_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "VEHBOMB_G_KILLS", 500)
	stats.set_int(MPX .. "VEHBOMB_G_DEATHS", 100)
	stats.set_int(MPX .. "VEHBOMB_G_SHOTS", 500)
	stats.set_int(MPX .. "VEHBOMB_G_HITS", 500)
	stats.set_int(MPX .. "VEHBOMB_G_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "VEHBOMB_I_KILLS", 500)
	stats.set_int(MPX .. "VEHBOMB_I_DEATHS", 100)
	stats.set_int(MPX .. "VEHBOMB_I_SHOTS", 500)
	stats.set_int(MPX .. "VEHBOMB_I_HITS", 500)
	stats.set_int(MPX .. "VEHBOMB_I_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "BOMBUSHKA_CANN_KILLS", 500)
	stats.set_int(MPX .. "BOMBUSHKA_CANN_DEATHS", 100)
	stats.set_int(MPX .. "BOMBUSHKA_CANN_SHOTS", 500)
	stats.set_int(MPX .. "BOMBUSHKA_CANN_HITS", 500)
	stats.set_int(MPX .. "BOMBUSHKA_CANN_HELDTIME", 5963259)
	stats.set_int(MPX .. "BOMBUSHKA_CANN_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "BOMBUSHKA_DUAL_KILLS", 500)
	stats.set_int(MPX .. "BOMBUSHKA_DUAL_DEATHS", 100)
	stats.set_int(MPX .. "BOMBUSHKA_DUAL_SHOTS", 500)
	stats.set_int(MPX .. "BOMBUSHKA_DUAL_HITS", 500)
	stats.set_int(MPX .. "BOMBUSHKA_DUAL_HEADSHOTS", 500)
	stats.set_int(MPX .. "BOMBUSHKA_DUAL_HELDTIME", 5963259)
	stats.set_int(MPX .. "BOMBUSHKA_DUAL_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "HAVOK_MINI_KILLS", 500)
	stats.set_int(MPX .. "HAVOK_MINI_DEATHS", 100)
	stats.set_int(MPX .. "HAVOK_MINI_SHOTS", 500)
	stats.set_int(MPX .. "HAVOK_MINI_HITS", 500)
	stats.set_int(MPX .. "HAVOK_MINI_HEADSHOTS", 500)
	stats.set_int(MPX .. "HAVOK_MINI_HELDTIME", 5963259)
	stats.set_int(MPX .. "HAVOK_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "HUNTER_BARR_KILLS", 500)
	stats.set_int(MPX .. "HUNTER_BARR_DEATHS", 100)
	stats.set_int(MPX .. "HUNTER_BARR_SHOTS", 500)
	stats.set_int(MPX .. "HUNTER_BARR_HITS", 500)
	stats.set_int(MPX .. "HUNTER_BARR_HELDTIME", 5963259)
	stats.set_int(MPX .. "HUNTER_BARR_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "HUNTER_CANNON_KILLS", 500)
	stats.set_int(MPX .. "HUNTER_CANNON_DEATHS", 100)
	stats.set_int(MPX .. "HUNTER_CANNON_SHOTS", 500)
	stats.set_int(MPX .. "HUNTER_CANNON_HITS", 500)
	stats.set_int(MPX .. "HUNTER_CANNON_HELDTIME", 5963259)
	stats.set_int(MPX .. "HUNTER_CANNON_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "MICROLIGHT_MG_KILLS", 500)
	stats.set_int(MPX .. "MICROLIGHT_MG_DEATHS", 100)
	stats.set_int(MPX .. "MICROLIGHT_MG_SHOTS", 500)
	stats.set_int(MPX .. "MICROLIGHT_MG_HITS", 500)
	stats.set_int(MPX .. "MICROLIGHT_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "MICROLIGHT_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "MICROLIGHT_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "MOGUL_NOSE_KILLS", 500)
	stats.set_int(MPX .. "MOGUL_NOSE_DEATHS", 100)
	stats.set_int(MPX .. "MOGUL_NOSE_SHOTS", 500)
	stats.set_int(MPX .. "MOGUL_NOSE_HITS", 500)
	stats.set_int(MPX .. "MOGUL_NOSE_HEADSHOTS", 500)
	stats.set_int(MPX .. "MOGUL_NOSE_HELDTIME", 5963259)
	stats.set_int(MPX .. "MOGUL_NOSE_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "MOGUL_DNOSE_KILLS", 500)
	stats.set_int(MPX .. "MOGUL_DNOSE_DEATHS", 100)
	stats.set_int(MPX .. "MOGUL_DNOSE_SHOTS", 500)
	stats.set_int(MPX .. "MOGUL_DNOSE_HITS", 500)
	stats.set_int(MPX .. "MOGUL_DNOSE_HEADSHOTS", 500)
	stats.set_int(MPX .. "MOGUL_DNOSE_HELDTIME", 5963259)
	stats.set_int(MPX .. "MOGUL_DNOSE_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "MOGUL_TURR_KILLS", 500)
	stats.set_int(MPX .. "MOGUL_TURR_DEATHS", 100)
	stats.set_int(MPX .. "MOGUL_TURR_SHOTS", 500)
	stats.set_int(MPX .. "MOGUL_TURR_HITS", 500)
	stats.set_int(MPX .. "MOGUL_TURR_HEADSHOTS", 500)
	stats.set_int(MPX .. "MOGUL_TURR_HELDTIME", 5963259)
	stats.set_int(MPX .. "MOGUL_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "MOGUL_DTURR_KILLS", 500)
	stats.set_int(MPX .. "MOGUL_DTURR_DEATHS", 100)
	stats.set_int(MPX .. "MOGUL_DTURR_SHOTS", 500)
	stats.set_int(MPX .. "MOGUL_DTURR_HITS", 500)
	stats.set_int(MPX .. "MOGUL_DTURR_HEADSHOTS", 500)
	stats.set_int(MPX .. "MOGUL_DTURR_HELDTIME", 5963259)
	stats.set_int(MPX .. "MOGUL_DTURR_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "MOLOTOK_MG_KILLS", 500)
	stats.set_int(MPX .. "MOLOTOK_MG_DEATHS", 100)
	stats.set_int(MPX .. "MOLOTOK_MG_SHOTS", 500)
	stats.set_int(MPX .. "MOLOTOK_MG_HITS", 500)
	stats.set_int(MPX .. "MOLOTOK_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "MOLOTOK_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "MOLOTOK_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "MOLOTOK_MISS_KILLS", 500)
	stats.set_int(MPX .. "MOLOTOK_MISS_DEATHS", 100)
	stats.set_int(MPX .. "MOLOTOK_MISS_SHOTS", 500)
	stats.set_int(MPX .. "MOLOTOK_MISS_HITS", 500)
	stats.set_int(MPX .. "MOLOTOK_MISS_HELDTIME", 5963259)
	stats.set_int(MPX .. "MOLOTOK_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "NOKOTA_MG_KILLS", 500)
	stats.set_int(MPX .. "NOKOTA_MG_DEATHS", 100)
	stats.set_int(MPX .. "NOKOTA_MG_SHOTS", 500)
	stats.set_int(MPX .. "NOKOTA_MG_HITS", 500)
	stats.set_int(MPX .. "NOKOTA_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "NOKOTA_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "NOKOTA_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "NOKOTA_MISS_KILLS", 500)
	stats.set_int(MPX .. "NOKOTA_MISS_DEATHS", 100)
	stats.set_int(MPX .. "NOKOTA_MISS_SHOTS", 500)
	stats.set_int(MPX .. "NOKOTA_MISS_HITS", 500)
	stats.set_int(MPX .. "NOKOTA_MISS_HELDTIME", 5963259)
	stats.set_int(MPX .. "NOKOTA_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "PYRO_MG_KILLS", 500)
	stats.set_int(MPX .. "PYRO_MG_DEATHS", 100)
	stats.set_int(MPX .. "PYRO_MG_SHOTS", 500)
	stats.set_int(MPX .. "PYRO_MG_HITS", 500)
	stats.set_int(MPX .. "PYRO_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "PYRO_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "PYRO_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "PYRO_MISS_KILLS", 500)
	stats.set_int(MPX .. "PYRO_MISS_DEATHS", 100)
	stats.set_int(MPX .. "PYRO_MISS_SHOTS", 500)
	stats.set_int(MPX .. "PYRO_MISS_HITS", 500)
	stats.set_int(MPX .. "PYRO_MISS_HELDTIME", 5963259)
	stats.set_int(MPX .. "PYRO_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "ROGUE_MG_KILLS", 500)
	stats.set_int(MPX .. "ROGUE_MG_DEATHS", 100)
	stats.set_int(MPX .. "ROGUE_MG_SHOTS", 500)
	stats.set_int(MPX .. "ROGUE_MG_HITS", 500)
	stats.set_int(MPX .. "ROGUE_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "ROGUE_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "ROGUE_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "ROGUE_CANN_KILLS", 500)
	stats.set_int(MPX .. "ROGUE_CANN_DEATHS", 100)
	stats.set_int(MPX .. "ROGUE_CANN_SHOTS", 500)
	stats.set_int(MPX .. "ROGUE_CANN_HITS", 500)
	stats.set_int(MPX .. "ROGUE_CANN_HELDTIME", 5963259)
	stats.set_int(MPX .. "ROGUE_CANN_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "ROGUE_MISS_KILLS", 500)
	stats.set_int(MPX .. "ROGUE_MISS_DEATHS", 100)
	stats.set_int(MPX .. "ROGUE_MISS_SHOTS", 500)
	stats.set_int(MPX .. "ROGUE_MISS_HITS", 500)
	stats.set_int(MPX .. "ROGUE_MISS_HELDTIME", 5963259)
	stats.set_int(MPX .. "ROGUE_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "STARLING_MG_KILLS", 500)
	stats.set_int(MPX .. "STARLING_MG_DEATHS", 100)
	stats.set_int(MPX .. "STARLING_MG_SHOTS", 500)
	stats.set_int(MPX .. "STARLING_MG_HITS", 500)
	stats.set_int(MPX .. "STARLING_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "STARLING_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "STARLING_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "STARLING_MISS_KILLS", 500)
	stats.set_int(MPX .. "STARLING_MISS_DEATHS", 100)
	stats.set_int(MPX .. "STARLING_MISS_SHOTS", 500)
	stats.set_int(MPX .. "STARLING_MISS_HITS", 500)
	stats.set_int(MPX .. "STARLING_MISS_HELDTIME", 5963259)
	stats.set_int(MPX .. "STARLING_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "SEABREEZE_MG_KILLS", 500)
	stats.set_int(MPX .. "SEABREEZE_MG_DEATHS", 100)
	stats.set_int(MPX .. "SEABREEZE_MG_SHOTS", 500)
	stats.set_int(MPX .. "SEABREEZE_MG_HITS", 500)
	stats.set_int(MPX .. "SEABREEZE_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "SEABREEZE_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "SEABREEZE_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "TULA_MG_KILLS", 500)
	stats.set_int(MPX .. "TULA_MG_DEATHS", 100)
	stats.set_int(MPX .. "TULA_MG_SHOTS", 500)
	stats.set_int(MPX .. "TULA_MG_HITS", 500)
	stats.set_int(MPX .. "TULA_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "TULA_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "TULA_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "TULA_SINGLEMG_KILLS", 500)
	stats.set_int(MPX .. "TULA_SINGLEMG_DEATHS", 100)
	stats.set_int(MPX .. "TULA_SINGLEMG_SHOTS", 500)
	stats.set_int(MPX .. "TULA_SINGLEMG_HITS", 500)
	stats.set_int(MPX .. "TULA_SINGLEMG_HEADSHOTS", 500)
	stats.set_int(MPX .. "TULA_SINGLEMG_HELDTIME", 5963259)
	stats.set_int(MPX .. "TULA_SINGLEMG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "TULA_DUALMG_KILLS", 500)
	stats.set_int(MPX .. "TULA_DUALMG_DEATHS", 100)
	stats.set_int(MPX .. "TULA_DUALMG_SHOTS", 500)
	stats.set_int(MPX .. "TULA_DUALMG_HITS", 500)
	stats.set_int(MPX .. "TULA_DUALMG_HEADSHOTS", 500)
	stats.set_int(MPX .. "TULA_DUALMG_HELDTIME", 5963259)
	stats.set_int(MPX .. "TULA_DUALMG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "TULA_MINI_KILLS", 500)
	stats.set_int(MPX .. "TULA_MINI_DEATHS", 100)
	stats.set_int(MPX .. "TULA_MINI_SHOTS", 500)
	stats.set_int(MPX .. "TULA_MINI_HITS", 500)
	stats.set_int(MPX .. "TULA_MINI_HEADSHOTS", 500)
	stats.set_int(MPX .. "TULA_MINI_HELDTIME", 5963259)
	stats.set_int(MPX .. "TULA_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "VIGILANTE_MG_KILLS", 500)
	stats.set_int(MPX .. "VIGILANTE_MG_DEATHS", 100)
	stats.set_int(MPX .. "VIGILANTE_MG_SHOTS", 500)
	stats.set_int(MPX .. "VIGILANTE_MG_HITS", 500)
	stats.set_int(MPX .. "VIGILANTE_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "VIGILANTE_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "VIGILANTE_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "VIGILANTE_MISS_KILLS", 500)
	stats.set_int(MPX .. "VIGILANTE_MISS_DEATHS", 100)
	stats.set_int(MPX .. "VIGILANTE_MISS_SHOTS", 500)
	stats.set_int(MPX .. "VIGILANTE_MISS_HITS", 500)
	stats.set_int(MPX .. "VIGILANTE_MISS_HELDTIME", 5963259)
	stats.set_int(MPX .. "VIGILANTE_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "BOXVILLE5_TURR_KILLS", 500)
	stats.set_int(MPX .. "BOXVILLE5_TURR_DEATHS", 100)
	stats.set_int(MPX .. "BOXVILLE5_TURR_SHOTS", 500)
	stats.set_int(MPX .. "BOXVILLE5_TURR_HITS", 500)
	stats.set_int(MPX .. "BOXVILLE5_TURR_HEADSHOTS", 500)
	stats.set_int(MPX .. "BOXVILLE5_TURR_HELDTIME", 5963259)
	stats.set_int(MPX .. "BOXVILLE5_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "BLAZER5_CANNON_KILLS", 500)
	stats.set_int(MPX .. "BLAZER5_CANNON_DEATHS", 100)
	stats.set_int(MPX .. "BLAZER5_CANNON_SHOTS", 500)
	stats.set_int(MPX .. "BLAZER5_CANNON_HITS", 500)
	stats.set_int(MPX .. "BLAZER5_CANNON_HEADSHOTS", 500)
	stats.set_int(MPX .. "BLAZER5_CANNON_HELDTIME", 5963259)
	stats.set_int(MPX .. "BLAZER5_CANNON_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "RUINER2_BULLET_KILLS", 500)
	stats.set_int(MPX .. "RUINER2_BULLET_DEATHS", 100)
	stats.set_int(MPX .. "RUINER2_BULLET_SHOTS", 500)
	stats.set_int(MPX .. "RUINER2_BULLET_HITS", 500)
	stats.set_int(MPX .. "RUINER2_BULLET_HEADSHOTS", 500)
	stats.set_int(MPX .. "RUINER2_BULLET_HELDTIME", 5963259)
	stats.set_int(MPX .. "RUINER2_BULLET_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "RUINER2_ROCKET_KILLS", 500)
	stats.set_int(MPX .. "RUINER2_ROCKET_DEATHS", 100)
	stats.set_int(MPX .. "RUINER2_ROCKET_SHOTS", 500)
	stats.set_int(MPX .. "RUINER2_ROCKET_HITS", 500)
	stats.set_int(MPX .. "RUINER2_ROCKET_HEADSHOTS", 500)
	stats.set_int(MPX .. "RUINER2_ROCKET_HELDTIME", 5963259)
	stats.set_int(MPX .. "RUINER2_ROCKET_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "TECHNICAL2_TURR_KILLS", 500)
	stats.set_int(MPX .. "TECHNICAL2_TURR_DEATHS", 100)
	stats.set_int(MPX .. "TECHNICAL2_TURR_SHOTS", 500)
	stats.set_int(MPX .. "TECHNICAL2_TURR_HITS", 500)
	stats.set_int(MPX .. "TECHNICAL2_TURR_HEADSHOTS", 500)
	stats.set_int(MPX .. "TECHNICAL2_TURR_HELDTIME", 5963259)
	stats.set_int(MPX .. "TECHNICAL2_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "CRARMWREST", 500)
	stats.set_int(MPX .. "CRBASEJUMP", 500)
	stats.set_int(MPX .. "CRDARTS", 500)
	stats.set_int(MPX .. "CRDM", 500)
	stats.set_int(MPX .. "CRGANGHIDE", 500)
	stats.set_int(MPX .. "CRGOLF", 500)
	stats.set_int(MPX .. "CRHORDE", 500)
	stats.set_int(MPX .. "CRMISSION", 500)
	stats.set_int(MPX .. "CRSHOOTRNG", 500)
	stats.set_int(MPX .. "CRTENNIS", 500)
	stats.set_int(MPX .. "NO_TIMES_CINEMA", 500)
	stats.set_int(MPX .. "AWD_CONTRACTOR", 50)
	stats.set_int(MPX .. "AWD_COLD_CALLER", 50)
	stats.set_int(MPX .. "AWD_PRODUCER", 60)
	stats.set_int(MPX .. "FIXERTELEPHONEHITSCOMPL", 10)
	stats.set_int(MPX .. "PAYPHONE_BONUS_KILL_METHOD", -1)
	stats.set_int(MPX .. "TWR_INITIALS_0", 69644)
	stats.set_int(MPX .. "TWR_INITIALS_1", 69644)
	stats.set_int(MPX .. "TWR_INITIALS_2", 69644)
	stats.set_int(MPX .. "TWR_INITIALS_3", 69644)
	stats.set_int(MPX .. "TWR_INITIALS_4", 69644)
	stats.set_int(MPX .. "TWR_INITIALS_5", 69644)
	stats.set_int(MPX .. "TWR_INITIALS_6", 69644)
	stats.set_int(MPX .. "TWR_INITIALS_7", 69644)
	stats.set_int(MPX .. "TWR_INITIALS_8", 69644)
	stats.set_int(MPX .. "TWR_INITIALS_9", 69644)
	stats.set_int(MPX .. "TWR_SCORE_0", 50)
	stats.set_int(MPX .. "TWR_SCORE_1", 50)
	stats.set_int(MPX .. "TWR_SCORE_2", 50)
	stats.set_int(MPX .. "TWR_SCORE_3", 50)
	stats.set_int(MPX .. "TWR_SCORE_4", 50)
	stats.set_int(MPX .. "TWR_SCORE_5", 50)
	stats.set_int(MPX .. "TWR_SCORE_6", 50)
	stats.set_int(MPX .. "TWR_SCORE_7", 50)
	stats.set_int(MPX .. "TWR_SCORE_8", 50)
	stats.set_int(MPX .. "TWR_SCORE_9", 50)
	stats.set_int(MPX .. "GGSM_INITIALS_0", 69644)
	stats.set_int(MPX .. "GGSM_INITIALS_1", 69644)
	stats.set_int(MPX .. "GGSM_INITIALS_2", 69644)
	stats.set_int(MPX .. "GGSM_INITIALS_3", 69644)
	stats.set_int(MPX .. "GGSM_INITIALS_4", 69644)
	stats.set_int(MPX .. "GGSM_INITIALS_5", 69644)
	stats.set_int(MPX .. "GGSM_INITIALS_6", 69644)
	stats.set_int(MPX .. "GGSM_INITIALS_7", 69644)
	stats.set_int(MPX .. "GGSM_INITIALS_8", 69644)
	stats.set_int(MPX .. "GGSM_INITIALS_9", 69644)
	stats.set_int(MPX .. "GGSM_SCORE_0", 50)
	stats.set_int(MPX .. "GGSM_SCORE_1", 50)
	stats.set_int(MPX .. "GGSM_SCORE_2", 50)
	stats.set_int(MPX .. "GGSM_SCORE_3", 50)
	stats.set_int(MPX .. "GGSM_SCORE_4", 50)
	stats.set_int(MPX .. "GGSM_SCORE_5", 50)
	stats.set_int(MPX .. "GGSM_SCORE_6", 50)
	stats.set_int(MPX .. "GGSM_SCORE_7", 50)
	stats.set_int(MPX .. "GGSM_SCORE_8", 50)
	stats.set_int(MPX .. "GGSM_SCORE_9", 50)
	stats.set_int(MPX .. "DG_PENETRATOR_INITIALS_0", 69644)
	stats.set_int(MPX .. "DG_PENETRATOR_INITIALS_1", 69644)
	stats.set_int(MPX .. "DG_PENETRATOR_INITIALS_2", 69644)
	stats.set_int(MPX .. "DG_PENETRATOR_INITIALS_3", 69644)
	stats.set_int(MPX .. "DG_PENETRATOR_INITIALS_4", 69644)
	stats.set_int(MPX .. "DG_PENETRATOR_INITIALS_5", 69644)
	stats.set_int(MPX .. "DG_PENETRATOR_INITIALS_6", 69644)
	stats.set_int(MPX .. "DG_PENETRATOR_INITIALS_7", 69644)
	stats.set_int(MPX .. "DG_PENETRATOR_INITIALS_8", 69644)
	stats.set_int(MPX .. "DG_PENETRATOR_INITIALS_9", 69644)
	stats.set_int(MPX .. "DG_PENETRATOR_SCORE_0", 50)
	stats.set_int(MPX .. "DG_PENETRATOR_SCORE_1", 50)
	stats.set_int(MPX .. "DG_PENETRATOR_SCORE_2", 50)
	stats.set_int(MPX .. "DG_PENETRATOR_SCORE_3", 50)
	stats.set_int(MPX .. "DG_PENETRATOR_SCORE_4", 50)
	stats.set_int(MPX .. "DG_PENETRATOR_SCORE_5", 50)
	stats.set_int(MPX .. "DG_PENETRATOR_SCORE_6", 50)
	stats.set_int(MPX .. "DG_PENETRATOR_SCORE_7", 50)
	stats.set_int(MPX .. "DG_PENETRATOR_SCORE_8", 50)
	stats.set_int(MPX .. "DG_PENETRATOR_SCORE_9", 50)
	stats.set_int(MPX .. "DG_MONKEY_INITIALS_0", 69644)
	stats.set_int(MPX .. "DG_MONKEY_INITIALS_1", 69644)
	stats.set_int(MPX .. "DG_MONKEY_INITIALS_2", 69644)
	stats.set_int(MPX .. "DG_MONKEY_INITIALS_3", 69644)
	stats.set_int(MPX .. "DG_MONKEY_INITIALS_4", 69644)
	stats.set_int(MPX .. "DG_MONKEY_INITIALS_5", 69644)
	stats.set_int(MPX .. "DG_MONKEY_INITIALS_6", 69644)
	stats.set_int(MPX .. "DG_MONKEY_INITIALS_7", 69644)
	stats.set_int(MPX .. "DG_MONKEY_INITIALS_8", 69644)
	stats.set_int(MPX .. "DG_MONKEY_INITIALS_9", 69644)
	stats.set_int(MPX .. "DG_MONKEY_SCORE_0", 50)
	stats.set_int(MPX .. "DG_MONKEY_SCORE_1", 50)
	stats.set_int(MPX .. "DG_MONKEY_SCORE_2", 50)
	stats.set_int(MPX .. "DG_MONKEY_SCORE_3", 50)
	stats.set_int(MPX .. "DG_MONKEY_SCORE_4", 50)
	stats.set_int(MPX .. "DG_MONKEY_SCORE_5", 50)
	stats.set_int(MPX .. "DG_MONKEY_SCORE_6", 50)
	stats.set_int(MPX .. "DG_MONKEY_SCORE_7", 50)
	stats.set_int(MPX .. "DG_MONKEY_SCORE_8", 50)
	stats.set_int(MPX .. "DG_MONKEY_SCORE_9", 50)
	stats.set_int(MPX .. "IAP_MA0_MOON_DIST", 2147483647)
	stats.set_int(MPX .. "AWD_FACES_OF_DEATH", 47)
	stats.set_int(MPX .. "IAP_INITIALS_0", 50)
	stats.set_int(MPX .. "IAP_INITIALS_1", 50)
	stats.set_int(MPX .. "IAP_INITIALS_2", 50)
	stats.set_int(MPX .. "IAP_INITIALS_3", 50)
	stats.set_int(MPX .. "IAP_INITIALS_4", 50)
	stats.set_int(MPX .. "IAP_INITIALS_5", 50)
	stats.set_int(MPX .. "IAP_INITIALS_6", 50)
	stats.set_int(MPX .. "IAP_INITIALS_7", 50)
	stats.set_int(MPX .. "IAP_INITIALS_8", 50)
	stats.set_int(MPX .. "IAP_INITIALS_9", 50)
	stats.set_int(MPX .. "IAP_SCORE_0", 69644)
	stats.set_int(MPX .. "IAP_SCORE_1", 50333)
	stats.set_int(MPX .. "IAP_SCORE_2", 63512)
	stats.set_int(MPX .. "IAP_SCORE_3", 46136)
	stats.set_int(MPX .. "IAP_SCORE_4", 21638)
	stats.set_int(MPX .. "IAP_SCORE_5", 2133)
	stats.set_int(MPX .. "IAP_SCORE_6", 1215)
	stats.set_int(MPX .. "IAP_SCORE_7", 2444)
	stats.set_int(MPX .. "IAP_SCORE_8", 38023)
	stats.set_int(MPX .. "IAP_SCORE_9", 2233)
	stats.set_int(MPX .. "SCGW_SCORE_1", 50)
	stats.set_int(MPX .. "SCGW_SCORE_2", 50)
	stats.set_int(MPX .. "SCGW_SCORE_3", 50)
	stats.set_int(MPX .. "SCGW_SCORE_4", 50)
	stats.set_int(MPX .. "SCGW_SCORE_5", 50)
	stats.set_int(MPX .. "SCGW_SCORE_6", 50)
	stats.set_int(MPX .. "SCGW_SCORE_7", 50)
	stats.set_int(MPX .. "SCGW_SCORE_8", 50)
	stats.set_int(MPX .. "SCGW_SCORE_9", 50)
	stats.set_int(MPX .. "DG_DEFENDER_INITIALS_0", 69644)
	stats.set_int(MPX .. "DG_DEFENDER_INITIALS_1", 69644)
	stats.set_int(MPX .. "DG_DEFENDER_INITIALS_2", 69644)
	stats.set_int(MPX .. "DG_DEFENDER_INITIALS_3", 69644)
	stats.set_int(MPX .. "DG_DEFENDER_INITIALS_4", 69644)
	stats.set_int(MPX .. "DG_DEFENDER_INITIALS_5", 69644)
	stats.set_int(MPX .. "DG_DEFENDER_INITIALS_6", 69644)
	stats.set_int(MPX .. "DG_DEFENDER_INITIALS_7", 69644)
	stats.set_int(MPX .. "DG_DEFENDER_INITIALS_8", 69644)
	stats.set_int(MPX .. "DG_DEFENDER_INITIALS_9", 69644)
	stats.set_int(MPX .. "DG_DEFENDER_SCORE_0", 50)
	stats.set_int(MPX .. "DG_DEFENDER_SCORE_1", 50)
	stats.set_int(MPX .. "DG_DEFENDER_SCORE_2", 50)
	stats.set_int(MPX .. "DG_DEFENDER_SCORE_3", 50)
	stats.set_int(MPX .. "DG_DEFENDER_SCORE_4", 50)
	stats.set_int(MPX .. "DG_DEFENDER_SCORE_5", 50)
	stats.set_int(MPX .. "DG_DEFENDER_SCORE_6", 50)
	stats.set_int(MPX .. "DG_DEFENDER_SCORE_7", 50)
	stats.set_int(MPX .. "DG_DEFENDER_SCORE_8", 50)
	stats.set_int(MPX .. "DG_DEFENDER_SCORE_9", 50)
	stats.set_int(MPX .. "AWD_CAR_CLUB_MEM", 100)
	stats.set_int(MPX .. "AWD_SPRINTRACER", 50)
	stats.set_int(MPX .. "AWD_STREETRACER", 50)
	stats.set_int(MPX .. "AWD_PURSUITRACER", 50)
	stats.set_int(MPX .. "AWD_TEST_CAR", 240)
	stats.set_int(MPX .. "AWD_AUTO_SHOP", 50)
	stats.set_int(MPX .. "AWD_CAR_EXPORT", 100)
	stats.set_int(MPX .. "AWD_GROUNDWORK", 40)
	stats.set_int(MPX .. "AWD_ROBBERY_CONTRACT", 100)
	stats.set_int(MPX .. "AWD_FACES_OF_DEATH", 100)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_LEGS_3", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_LEGS_4", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_LEGS_5", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_LEGS_6", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_LEGS_7", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_OUTFIT", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_PROPS", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_PROPS_1", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_PROPS_10", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_PROPS_2", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_PROPS_3", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_PROPS_4", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_PROPS_5", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_PROPS_6", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_PROPS_7", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_PROPS_8", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_PROPS_9", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_SPECIAL", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_SPECIAL2", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_SPECIAL2_1", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_SPECIAL_1", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_SPECIAL_2", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_SPECIAL_3", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_SPECIAL_4", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_SPECIAL_5", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_SPECIAL_6", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_SPECIAL_7", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_TEETH", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_TEETH_1", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_TEETH_2", -1)
	stats.set_int(MPX .. "CLTHS_AVAILABLE_TORSO", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_0", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_1", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_10", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_11", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_12", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_13", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_14", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_15", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_16", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_17", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_18", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_19", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_2", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_20", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_21", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_22", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_23", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_24", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_25", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_26", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_27", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_28", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_29", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_3", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_30", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_31", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_32", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_33", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_34", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_35", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_36", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_37", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_38", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_39", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_4", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_40", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_5", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_6", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_7", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_8", -1)
	stats.set_int(MPX .. "DLC_APPAREL_ACQUIRED_9", -1)
	stats.set_int(MPX .. "GRENADE_ENEMY_KILLS", 50)
	stats.set_int(MPX .. "MICROSMG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "SMG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "ASLTSMG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "ASLTRIFLE_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "CRBNRIFLE_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "ADVRIFLE_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "CMBTMG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "ASLTMG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "RPG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "LONGEST_WHEELIE_DIST", 1000)
	stats.set_int(MPX .. "MOST_ARM_WRESTLING_WINS", 25)
	stats.set_int(MPX .. "NO_CARS_REPAIR", 1000)
	stats.set_int(MPX .. "VEHICLES_SPRAYED", 500)
	stats.set_int(MPX .. "NUMBER_NEAR_MISS_NOCRASH", 500)
	stats.set_int(MPX .. "USJS_FOUND", 50)
	stats.set_int(MPX .. "USJS_FOUND_MASK", 50)
	stats.set_int(MPX .. "USJS_COMPLETED", 50)
	stats.set_int(MPX .. "USJS_TOTAL_COMPLETED", 50)
	stats.set_int(MPX .. "USJS_COMPLETED_MASK", 50)
	stats.set_int(MPX .. "MOST_FLIPS_IN_ONE_JUMP", 5)
	stats.set_int(MPX .. "MOST_SPINS_IN_ONE_JUMP", 5)
	stats.set_int(MPX .. "NUMBER_SLIPSTREAMS_IN_RACE", 100)
	stats.set_int(MPX .. "NUMBER_TURBO_STARTS_IN_RACE", 50)
	stats.set_int(MPX .. "PASS_DB_PLAYER_KILLS", 100)
	stats.set_int(MPX .. "PISTOL_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "PLAYER_HEADSHOTS", 500)
	stats.set_int(MPX .. "RACES_WON", 50)
	stats.set_int(MPX .. "SAWNOFF_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "SCRIPT_INCREASE_DRIV", 100)
	stats.set_int(MPX .. "SCRIPT_INCREASE_FLY", 100)
	stats.set_int(MPX .. "SCRIPT_INCREASE_LUNG", 100)
	stats.set_int(MPX .. "SCRIPT_INCREASE_MECH", 100)
	stats.set_int(MPX .. "SCRIPT_INCREASE_SHO", 100)
	stats.set_int(MPX .. "SCRIPT_INCREASE_STAM", 100)
	stats.set_int(MPX .. "SCRIPT_INCREASE_STL", 100)
	stats.set_int(MPX .. "SCRIPT_INCREASE_STRN", 100)
	stats.set_int(MPX .. "STKYBMB_ENEMY_KILLS", 50)
	stats.set_int(MPX .. "UNARMED_ENEMY_KILLS", 50)
	stats.set_int(MPX .. "USJS_COMPLETED", 50)
	stats.set_int(MPX .. "WEAP_FM_ADDON_PURCH", -1)
	stats.set_int(MPX .. "WEAP_FM_ADDON_PURCH2", -1)
	stats.set_int(MPX .. "WEAP_FM_ADDON_PURCH3", -1)
	stats.set_int(MPX .. "WEAP_FM_ADDON_PURCH4", -1)
	stats.set_int(MPX .. "WEAP_FM_ADDON_PURCH5", -1)
	stats.set_int(MPX .. "CRDEADLINE", 5)
	stats.set_int(MPX .. "CHAR_FM_ABILITY_1_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_ABILITY_2_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_ABILITY_3_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_ABILITY_1_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_ABILITY_2_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_ABILITY_3_UNLCK", -1)
	stats.set_int(MPX .. "LIFETIME_BIKER_BUY_COMPLET", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_BUY_UNDERTA", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_SELL_COMPLET", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_SELL_UNDERTA", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_BUY_COMPLET1", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_BUY_UNDERTA1", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_SELL_COMPLET1", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_SELL_UNDERTA1", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_BUY_COMPLET2", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_BUY_UNDERTA2", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_SELL_COMPLET2", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_SELL_UNDERTA2", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_BUY_COMPLET3", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_BUY_UNDERTA3", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_SELL_COMPLET3", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_SELL_UNDERTA3", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_BUY_COMPLET4", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_BUY_UNDERTA4", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_SELL_COMPLET4", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_SELL_UNDERTA4", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_BUY_COMPLET5", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_BUY_UNDERTA5", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_SELL_COMPLET5", 1000)
	stats.set_int(MPX .. "LIFETIME_BIKER_SELL_UNDERTA5", 1000)
	stats.set_int(MPX .. "LIFETIME_BKR_SELL_EARNINGS0", 20000000)
	stats.set_int(MPX .. "LIFETIME_BKR_SELL_EARNINGS1", 20000000)
	stats.set_int(MPX .. "LIFETIME_BKR_SELL_EARNINGS2", 20000000)
	stats.set_int(MPX .. "LIFETIME_BKR_SELL_EARNINGS3", 20000000)
	stats.set_int(MPX .. "LIFETIME_BKR_SELL_EARNINGS4", 20000000)
	stats.set_int(MPX .. "LFETIME_BIKER_BUY_COMPLET6", 10) --Allow buying of Stank Breath acid name.
	stats.set_int(MPX .. "LFETIME_BIKER_SELL_COMPLET6", 10) --Allow buying of Squatch Bait acid name.
	stats.set_packed_stat_int(41241, 5) --Allow buying of Chair Shot acid name.
	stats.set_int(MPX .. "LIFETIME_BKR_SELL_EARNINGS6", 1000000) --Allow buying of Fck Your Sleep acid name.
	stats.set_packed_stat_int(7666, 25) --Fill CEO office with money
	unlock_packed_bools(7553, 7594) --Fill CEO office with junk
	stats.set_packed_stat_int(9357, 4) --Fill Clubhouse with money
	unlock_packed_bools(9400, 9414) --Fill Clubhouse with junk
	stats.set_int(MPX .. "XMAS2023_ADV_MODE_WINS", 6) --Unlock Christmas 2023 liveries.
	stats.set_int("MPPLY_XMAS23_PLATES0", 3) -- ECola & Sprunk Plates
	stats.set_int(MPX .. "COUNT_HOTRING_RACE", 20) -- Liveries for hotring
	stats.set_int(MPX .. "FINISHED_SASS_RACE_TOP_3", 20) -- Trade price for hotring/everon2
	stats.set_int(MPX .. "AWD_DISPATCHWORK", 5) --Trade price for polgreenwood.
	stats.set_packed_stat_int(7671, 100) --Plant on Desk, Plaque Trophy, Shield Trophy
	stats.set_int(MPX .. "PROG_HUB_BOUNTIES_ALIVE_BS", -1) --Cuff Trophy
	stats.set_int(MPX .. "LFETIME_IE_EXPORT_COMPLETED", 1000)
	stats.set_int(MPX .. "LFETIME_IE_MISSION_EARNINGS", 20000000)
	stats.set_int(MPX .. "LFETIME_HANGAR_SEL_UNDETAK", 1000)
	stats.set_int(MPX .. "LFETIME_HANGAR_SEL_COMPLET", 1000)
	stats.set_int(MPX .. "LFETIME_HANGAR_EARNINGS", 20000000)
	stats.set_int(MPX .. "SR_HIGHSCORE_1", 690)
	stats.set_int(MPX .. "SR_HIGHSCORE_2", 1860)
	stats.set_int(MPX .. "SR_HIGHSCORE_3", 2690)
	stats.set_int(MPX .. "SR_HIGHSCORE_4", 2660)
	stats.set_int(MPX .. "SR_HIGHSCORE_5", 2650)
	stats.set_int(MPX .. "SR_HIGHSCORE_6", 450)
	stats.set_int(MPX .. "SR_TARGETS_HIT", 269)
	stats.set_int(MPX .. "SR_WEAPON_BIT_SET", -1)
	stats.set_int(MPX .. "GANGOPS_HEIST_STATUS", 9999)
	stats.set_int(MPX .. "NO_BOUGHT_YUM_SNACKS", 1000)
	stats.set_int(MPX .. "AWD_DANCE_TO_SOLOMUN", 100)
	stats.set_int(MPX .. "AWD_DANCE_TO_TALEOFUS", 100)
	stats.set_int(MPX .. "AWD_DANCE_TO_DIXON", 100)
	stats.set_int(MPX .. "AWD_DANCE_TO_BLKMAD", 100)
	stats.set_int(MPX .. "AWD_CLUB_DRUNK", 200)
	stats.set_int(MPX .. "NUMUNIQUEPLYSINCLUB", 100)
	stats.set_int(MPX .. "DANCETODIFFDJS", 4)
	stats.set_int(MPX .. "DANCEPERFECTOWNCLUB", 100)
	stats.set_int(MPX .. "NIGHTCLUB_HOTSPOT_TIME_MS", 3600000)
	stats.set_int(MPX .. "ARENAWARS_SKILL_LEVEL", 20)
	stats.set_int(MPX .. "ARENAWARS_AP_TIER", 1000)
	stats.set_int(MPX .. "ARENAWARS_AP_LIFETIME", 47551850)
	stats.set_int(MPX .. "ARN_W_THEME_SCIFI", 1000)
	stats.set_int(MPX .. "ARN_W_THEME_APOC", 1000)
	stats.set_int(MPX .. "ARN_W_THEME_CONS", 1000)
	stats.set_int(MPX .. "ARN_W_PASS_THE_BOMB", 1000)
	stats.set_int(MPX .. "ARN_W_DETONATION", 1000)
	stats.set_int(MPX .. "ARN_W_ARCADE_RACE", 1000)
	stats.set_int(MPX .. "ARN_W_CTF", 1000)
	stats.set_int(MPX .. "ARN_W_TAG_TEAM", 1000)
	stats.set_int(MPX .. "ARN_W_DESTR_DERBY", 1000)
	stats.set_int(MPX .. "ARN_W_CARNAGE", 1000)
	stats.set_int(MPX .. "ARN_W_MONSTER_JAM", 1000)
	stats.set_int(MPX .. "ARN_W_GAMES_MASTERS", 1000)
	stats.set_int(MPX .. "ARN_L_PASS_THE_BOMB", 500)
	stats.set_int(MPX .. "ARN_L_DETONATION", 500)
	stats.set_int(MPX .. "ARN_L_ARCADE_RACE", 500)
	stats.set_int(MPX .. "ARN_L_CTF", 500)
	stats.set_int(MPX .. "ARN_L_TAG_TEAM", 500)
	stats.set_int(MPX .. "ARN_L_DESTR_DERBY", 500)
	stats.set_int(MPX .. "ARN_L_CARNAGE", 500)
	stats.set_int(MPX .. "ARN_L_MONSTER_JAM", 500)
	stats.set_int(MPX .. "ARN_L_GAMES_MASTERS", 500)
	stats.set_int(MPX .. "NUMBER_OF_CHAMP_BOUGHT", 1000)
	stats.set_int(MPX .. "ARN_SPECTATOR_KILLS", 1000)
	stats.set_int(MPX .. "ARN_LIFETIME_KILLS", 1000)
	stats.set_int(MPX .. "ARN_LIFETIME_DEATHS", 500)
	stats.set_int(MPX .. "ARENAWARS_CARRER_WINS", 1000)
	stats.set_int(MPX .. "ARENAWARS_CARRER_WINT", 1000)
	stats.set_int(MPX .. "ARENAWARS_MATCHES_PLYD", 1000)
	stats.set_int(MPX .. "ARENAWARS_MATCHES_PLYDT", 1000)
	stats.set_int(MPX .. "ARN_SPECTATOR_DRONE", 1000)
	stats.set_int(MPX .. "ARN_SPECTATOR_CAMS", 1000)
	stats.set_int(MPX .. "ARN_SMOKE", 1000)
	stats.set_int(MPX .. "ARN_DRINK", 1000)
	stats.set_int(MPX .. "ARN_VEH_MONSTER3", 1000)
	stats.set_int(MPX .. "ARN_VEH_MONSTER4", 1000)
	stats.set_int(MPX .. "ARN_VEH_MONSTER5", 1000)
	stats.set_int(MPX .. "ARN_VEH_CERBERUS", 1000)
	stats.set_int(MPX .. "ARN_VEH_CERBERUS2", 1000)
	stats.set_int(MPX .. "ARN_VEH_CERBERUS3", 1000)
	stats.set_int(MPX .. "ARN_VEH_BRUISER", 1000)
	stats.set_int(MPX .. "ARN_VEH_BRUISER2", 1000)
	stats.set_int(MPX .. "ARN_VEH_BRUISER3", 1000)
	stats.set_int(MPX .. "ARN_VEH_SLAMVAN4", 1000)
	stats.set_int(MPX .. "ARN_VEH_SLAMVAN5", 1000)
	stats.set_int(MPX .. "ARN_VEH_SLAMVAN6", 1000)
	stats.set_int(MPX .. "ARN_VEH_BRUTUS", 1000)
	stats.set_int(MPX .. "ARN_VEH_BRUTUS2", 1000)
	stats.set_int(MPX .. "ARN_VEH_BRUTUS3", 1000)
	stats.set_int(MPX .. "ARN_VEH_SCARAB", 1000)
	stats.set_int(MPX .. "ARN_VEH_SCARAB2", 1000)
	stats.set_int(MPX .. "ARN_VEH_SCARAB3", 1000)
	stats.set_int(MPX .. "ARN_VEH_DOMINATOR4", 1000)
	stats.set_int(MPX .. "ARN_VEH_DOMINATOR5", 1000)
	stats.set_int(MPX .. "ARN_VEH_DOMINATOR6", 1000)
	stats.set_int(MPX .. "ARN_VEH_IMPALER2", 1000)
	stats.set_int(MPX .. "ARN_VEH_IMPALER3", 1000)
	stats.set_int(MPX .. "ARN_VEH_IMPALER4", 1000)
	stats.set_int(MPX .. "ARN_VEH_ISSI4", 1000)
	stats.set_int(MPX .. "ARN_VEH_ISSI5", 1000)
	stats.set_int(MPX .. "ARN_VEH_ISSI6", 1000)
	stats.set_int(MPX .. "ARN_VEH_IMPERATOR", 1000)
	stats.set_int(MPX .. "ARN_VEH_IMPERATOR2", 1000)
	stats.set_int(MPX .. "ARN_VEH_IMPERATOR3", 1000)
	stats.set_int(MPX .. "ARN_VEH_ZR380", 1000)
	stats.set_int(MPX .. "ARN_VEH_ZR3802", 1000)
	stats.set_int(MPX .. "ARN_VEH_ZR3803", 1000)
	stats.set_int(MPX .. "ARN_VEH_DEATHBIKE", 1000)
	stats.set_int(MPX .. "ARN_VEH_DEATHBIKE2", 1000)
	stats.set_int(MPX .. "ARN_VEH_DEATHBIKE3", 1000)
	stats.set_int(MPX .. "NO_BOUGHT_HEALTH_SNACKS", 1000)
	stats.set_int(MPX .. "NO_BOUGHT_EPIC_SNACKS", 1000)
	stats.set_int(MPX .. "NUMBER_OF_ORANGE_BOUGHT", 1000)
	stats.set_int(MPX .. "MP_CHAR_ARMOUR_1_COUNT", 1000)
	stats.set_int(MPX .. "MP_CHAR_ARMOUR_2_COUNT", 1000)
	stats.set_int(MPX .. "MP_CHAR_ARMOUR_3_COUNT", 1000)
	stats.set_int(MPX .. "MP_CHAR_ARMOUR_4_COUNT", 1000)
	stats.set_int(MPX .. "MP_CHAR_ARMOUR_5_COUNT", 1000)
	stats.set_int(MPX .. "NUMBER_OF_BOURGE_BOUGHT", 1000)
	stats.set_int(MPX .. "CIGARETTES_BOUGHT", 1000)
	stats.set_int(MPX .. "FIREWORK_TYPE_1_WHITE", 1000)
	stats.set_int(MPX .. "FIREWORK_TYPE_1_RED", 1000)
	stats.set_int(MPX .. "FIREWORK_TYPE_1_BLUE", 1000)
	stats.set_int(MPX .. "FIREWORK_TYPE_2_WHITE", 1000)
	stats.set_int(MPX .. "FIREWORK_TYPE_2_RED", 1000)
	stats.set_int(MPX .. "FIREWORK_TYPE_2_BLUE", 1000)
	stats.set_int(MPX .. "FIREWORK_TYPE_3_WHITE", 1000)
	stats.set_int(MPX .. "FIREWORK_TYPE_3_RED", 1000)
	stats.set_int(MPX .. "FIREWORK_TYPE_3_BLUE", 1000)
	stats.set_int(MPX .. "FIREWORK_TYPE_4_WHITE", 1000)
	stats.set_int(MPX .. "FIREWORK_TYPE_4_RED", 1000)
	stats.set_int(MPX .. "FIREWORK_TYPE_4_BLUE", 1000)
	stats.set_int(MPX .. "FM_ACT_PHN", -1)
	stats.set_int(MPX .. "FM_ACT_PH2", -1)
	stats.set_int(MPX .. "FM_ACT_PH3", -1)
	stats.set_int(MPX .. "FM_ACT_PH4", -1)
	stats.set_int(MPX .. "FM_ACT_PH5", -1)
	stats.set_int(MPX .. "FM_VEH_TX1", -1)
	stats.set_int(MPX .. "FM_ACT_PH6", -1)
	stats.set_int(MPX .. "FM_ACT_PH7", -1)
	stats.set_int(MPX .. "FM_ACT_PH8", -1)
	stats.set_int(MPX .. "FM_ACT_PH9", -1)
	stats.set_int(MPX .. "LOWRIDER_FLOW_COMPLETE", 3)
	stats.set_int(MPX .. "LOW_FLOW_CURRENT_PROG", 9)
	stats.set_int(MPX .. "LOW_FLOW_CURRENT_CALL", 9)
	stats.set_int(MPX .. "CR_GANGOP_MORGUE", 10)
	stats.set_int(MPX .. "CR_GANGOP_DELUXO", 10)
	stats.set_int(MPX .. "CR_GANGOP_SERVERFARM", 10)
	stats.set_int(MPX .. "CR_GANGOP_IAABASE_FIN", 10)
	stats.set_int(MPX .. "CR_GANGOP_STEALOSPREY", 10)
	stats.set_int(MPX .. "CR_GANGOP_FOUNDRY", 10)
	stats.set_int(MPX .. "CR_GANGOP_RIOTVAN", 10)
	stats.set_int(MPX .. "CR_GANGOP_SUBMARINECAR", 10)
	stats.set_int(MPX .. "CR_GANGOP_SUBMARINE_FIN", 10)
	stats.set_int(MPX .. "CR_GANGOP_PREDATOR", 10)
	stats.set_int(MPX .. "CR_GANGOP_BMLAUNCHER", 10)
	stats.set_int(MPX .. "CR_GANGOP_BCCUSTOM", 10)
	stats.set_int(MPX .. "CR_GANGOP_STEALTHTANKS", 10)
	stats.set_int(MPX .. "CR_GANGOP_SPYPLANE", 10)
	stats.set_int(MPX .. "CR_GANGOP_FINALE", 10)
	stats.set_int(MPX .. "CR_GANGOP_FINALE_P2", 10)
	stats.set_int(MPX .. "CR_GANGOP_FINALE_P3", 10)
	stats.set_int(MPX .. "SNIPERRFL_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "HVYSNIPER_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "KILLS_COP", 4500)
	stats.set_int(MPX .. "KILLS_SWAT", 500)
	stats.set_int(MPX .. "CHAR_WANTED_LEVEL_TIME", 5000)
	stats.set_int(MPX .. "NUMBER_STOLEN_COP_VEHICLE", 200)
	stats.set_int(MPX .. "NUMBER_STOLEN_CARS", 200)
	stats.set_int(MPX .. "NUMBER_STOLEN_BIKES", 200)
	stats.set_int(MPX .. "NUMBER_STOLEN_BOATS", 200)
	stats.set_int(MPX .. "NUMBER_STOLEN_HELIS", 200)
	stats.set_int(MPX .. "NUMBER_STOLEN_PLANES", 200)
	stats.set_int(MPX .. "NUMBER_STOLEN_QUADBIKES", 200)
	stats.set_int(MPX .. "NUMBER_STOLEN_BICYCLES", 200)
	stats.set_int(MPX .. "STARS_ATTAINED", 5000)
	stats.set_int(MPX .. "STARS_EVADED", 4000)
	stats.set_int(MPX .. "VEHEXPORTED", 500)
	stats.set_int(MPX .. "TOTAL_NO_SHOPS_HELD_UP", 100)
	stats.set_int(MPX .. "KILLS_ENEMY_GANG_MEMBERS", 500)
	stats.set_int(MPX .. "KILLS_FRIENDLY_GANG_MEMBERS", 500)
	stats.set_int(MPX .. "CR_GANGATTACK_CITY", 500)
	stats.set_int(MPX .. "CR_GANGATTACK_COUNTRY", 500)
	stats.set_int(MPX .. "CR_GANGATTACK_LOST", 500)
	stats.set_int(MPX .. "CR_GANGATTACK_VAGOS", 500)
	stats.set_int(MPX .. "HORDKILLS", 500)
	stats.set_int(MPX .. "GHKILLS", 500)
	stats.set_int(MPX .. "NO_NON_CONTRACT_RACE_WIN", 500)
	stats.set_int(MPX .. "DB_SHOTTIME", 596)
	stats.set_int(MPX .. "DB_KILLS", 500)
	stats.set_int(MPX .. "DB_PLAYER_KILLS", 500)
	stats.set_int(MPX .. "DB_SHOTS", 500)
	stats.set_int(MPX .. "DB_HITS", 500)
	stats.set_int(MPX .. "DB_HITS_PEDS_VEHICLES", 500)
	stats.set_int(MPX .. "DB_HEADSHOTS", 500)
	stats.set_int(MPX .. "USJS_COMPLETED", 25)
	stats.set_int(MPX .. "AWD_FM_RACES_FASTEST_LAP", 50)
	stats.set_int(MPX .. "NUMBER_SLIPSTREAMS_IN_RACE", 1000)
	stats.set_int(MPX .. "AWD_WIN_CAPTURES", 500)
	stats.set_int(MPX .. "AWD_DROPOFF_CAP_PACKAGES", 100)
	stats.set_int(MPX .. "AWD_KILL_CARRIER_CAPTURE", 100)
	stats.set_int(MPX .. "AWD_FINISH_HEISTS", 50)
	stats.set_int(MPX .. "AWD_FINISH_HEIST_SETUP_JOB", 50)
	stats.set_int(MPX .. "AWD_NIGHTVISION_KILLS", 100)
	stats.set_int(MPX .. "AWD_WIN_LAST_TEAM_STANDINGS", 50)
	stats.set_int(MPX .. "AWD_ONLY_PLAYER_ALIVE_LTS", 50)
	stats.set_int(MPX .. "AWD_FMRALLYWONDRIVE", 25)
	stats.set_int(MPX .. "AWD_FMRALLYWONNAV", 25)
	stats.set_int(MPX .. "AWD_FMWINAIRRACE", 25)
	stats.set_int(MPX .. "AWD_FMWINSEARACE", 25)
	stats.set_int(MPX .. "RACES_WON", 50)
	stats.set_int(MPX .. "FAVOUTFITBIKETIMECURRENT", 884483972)
	stats.set_int(MPX .. "FAVOUTFITBIKETIME1ALLTIME", 884483972)
	stats.set_int(MPX .. "FAVOUTFITBIKETYPECURRENT", 884483972)
	stats.set_int(MPX .. "FAVOUTFITBIKETYPEALLTIME", 884483972)
	stats.set_int(MPX .. "LIFETIME_BUY_COMPLETE", 1000)
	stats.set_int(MPX .. "LIFETIME_BUY_UNDERTAKEN", 1000)
	stats.set_int(MPX .. "LIFETIME_SELL_COMPLETE", 1000)
	stats.set_int(MPX .. "LIFETIME_SELL_UNDERTAKEN", 1000)
	stats.set_int(MPX .. "LIFETIME_CONTRA_EARNINGS", 30000000)
	stats.set_int(MPX .. "TATTOO_FM_CURRENT_32", 32768)
	stats.set_int(MPX .. "TATTOO_FM_CURRENT_32", 67108864)
	stats.set_int(MPX .. "DELUXO_BULLET_HITS", 500)
	stats.set_int(MPX .. "DELUXO_BULLET_HEADSHOTS", 500)
	stats.set_int(MPX .. "DELUXO_BULLET_HELDTIME", 5963259)
	stats.set_int(MPX .. "DELUXO_BULLET_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "DELUXO_ROCKET_KILLS", 500)
	stats.set_int(MPX .. "DELUXO_ROCKET_DEATHS", 100)
	stats.set_int(MPX .. "DELUXO_ROCKET_SHOTS", 500)
	stats.set_int(MPX .. "DELUXO_ROCKET_HITS", 500)
	stats.set_int(MPX .. "DELUXO_ROCKET_HELDTIME", 5963259)
	stats.set_int(MPX .. "DELUXO_ROCKET_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "DELUXO_BULLET_KILLS", 500)
	stats.set_int(MPX .. "DELUXO_BULLET_DEATHS", 100)
	stats.set_int(MPX .. "DELUXO_BULLET_SHOTS", 500)
	stats.set_int(MPX .. "COMET4_MG_KILLS", 500)
	stats.set_int(MPX .. "COMET4_MG_DEATHS", 100)
	stats.set_int(MPX .. "COMET4_MG_SHOTS", 500)
	stats.set_int(MPX .. "COMET4_MG_HITS", 500)
	stats.set_int(MPX .. "COMET4_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "COMET4_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "COMET4_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "CHERNOBOG_MISS_KILLS", 500)
	stats.set_int(MPX .. "CHERNOBOG_MISS_DEATHS", 100)
	stats.set_int(MPX .. "CHERNOBOG_MISS_SHOTS", 500)
	stats.set_int(MPX .. "CHERNOBOG_MISS_HITS", 500)
	stats.set_int(MPX .. "CHERNOBOG_MISS_HELDTIME", 5963259)
	stats.set_int(MPX .. "CHERNOBOG_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "BARRAGE_R_MG_KILLS", 500)
	stats.set_int(MPX .. "BARRAGE_R_MG_DEATHS", 100)
	stats.set_int(MPX .. "BARRAGE_R_MG_SHOTS", 500)
	stats.set_int(MPX .. "BARRAGE_R_MG_HITS", 500)
	stats.set_int(MPX .. "BARRAGE_R_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "BARRAGE_R_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "BARRAGE_R_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "BARRAGE_R_MINI_KILLS", 500)
	stats.set_int(MPX .. "BARRAGE_R_MINI_DEATHS", 100)
	stats.set_int(MPX .. "BARRAGE_R_MINI_SHOTS", 500)
	stats.set_int(MPX .. "BARRAGE_R_MINI_HITS", 500)
	stats.set_int(MPX .. "BARRAGE_R_MINI_HEADSHOTS", 500)
	stats.set_int(MPX .. "BARRAGE_R_MINI_HELDTIME", 5963259)
	stats.set_int(MPX .. "BARRAGE_R_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "BARRAGE_R_GL_KILLS", 500)
	stats.set_int(MPX .. "BARRAGE_R_GL_DEATHS", 100)
	stats.set_int(MPX .. "BARRAGE_R_GL_SHOTS", 500)
	stats.set_int(MPX .. "BARRAGE_R_GL_HITS", 500)
	stats.set_int(MPX .. "BARRAGE_R_GL_HELDTIME", 5963259)
	stats.set_int(MPX .. "BARRAGE_R_GL_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "BARRAGE_T_MG_KILLS", 500)
	stats.set_int(MPX .. "BARRAGE_T_MG_DEATHS", 100)
	stats.set_int(MPX .. "BARRAGE_T_MG_SHOTS", 500)
	stats.set_int(MPX .. "BARRAGE_T_MG_HITS", 500)
	stats.set_int(MPX .. "BARRAGE_T_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "BARRAGE_T_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "BARRAGE_T_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "BARRAGE_T_MINI_KILLS", 500)
	stats.set_int(MPX .. "BARRAGE_T_MINI_DEATHS", 100)
	stats.set_int(MPX .. "BARRAGE_T_MINI_SHOTS", 500)
	stats.set_int(MPX .. "BARRAGE_T_MINI_HITS", 500)
	stats.set_int(MPX .. "BARRAGE_T_MINI_HEADSHOTS", 500)
	stats.set_int(MPX .. "BARRAGE_T_MINI_HELDTIME", 5963259)
	stats.set_int(MPX .. "BARRAGE_T_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "AVENGER_CANNON_KILLS", 500)
	stats.set_int(MPX .. "AVENGER_CANNON_DEATHS", 100)
	stats.set_int(MPX .. "AVENGER_CANNON_SHOTS", 500)
	stats.set_int(MPX .. "AVENGER_CANNON_HITS", 500)
	stats.set_int(MPX .. "AVENGER_CANNON_HELDTIME", 5963259)
	stats.set_int(MPX .. "AVENGER_CANNON_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "AKULA_TURR_KILLS", 500)
	stats.set_int(MPX .. "AKULA_TURR_DEATHS", 100)
	stats.set_int(MPX .. "AKULA_TURR_SHOTS", 500)
	stats.set_int(MPX .. "AKULA_TURR_HITS", 500)
	stats.set_int(MPX .. "AKULA_TURR_HEADSHOTS", 500)
	stats.set_int(MPX .. "AKULA_TURR_HELDTIME", 5963259)
	stats.set_int(MPX .. "AKULA_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "AKULA_DTURR_KILLS", 500)
	stats.set_int(MPX .. "AKULA_DTURR_DEATHS", 100)
	stats.set_int(MPX .. "AKULA_DTURR_SHOTS", 500)
	stats.set_int(MPX .. "AKULA_DTURR_HITS", 500)
	stats.set_int(MPX .. "AKULA_DTURR_HEADSHOTS", 500)
	stats.set_int(MPX .. "AKULA_DTURR_HELDTIME", 5963259)
	stats.set_int(MPX .. "AKULA_DTURR_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "AKULA_MINI_KILLS", 500)
	stats.set_int(MPX .. "AKULA_MINI_DEATHS", 100)
	stats.set_int(MPX .. "AKULA_MINI_SHOTS", 500)
	stats.set_int(MPX .. "AKULA_MINI_HITS", 500)
	stats.set_int(MPX .. "AKULA_MINI_HEADSHOTS", 500)
	stats.set_int(MPX .. "AKULA_MINI_HELDTIME", 5963259)
	stats.set_int(MPX .. "AKULA_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "AKULA_BARR_KILLS", 500)
	stats.set_int(MPX .. "AKULA_BARR_DEATHS", 100)
	stats.set_int(MPX .. "AKULA_BARR_SHOTS", 500)
	stats.set_int(MPX .. "AKULA_BARR_HITS", 500)
	stats.set_int(MPX .. "AKULA_BARR_HELDTIME", 5963259)
	stats.set_int(MPX .. "AKULA_BARR_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "AKULA_ROCKET_KILLS", 500)
	stats.set_int(MPX .. "AKULA_ROCKET_DEATHS", 100)
	stats.set_int(MPX .. "AKULA_ROCKET_SHOTS", 500)
	stats.set_int(MPX .. "AKULA_ROCKET_HITS", 500)
	stats.set_int(MPX .. "AKULA_ROCKET_HELDTIME", 5963259)
	stats.set_int(MPX .. "AKULA_ROCKET_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "ARENA_MG_KILLS", 500)
	stats.set_int(MPX .. "ARENA_MG_DEATHS", 100)
	stats.set_int(MPX .. "ARENA_MG_SHOTS", 500)
	stats.set_int(MPX .. "ARENA_MG_HITS", 500)
	stats.set_int(MPX .. "ARENA_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "ARENA_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "ARENA_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "ARENA_HM_KILLS", 500)
	stats.set_int(MPX .. "ARENA_HM_DEATHS", 100)
	stats.set_int(MPX .. "ARENA_HM_SHOTS", 500)
	stats.set_int(MPX .. "ARENA_HM_HITS", 500)
	stats.set_int(MPX .. "ARENA_HM_HELDTIME", 5963259)
	stats.set_int(MPX .. "RCMINE_KIN_KILLS", 500)
	stats.set_int(MPX .. "RCMINE_KIN_DEATHS", 100)
	stats.set_int(MPX .. "RCMINE_KIN_SHOTS", 500)
	stats.set_int(MPX .. "RCMINE_KIN_HITS", 500)
	stats.set_int(MPX .. "RCMINE_KIN_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "RCMINE_EMP_KILLS", 500)
	stats.set_int(MPX .. "RCMINE_EMP_DEATHS", 100)
	stats.set_int(MPX .. "RCMINE_EMP_SHOTS", 500)
	stats.set_int(MPX .. "RCMINE_EMP_HITS", 500)
	stats.set_int(MPX .. "RCMINE_EMP_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "RCMINE_SPI_KILLS", 500)
	stats.set_int(MPX .. "RCMINE_SPI_DEATHS", 100)
	stats.set_int(MPX .. "RCMINE_SPI_SHOTS", 500)
	stats.set_int(MPX .. "RCMINE_SPI_HITS", 500)
	stats.set_int(MPX .. "RCMINE_SPI_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "RCMINE_SLI_KILLS", 500)
	stats.set_int(MPX .. "RCMINE_SLI_DEATHS", 100)
	stats.set_int(MPX .. "RCMINE_SLI_SHOTS", 500)
	stats.set_int(MPX .. "RCMINE_SLI_HITS", 500)
	stats.set_int(MPX .. "RCMINE_SLI_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "RCMINE_TAR_KILLS", 500)
	stats.set_int(MPX .. "RCMINE_TAR_DEATHS", 100)
	stats.set_int(MPX .. "RCMINE_TAR_SHOTS", 500)
	stats.set_int(MPX .. "RCMINE_TAR_HITS", 500)
	stats.set_int(MPX .. "RCMINE_TAR_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "VEHMINE_KILLS", 500)
	stats.set_int(MPX .. "VEHMINE_DEATHS", 100)
	stats.set_int(MPX .. "VEHMINE_SHOTS", 500)
	stats.set_int(MPX .. "VEHMINE_HITS", 500)
	stats.set_int(MPX .. "VEHMINE_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "VEHMINE_KIN_KILLS", 500)
	stats.set_int(MPX .. "VEHMINE_KIN_DEATHS", 100)
	stats.set_int(MPX .. "VEHMINE_KIN_SHOTS", 500)
	stats.set_int(MPX .. "VEHMINE_KIN_HITS", 500)
	stats.set_int(MPX .. "VEHMINE_KIN_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "VEHMINE_EMP_KILLS", 500)
	stats.set_int(MPX .. "VEHMINE_EMP_DEATHS", 100)
	stats.set_int(MPX .. "VEHMINE_EMP_SHOTS", 500)
	stats.set_int(MPX .. "VEHMINE_EMP_HITS", 500)
	stats.set_int(MPX .. "VEHMINE_EMP_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "VEHMINE_SPI_KILLS", 500)
	stats.set_int(MPX .. "VEHMINE_SPI_DEATHS", 100)
	stats.set_int(MPX .. "VEHMINE_SPI_SHOTS", 500)
	stats.set_int(MPX .. "VEHMINE_SPI_HITS", 500)
	stats.set_int(MPX .. "VEHMINE_SPI_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "VEHMINE_SLI_KILLS", 500)
	stats.set_int(MPX .. "VEHMINE_SLI_DEATHS", 100)
	stats.set_int(MPX .. "VEHMINE_SLI_SHOTS", 500)
	stats.set_int(MPX .. "VEHMINE_SLI_HITS", 500)
	stats.set_int(MPX .. "VEHMINE_SLI_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "VEHMINE_TAR_KILLS", 500)
	stats.set_int(MPX .. "VEHMINE_TAR_DEATHS", 100)
	stats.set_int(MPX .. "VEHMINE_TAR_SHOTS", 500)
	stats.set_int(MPX .. "VEHMINE_TAR_HITS", 500)
	stats.set_int(MPX .. "VEHMINE_TAR_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "ZR3803_MG50_KILLS", 500)
	stats.set_int(MPX .. "ZR3803_MG50_DEATHS", 100)
	stats.set_int(MPX .. "ZR3803_MG50_SHOTS", 500)
	stats.set_int(MPX .. "ZR3803_MG50_HITS", 500)
	stats.set_int(MPX .. "ZR3803_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "ZR3803_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "ZR3803_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "ZR3802_MG50_KILLS", 500)
	stats.set_int(MPX .. "ZR3802_MG50_DEATHS", 100)
	stats.set_int(MPX .. "ZR3802_MG50_SHOTS", 500)
	stats.set_int(MPX .. "ZR3802_MG50_HITS", 500)
	stats.set_int(MPX .. "ZR3802_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "ZR3802_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "ZR3802_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "ZR3802_LAS_KILLS", 500)
	stats.set_int(MPX .. "ZR3802_LAS_DEATHS", 100)
	stats.set_int(MPX .. "ZR3802_LAS_SHOTS", 500)
	stats.set_int(MPX .. "ZR3802_LAS_HITS", 500)
	stats.set_int(MPX .. "ZR3802_LAS_HEADSHOTS", 500)
	stats.set_int(MPX .. "ZR3802_LAS_HELDTIME", 5963259)
	stats.set_int(MPX .. "ZR3802_LAS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "ZR380_MG50_KILLS", 500)
	stats.set_int(MPX .. "ZR380_MG50_DEATHS", 100)
	stats.set_int(MPX .. "ZR380_MG50_SHOTS", 500)
	stats.set_int(MPX .. "ZR380_MG50_HITS", 500)
	stats.set_int(MPX .. "ZR380_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "ZR380_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "ZR380_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "SLAMVAN4_MG50_KILLS", 500)
	stats.set_int(MPX .. "SLAMVAN4_MG50_DEATHS", 100)
	stats.set_int(MPX .. "SLAMVAN4_MG50_SHOTS", 500)
	stats.set_int(MPX .. "SLAMVAN4_MG50_HITS", 500)
	stats.set_int(MPX .. "SLAMVAN4_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "SLAMVAN4_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "SLAMVAN4_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "SLAMVAN5_MG50_KILLS", 500)
	stats.set_int(MPX .. "SLAMVAN5_MG50_DEATHS", 100)
	stats.set_int(MPX .. "SLAMVAN5_MG50_SHOTS", 500)
	stats.set_int(MPX .. "SLAMVAN5_MG50_HITS", 500)
	stats.set_int(MPX .. "SLAMVAN5_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "SLAMVAN5_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "SLAMVAN5_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "SLAMVAN5_LAS_KILLS", 500)
	stats.set_int(MPX .. "SLAMVAN5_LAS_DEATHS", 100)
	stats.set_int(MPX .. "SLAMVAN5_LAS_SHOTS", 500)
	stats.set_int(MPX .. "SLAMVAN5_LAS_HITS", 500)
	stats.set_int(MPX .. "SLAMVAN5_LAS_HEADSHOTS", 500)
	stats.set_int(MPX .. "SLAMVAN5_LAS_HELDTIME", 5963259)
	stats.set_int(MPX .. "SLAMVAN5_LAS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "SLAMVAN6_MG50_KILLS", 500)
	stats.set_int(MPX .. "SLAMVAN6_MG50_DEATHS", 100)
	stats.set_int(MPX .. "SLAMVAN6_MG50_SHOTS", 500)
	stats.set_int(MPX .. "SLAMVAN6_MG50_HITS", 500)
	stats.set_int(MPX .. "SLAMVAN6_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "SLAMVAN6_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "SLAMVAN6_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "SCARAB_MG50_KILLS", 500)
	stats.set_int(MPX .. "SCARAB_MG50_DEATHS", 100)
	stats.set_int(MPX .. "SCARAB_MG50_SHOTS", 500)
	stats.set_int(MPX .. "SCARAB_MG50_HITS", 500)
	stats.set_int(MPX .. "SCARAB_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "SCARAB_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "SCARAB_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "SCARAB2_MG50_KILLS", 500)
	stats.set_int(MPX .. "SCARAB2_MG50_DEATHS", 100)
	stats.set_int(MPX .. "SCARAB2_MG50_SHOTS", 500)
	stats.set_int(MPX .. "SCARAB2_MG50_HITS", 500)
	stats.set_int(MPX .. "SCARAB2_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "SCARAB2_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "SCARAB2_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "SCARAB2_LAS_KILLS", 500)
	stats.set_int(MPX .. "SCARAB2_LAS_DEATHS", 100)
	stats.set_int(MPX .. "SCARAB2_LAS_SHOTS", 500)
	stats.set_int(MPX .. "SCARAB2_LAS_HITS", 500)
	stats.set_int(MPX .. "SCARAB2_LAS_HEADSHOTS", 500)
	stats.set_int(MPX .. "SCARAB2_LAS_HELDTIME", 5963259)
	stats.set_int(MPX .. "SCARAB2_LAS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "SCARAB3_MG50_KILLS", 500)
	stats.set_int(MPX .. "SCARAB3_MG50_DEATHS", 100)
	stats.set_int(MPX .. "SCARAB3_MG50_SHOTS", 500)
	stats.set_int(MPX .. "SCARAB3_MG50_HITS", 500)
	stats.set_int(MPX .. "SCARAB3_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "SCARAB3_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "SCARAB3_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "MONSTER3_KIN_KILLS", 500)
	stats.set_int(MPX .. "MONSTER3_KIN_DEATHS", 100)
	stats.set_int(MPX .. "MONSTER3_KIN_SHOTS", 500)
	stats.set_int(MPX .. "MONSTER3_KIN_HITS", 500)
	stats.set_int(MPX .. "MONSTER3_KIN_HELDTIME", 5963259)
	stats.set_int(MPX .. "MONSTER3_KIN_ENEMY_KILL", 500)
	stats.set_int(MPX .. "MONSTER4_KIN_KILLS", 500)
	stats.set_int(MPX .. "MONSTER4_KIN_DEATHS", 100)
	stats.set_int(MPX .. "MONSTER4_KIN_SHOTS", 500)
	stats.set_int(MPX .. "MONSTER4_KIN_HITS", 500)
	stats.set_int(MPX .. "MONSTER4_KIN_HELDTIME", 5963259)
	stats.set_int(MPX .. "MONSTER4_KIN_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "MONSTER5_KIN_KILLS", 500)
	stats.set_int(MPX .. "MONSTER5_KIN_DEATHS", 100)
	stats.set_int(MPX .. "MONSTER5_KIN_SHOTS", 500)
	stats.set_int(MPX .. "MONSTER5_KIN_HITS", 500)
	stats.set_int(MPX .. "MONSTER5_KIN_HELDTIME", 5963259)
	stats.set_int(MPX .. "MONSTER5_KIN_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "ISSI4_MG50_KILLS", 500)
	stats.set_int(MPX .. "ISSI4_MG50_DEATHS", 100)
	stats.set_int(MPX .. "ISSI4_MG50_SHOTS", 500)
	stats.set_int(MPX .. "ISSI4_MG50_HITS", 500)
	stats.set_int(MPX .. "ISSI4_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "ISSI4_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "ISSI4_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "ISSI4_KIN_KILLS", 500)
	stats.set_int(MPX .. "ISSI4_KIN_DEATHS", 100)
	stats.set_int(MPX .. "ISSI4_KIN_SHOTS", 500)
	stats.set_int(MPX .. "ISSI4_KIN_HITS", 500)
	stats.set_int(MPX .. "ISSI4_KIN_HELDTIME", 5963259)
	stats.set_int(MPX .. "ISSI4_KIN_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "ISSI5_MG50_KILLS", 500)
	stats.set_int(MPX .. "ISSI5_MG50_DEATHS", 100)
	stats.set_int(MPX .. "ISSI5_MG50_SHOTS", 500)
	stats.set_int(MPX .. "ISSI5_MG50_HITS", 500)
	stats.set_int(MPX .. "ISSI5_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "ISSI5_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "ISSI5_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "ISSI5_LAS_KILLS", 500)
	stats.set_int(MPX .. "ISSI5_LAS_DEATHS", 100)
	stats.set_int(MPX .. "ISSI5_LAS_SHOTS", 500)
	stats.set_int(MPX .. "ISSI5_LAS_HITS", 500)
	stats.set_int(MPX .. "ISSI5_LAS_HEADSHOTS", 500)
	stats.set_int(MPX .. "ISSI5_LAS_HELDTIME", 5963259)
	stats.set_int(MPX .. "ISSI5_LAS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "ISSI5_KIN_KILLS", 500)
	stats.set_int(MPX .. "ISSI5_KIN_DEATHS", 100)
	stats.set_int(MPX .. "ISSI5_KIN_SHOTS", 500)
	stats.set_int(MPX .. "ISSI5_KIN_HITS", 500)
	stats.set_int(MPX .. "ISSI5_KIN_HELDTIME", 5963259)
	stats.set_int(MPX .. "ISSI5_KIN_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "ISSI6_MG50_KILLS", 500)
	stats.set_int(MPX .. "ISSI6_MG50_DEATHS", 100)
	stats.set_int(MPX .. "ISSI6_MG50_SHOTS", 500)
	stats.set_int(MPX .. "ISSI6_MG50_HITS", 500)
	stats.set_int(MPX .. "ISSI6_MG50_HEADSHOTS", 500)
	stats.set_int(MPX .. "ISSI6_MG50_HELDTIME", 5963259)
	stats.set_int(MPX .. "ISSI6_MG50_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "ISSI6_KIN_KILLS", 500)
	stats.set_int(MPX .. "ISSI6_KIN_DEATHS", 100)
	stats.set_int(MPX .. "ISSI6_KIN_SHOTS", 500)
	stats.set_int(MPX .. "ISSI6_KIN_HITS", 500)
	stats.set_int(MPX .. "ISSI6_KIN_HELDTIME", 5963259)
	stats.set_int(MPX .. "ISSI6_KIN_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "ARN_SPECTATOR_KILLS", 500)
	stats.set_int(MPX .. "ARN_LIFETIME_KILLS", 500)
	stats.set_int(MPX .. "ARN_LIFETIME_DEATHS", 100)
	stats.set_int(MPX .. "TRSMALL2_QUAD_KILLS", 500)
	stats.set_int(MPX .. "TRSMALL2_QUAD_DEATHS", 100)
	stats.set_int(MPX .. "TRSMALL2_QUAD_SHOTS", 500)
	stats.set_int(MPX .. "TRSMALL2_QUAD_HITS", 500)
	stats.set_int(MPX .. "TRSMALL2_QUAD_HEADSHOTS", 500)
	stats.set_int(MPX .. "TRSMALL2_QUAD_HELDTIME", 5963259)
	stats.set_int(MPX .. "TRSMALL2_QUAD_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "TRSMALL2_DUAL_KILLS", 500)
	stats.set_int(MPX .. "TRSMALL2_DUAL_DEATHS", 100)
	stats.set_int(MPX .. "TRSMALL2_DUAL_SHOTS", 500)
	stats.set_int(MPX .. "TRSMALL2_DUAL_HITS", 500)
	stats.set_int(MPX .. "TRSMALL2_DUAL_HELDTIME", 5963259)
	stats.set_int(MPX .. "TRSMALL2_DUAL_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "TRSMALL2_MISS_KILLS", 500)
	stats.set_int(MPX .. "TRSMALL2_MISS_DEATHS", 100)
	stats.set_int(MPX .. "TRSMALL2_MISS_SHOTS", 500)
	stats.set_int(MPX .. "TRSMALL2_MISS_HITS", 500)
	stats.set_int(MPX .. "TRSMALL2_MISS_HELDTIME", 5963259)
	stats.set_int(MPX .. "TRSMALL2_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "TRLARGE_CANNON_KILLS", 500)
	stats.set_int(MPX .. "TRLARGE_CANNON_DEATHS", 100)
	stats.set_int(MPX .. "TRLARGE_CANNON_SHOTS", 500)
	stats.set_int(MPX .. "TRLARGE_CANNON_HITS", 500)
	stats.set_int(MPX .. "TRLARGE_CANNON_HELDTIME", 5963259)
	stats.set_int(MPX .. "TRLARGE_CANNON_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "POUNDER2_MINI_KILLS", 500)
	stats.set_int(MPX .. "POUNDER2_MINI_DEATHS", 100)
	stats.set_int(MPX .. "POUNDER2_MINI_SHOTS", 500)
	stats.set_int(MPX .. "POUNDER2_MINI_HITS", 500)
	stats.set_int(MPX .. "POUNDER2_MINI_HEADSHOTS", 500)
	stats.set_int(MPX .. "POUNDER2_MINI_HELDTIME", 5963259)
	stats.set_int(MPX .. "POUNDER2_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "POUNDER2_MISS_KILLS", 500)
	stats.set_int(MPX .. "POUNDER2_MISS_DEATHS", 100)
	stats.set_int(MPX .. "POUNDER2_MISS_SHOTS", 500)
	stats.set_int(MPX .. "POUNDER2_MISS_HITS", 500)
	stats.set_int(MPX .. "POUNDER2_MISS_HEADSHOTS", 500)
	stats.set_int(MPX .. "POUNDER2_MISS_HELDTIME", 5963259)
	stats.set_int(MPX .. "POUNDER2_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "POUNDER2_BARR_KILLS", 500)
	stats.set_int(MPX .. "POUNDER2_BARR_DEATHS", 100)
	stats.set_int(MPX .. "POUNDER2_BARR_SHOTS", 500)
	stats.set_int(MPX .. "POUNDER2_BARR_HITS", 500)
	stats.set_int(MPX .. "POUNDER2_BARR_HELDTIME", 5963259)
	stats.set_int(MPX .. "POUNDER2_BARR_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "POUNDER2_GL_KILLS", 500)
	stats.set_int(MPX .. "POUNDER2_GL_DEATHS", 100)
	stats.set_int(MPX .. "POUNDER2_GL_SHOTS", 500)
	stats.set_int(MPX .. "POUNDER2_GL_HITS", 500)
	stats.set_int(MPX .. "POUNDER2_GL_HELDTIME", 5963259)
	stats.set_int(MPX .. "POUNDER2_GL_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "SCRAMJET_MG_KILLS", 500)
	stats.set_int(MPX .. "SCRAMJET_MG_DEATHS", 100)
	stats.set_int(MPX .. "SCRAMJET_MG_SHOTS", 500)
	stats.set_int(MPX .. "SCRAMJET_MG_HITS", 500)
	stats.set_int(MPX .. "SCRAMJET_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "SCRAMJET_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "SCRAMJET_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "SCRAMJET_MISS_KILLS", 500)
	stats.set_int(MPX .. "SCRAMJET_MISS_DEATHS", 100)
	stats.set_int(MPX .. "SCRAMJET_MISS_SHOTS", 500)
	stats.set_int(MPX .. "SCRAMJET_MISS_HITS", 500)
	stats.set_int(MPX .. "SCRAMJET_MISS_HELDTIME", 5963259)
	stats.set_int(MPX .. "SCRAMJET_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "SPEEDO4_MG_KILLS", 500)
	stats.set_int(MPX .. "SPEEDO4_MG_DEATHS", 100)
	stats.set_int(MPX .. "SPEEDO4_MG_SHOTS", 500)
	stats.set_int(MPX .. "SPEEDO4_MG_HITS", 500)
	stats.set_int(MPX .. "SPEEDO4_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "SPEEDO4_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "SPEEDO4_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "SPEEDO4_TURR_KILLS", 500)
	stats.set_int(MPX .. "SPEEDO4_TURR_DEATHS", 100)
	stats.set_int(MPX .. "SPEEDO4_TURR_SHOTS", 500)
	stats.set_int(MPX .. "SPEEDO4_TURR_HITS", 500)
	stats.set_int(MPX .. "SPEEDO4_TURR_HEADSHOTS", 500)
	stats.set_int(MPX .. "SPEEDO4_TURR_HELDTIME", 5963259)
	stats.set_int(MPX .. "SPEEDO4_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "SPEEDO4_MINI_KILLS", 500)
	stats.set_int(MPX .. "SPEEDO4_MINI_DEATHS", 100)
	stats.set_int(MPX .. "SPEEDO4_MINI_SHOTS", 500)
	stats.set_int(MPX .. "SPEEDO4_MINI_HITS", 500)
	stats.set_int(MPX .. "SPEEDO4_MINI_HEADSHOTS", 500)
	stats.set_int(MPX .. "SPEEDO4_MINI_HELDTIME", 5963259)
	stats.set_int(MPX .. "SPEEDO4_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "STRIKEFORCE_BAR_KILLS", 500)
	stats.set_int(MPX .. "STRIKEFORCE_BAR_DEATHS", 100)
	stats.set_int(MPX .. "STRIKEFORCE_BAR_SHOTS", 500)
	stats.set_int(MPX .. "STRIKEFORCE_BAR_HITS", 500)
	stats.set_int(MPX .. "STRIKEFORCE_BAR_HELDTIME", 5963259)
	stats.set_int(MPX .. "STRIKEFORCE_BAR_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "STRIKEFORCE_CAN_KILLS", 500)
	stats.set_int(MPX .. "STRIKEFORCE_CAN_DEATHS", 100)
	stats.set_int(MPX .. "STRIKEFORCE_CAN_SHOTS", 500)
	stats.set_int(MPX .. "STRIKEFORCE_CAN_HITS", 500)
	stats.set_int(MPX .. "STRIKEFORCE_CAN_HELDTIME", 5963259)
	stats.set_int(MPX .. "STRIKEFORCE_CAN_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "STRIKEFORCE_MIS_KILLS", 500)
	stats.set_int(MPX .. "STRIKEFORCE_MIS_DEATHS", 100)
	stats.set_int(MPX .. "STRIKEFORCE_MIS_SHOTS", 500)
	stats.set_int(MPX .. "STRIKEFORCE_MIS_HITS", 500)
	stats.set_int(MPX .. "STRIKEFORCE_MIS_HELDTIME", 5963259)
	stats.set_int(MPX .. "STRIKEFORCE_MIS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "TERBYTE_MISS_KILLS", 500)
	stats.set_int(MPX .. "TERBYTE_MISS_DEATHS", 100)
	stats.set_int(MPX .. "TERBYTE_MISS_SHOTS", 500)
	stats.set_int(MPX .. "TERBYTE_MISS_HITS", 500)
	stats.set_int(MPX .. "TERBYTE_MISS_HELDTIME", 5963259)
	stats.set_int(MPX .. "TERBYTE_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "TERBYTE_HMISS_KILLS", 500)
	stats.set_int(MPX .. "TERBYTE_HMISS_DEATHS", 100)
	stats.set_int(MPX .. "TERBYTE_HMISS_SHOTS", 500)
	stats.set_int(MPX .. "TERBYTE_HMISS_HITS", 500)
	stats.set_int(MPX .. "TERBYTE_HMISS_HELDTIME", 5963259)
	stats.set_int(MPX .. "TERBYTE_HMISS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "CARACARA_MINI_KILLS", 500)
	stats.set_int(MPX .. "CARACARA_MINI_DEATHS", 100)
	stats.set_int(MPX .. "CARACARA_MINI_SHOTS", 500)
	stats.set_int(MPX .. "CARACARA_MINI_HITS", 500)
	stats.set_int(MPX .. "CARACARA_MINI_HEADSHOTS", 500)
	stats.set_int(MPX .. "CARACARA_MINI_HELDTIME", 5963259)
	stats.set_int(MPX .. "CARACARA_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "CARACARA_TURR_KILLS", 500)
	stats.set_int(MPX .. "CARACARA_TURR_DEATHS", 100)
	stats.set_int(MPX .. "CARACARA_TURR_SHOTS", 500)
	stats.set_int(MPX .. "CARACARA_TURR_HITS", 500)
	stats.set_int(MPX .. "CARACARA_TURR_HEADSHOTS", 500)
	stats.set_int(MPX .. "CARACARA_TURR_HELDTIME", 5963259)
	stats.set_int(MPX .. "CARACARA_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "SPARROW_MINI_KILLS", 500)
	stats.set_int(MPX .. "SPARROW_MINI_DEATHS", 100)
	stats.set_int(MPX .. "SPARROW_MINI_SHOTS", 500)
	stats.set_int(MPX .. "SPARROW_MINI_HITS", 500)
	stats.set_int(MPX .. "SPARROW_MINI_HEADSHOTS", 500)
	stats.set_int(MPX .. "SPARROW_MINI_HELDTIME", 5963259)
	stats.set_int(MPX .. "SPARROW_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "SPARROW_ROCKET_KILLS", 500)
	stats.set_int(MPX .. "SPARROW_ROCKET_DEATHS", 100)
	stats.set_int(MPX .. "SPARROW_ROCKET_SHOTS", 500)
	stats.set_int(MPX .. "SPARROW_ROCKET_HITS", 500)
	stats.set_int(MPX .. "SPARROW_ROCKET_HELDTIME", 5963259)
	stats.set_int(MPX .. "SPARROW_ROCKET_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "APC_CANN_KILLS", 500)
	stats.set_int(MPX .. "APC_CANN_DEATHS", 100)
	stats.set_int(MPX .. "APC_CANN_SHOTS", 500)
	stats.set_int(MPX .. "APC_CANN_HITS", 500)
	stats.set_int(MPX .. "APC_CANN_HELDTIME", 5963259)
	stats.set_int(MPX .. "APC_CANN_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "APC_MISS_KILLS", 500)
	stats.set_int(MPX .. "APC_MISS_DEATHS", 100)
	stats.set_int(MPX .. "APC_MISS_SHOTS", 500)
	stats.set_int(MPX .. "APC_MISS_HITS", 500)
	stats.set_int(MPX .. "APC_MISS_HELDTIME", 5963259)
	stats.set_int(MPX .. "APC_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "APC_MG_KILLS", 500)
	stats.set_int(MPX .. "APC_MG_DEATHS", 100)
	stats.set_int(MPX .. "APC_MG_SHOTS", 500)
	stats.set_int(MPX .. "APC_MG_HITS", 500)
	stats.set_int(MPX .. "APC_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "APC_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "APC_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "ARDENT_MG_KILLS", 500)
	stats.set_int(MPX .. "ARDENT_MG_DEATHS", 100)
	stats.set_int(MPX .. "ARDENT_MG_SHOTS", 500)
	stats.set_int(MPX .. "ARDENT_MG_HITS", 500)
	stats.set_int(MPX .. "ARDENT_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "ARDENT_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "ARDENT_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "DUNE3_MG_KILLS", 500)
	stats.set_int(MPX .. "DUNE3_MG_DEATHS", 100)
	stats.set_int(MPX .. "DUNE3_MG_SHOTS", 500)
	stats.set_int(MPX .. "DUNE3_MG_HITS", 500)
	stats.set_int(MPX .. "DUNE3_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "DUNE3_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "DUNE3_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "DUNE3_GL_KILLS", 500)
	stats.set_int(MPX .. "DUNE3_GL_DEATHS", 100)
	stats.set_int(MPX .. "DUNE3_GL_SHOTS", 500)
	stats.set_int(MPX .. "DUNE3_GL_HITS", 500)
	stats.set_int(MPX .. "DUNE3_GL_HELDTIME", 5963259)
	stats.set_int(MPX .. "DUNE3_GL_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "DUNE3_MINI_KILLS", 500)
	stats.set_int(MPX .. "DUNE3_MINI_DEATHS", 100)
	stats.set_int(MPX .. "DUNE3_MINI_SHOTS", 500)
	stats.set_int(MPX .. "DUNE3_MINI_HITS", 500)
	stats.set_int(MPX .. "DUNE3_MINI_HEADSHOTS", 500)
	stats.set_int(MPX .. "DUNE3_MINI_HELDTIME", 5963259)
	stats.set_int(MPX .. "DUNE3_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "HALFTRACK_DUAL_KILLS", 500)
	stats.set_int(MPX .. "HALFTRACK_DUAL_DEATHS", 100)
	stats.set_int(MPX .. "HALFTRACK_DUAL_SHOTS", 500)
	stats.set_int(MPX .. "HALFTRACK_DUAL_HITS", 500)
	stats.set_int(MPX .. "HALFTRACK_DUAL_HEADSHOTS", 500)
	stats.set_int(MPX .. "HALFTRACK_DUAL_HELDTIME", 5963259)
	stats.set_int(MPX .. "HALFTRACK_DUAL_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "HALFTRACK_QUAD_KILLS", 500)
	stats.set_int(MPX .. "HALFTRACK_QUAD_DEATHS", 100)
	stats.set_int(MPX .. "HALFTRACK_QUAD_SHOTS", 500)
	stats.set_int(MPX .. "HALFTRACK_QUAD_HITS", 500)
	stats.set_int(MPX .. "HALFTRACK_QUAD_HEADSHOTS", 500)
	stats.set_int(MPX .. "HALFTRACK_QUAD_HELDTIME", 5963259)
	stats.set_int(MPX .. "HALFTRACK_QUAD_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "INSURGENT3_MINI_KILLS", 500)
	stats.set_int(MPX .. "INSURGENT3_MINI_DEATHS", 100)
	stats.set_int(MPX .. "INSURGENT3_MINI_SHOTS", 500)
	stats.set_int(MPX .. "INSURGENT3_MINI_HITS", 500)
	stats.set_int(MPX .. "INSURGENT3_MINI_HEADSHOTS", 500)
	stats.set_int(MPX .. "INSURGENT3_MINI_HELDTIME", 5963259)
	stats.set_int(MPX .. "INSURGENT3_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "INSURGENT3_TURR_KILLS", 500)
	stats.set_int(MPX .. "INSURGENT3_TURR_DEATHS", 100)
	stats.set_int(MPX .. "INSURGENT3_TURR_SHOTS", 500)
	stats.set_int(MPX .. "INSURGENT3_TURR_HITS", 500)
	stats.set_int(MPX .. "INSURGENT3_TURR_HEADSHOTS", 500)
	stats.set_int(MPX .. "INSURGENT3_TURR_HELDTIME", 5963259)
	stats.set_int(MPX .. "INSURGENT3_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "NIGHTSHARK_MG_KILLS", 500)
	stats.set_int(MPX .. "NIGHTSHARK_MG_DEATHS", 100)
	stats.set_int(MPX .. "NIGHTSHARK_MG_SHOTS", 500)
	stats.set_int(MPX .. "NIGHTSHARK_MG_HITS", 500)
	stats.set_int(MPX .. "NIGHTSHARK_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "NIGHTSHARK_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "NIGHTSHARK_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "OPPRESSOR_MG_KILLS", 500)
	stats.set_int(MPX .. "OPPRESSOR_MG_DEATHS", 100)
	stats.set_int(MPX .. "OPPRESSOR_MG_SHOTS", 500)
	stats.set_int(MPX .. "OPPRESSOR_MG_HITS", 500)
	stats.set_int(MPX .. "OPPRESSOR_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "OPPRESSOR_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "OPPRESSOR_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "OPPRESSOR_MISS_KILLS", 500)
	stats.set_int(MPX .. "OPPRESSOR_MISS_DEATHS", 100)
	stats.set_int(MPX .. "OPPRESSOR_MISS_SHOTS", 500)
	stats.set_int(MPX .. "OPPRESSOR_MISS_HITS", 500)
	stats.set_int(MPX .. "OPPRESSOR_MISS_HELDTIME", 5963259)
	stats.set_int(MPX .. "OPPRESSOR_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "TAMPA3_MISS_KILLS", 500)
	stats.set_int(MPX .. "TAMPA3_MISS_DEATHS", 100)
	stats.set_int(MPX .. "TAMPA3_MISS_SHOTS", 500)
	stats.set_int(MPX .. "TAMPA3_MISS_HITS", 500)
	stats.set_int(MPX .. "TAMPA3_MISS_HELDTIME", 5963259)
	stats.set_int(MPX .. "TAMPA3_MISS_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "TAMPA3_MORT_KILLS", 500)
	stats.set_int(MPX .. "TAMPA3_MORT_DEATHS", 100)
	stats.set_int(MPX .. "TAMPA3_MORT_SHOTS", 500)
	stats.set_int(MPX .. "TAMPA3_MORT_HITS", 500)
	stats.set_int(MPX .. "TAMPA3_MORT_HELDTIME", 5963259)
	stats.set_int(MPX .. "TAMPA3_MORT_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "TAMPA3_FMINI_KILLS", 500)
	stats.set_int(MPX .. "TAMPA3_FMINI_DEATHS", 100)
	stats.set_int(MPX .. "TAMPA3_FMINI_SHOTS", 500)
	stats.set_int(MPX .. "TAMPA3_FMINI_HITS", 500)
	stats.set_int(MPX .. "TAMPA3_FMINI_HEADSHOTS", 500)
	stats.set_int(MPX .. "TAMPA3_FMINI_HELDTIME", 5963259)
	stats.set_int(MPX .. "TAMPA3_FMINI_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "TAMPA3_DMINI_KILLS", 500)
	stats.set_int(MPX .. "TAMPA3_DMINI_DEATHS", 100)
	stats.set_int(MPX .. "TAMPA3_DMINI_SHOTS", 500)
	stats.set_int(MPX .. "TAMPA3_DMINI_HITS", 500)
	stats.set_int(MPX .. "TAMPA3_DMINI_HEADSHOTS", 500)
	stats.set_int(MPX .. "TAMPA3_DMINI_HELDTIME", 5963259)
	stats.set_int(MPX .. "TAMPA3_DMINI_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "TECHNICAL3_MINI_KILLS", 500)
	stats.set_int(MPX .. "TECHNICAL3_MINI_DEATHS", 100)
	stats.set_int(MPX .. "TECHNICAL3_MINI_SHOTS", 500)
	stats.set_int(MPX .. "TECHNICAL3_MINI_HITS", 500)
	stats.set_int(MPX .. "TECHNICAL3_MINI_HEADSHOTS", 500)
	stats.set_int(MPX .. "TECHNICAL3_MINI_HELDTIME", 5963259)
	stats.set_int(MPX .. "TECHNICAL3_MINI_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "TECHNICAL3_TURR_KILLS", 500)
	stats.set_int(MPX .. "TECHNICAL3_TURR_DEATHS", 100)
	stats.set_int(MPX .. "TECHNICAL3_TURR_SHOTS", 500)
	stats.set_int(MPX .. "TECHNICAL3_TURR_HITS", 500)
	stats.set_int(MPX .. "TECHNICAL3_TURR_HEADSHOTS", 500)
	stats.set_int(MPX .. "TECHNICAL3_TURR_HELDTIME", 5963259)
	stats.set_int(MPX .. "TECHNICAL3_TURR_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "KHANJALI_ROCKET_KILLS", 500)
	stats.set_int(MPX .. "KHANJALI_ROCKET_DEATHS", 100)
	stats.set_int(MPX .. "KHANJALI_ROCKET_SHOTS", 500)
	stats.set_int(MPX .. "KHANJALI_ROCKET_HITS", 500)
	stats.set_int(MPX .. "KHANJALI_ROCKET_HELDTIME", 5963259)
	stats.set_int(MPX .. "KHANJALI_ROCKET_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "KHANJALI_HCANN_KILLS", 500)
	stats.set_int(MPX .. "KHANJALI_HCANN_DEATHS", 100)
	stats.set_int(MPX .. "KHANJALI_HCANN_SHOTS", 500)
	stats.set_int(MPX .. "KHANJALI_HCANN_HITS", 500)
	stats.set_int(MPX .. "KHANJALI_HCANN_HELDTIME", 5963259)
	stats.set_int(MPX .. "KHANJALI_HCANN_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "KHANJALI_MG_KILLS", 500)
	stats.set_int(MPX .. "KHANJALI_MG_DEATHS", 100)
	stats.set_int(MPX .. "KHANJALI_MG_SHOTS", 500)
	stats.set_int(MPX .. "KHANJALI_MG_HITS", 500)
	stats.set_int(MPX .. "KHANJALI_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "KHANJALI_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "KHANJALI_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "KHANJALI_GL_KILLS", 500)
	stats.set_int(MPX .. "KHANJALI_GL_DEATHS", 100)
	stats.set_int(MPX .. "KHANJALI_GL_SHOTS", 500)
	stats.set_int(MPX .. "KHANJALI_GL_HITS", 500)
	stats.set_int(MPX .. "KHANJALI_GL_HELDTIME", 5963259)
	stats.set_int(MPX .. "KHANJALI_GL_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "REVOLTER_MG_KILLS", 500)
	stats.set_int(MPX .. "REVOLTER_MG_DEATHS", 100)
	stats.set_int(MPX .. "REVOLTER_MG_SHOTS", 500)
	stats.set_int(MPX .. "REVOLTER_MG_HITS", 500)
	stats.set_int(MPX .. "REVOLTER_MG_HEADSHOTS", 500)
	stats.set_int(MPX .. "REVOLTER_MG_HELDTIME", 5963259)
	stats.set_int(MPX .. "REVOLTER_MG_ENEMY_KILLS", 500)
	stats.set_int(MPX .. "SAVESTRA_MG_KILLS", 500)
	stats.set_int(MPX .. "SAVESTRA_MG_DEATHS", 100)
	stats.set_int(MPX .. "SAVESTRA_MG_SHOTS", 500)
	stats.set_int(MPX .. "SAVESTRA_MG_HITS", 500)
	stats.set_int(MPX .. "SAVESTRA_MG_HEADSHOTS", 500)
	stats.set_int("MPPLY_NUM_CAPTURES_CREATED", 100)
	stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_0", -1)
	stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_1", -1)
	stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_2", -1)
	stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_3", -1)
	stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_4", -1)
	stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_5", -1)
	stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_6", -1)
	stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_7", -1)
	stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_8", -1)
	stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_9", -1)
	stats.set_int("MPPLY_HEIST_ACH_TRACKER", -1)
	stats.set_int("MPPLY_GANGOPS_ALLINORDER", 100)
	stats.set_int("MPPLY_GANGOPS_LOYALTY", 100)
	stats.set_int("MPPLY_GANGOPS_CRIMMASMD", 100)
	stats.set_int("MPPLY_GANGOPS_LOYALTY2", 100)
	stats.set_int("MPPLY_GANGOPS_LOYALTY3", 100)
	stats.set_int("MPPLY_GANGOPS_CRIMMASMD2", 100)
	stats.set_int("MPPLY_GANGOPS_CRIMMASMD3", 100)
	stats.set_int("MPPLY_GANGOPS_SUPPORT", 100)
	stats.set_int("MPPLY_AWD_FM_CR_DM_MADE", 600)
	stats.set_int("MPPLY_AWD_FM_CR_RACES_MADE", 1000)
	stats.set_int("MPPLY_AWD_FM_CR_MISSION_SCORE", 100)
	stats.set_int("MPPLY_TOTAL_RACES_WON", 500)
	stats.set_int("MPPLY_TOTAL_RACES_LOST", 250)
	stats.set_int("MPPLY_TOTAL_CUSTOM_RACES_WON", 500)
	stats.set_int("MPPLY_TOTAL_DEATHMATCH_LOST", 250)
	stats.set_int("MPPLY_TOTAL_DEATHMATCH_WON", 500)
	stats.set_int("MPPLY_TOTAL_TDEATHMATCH_LOST", 250)
	stats.set_int("MPPLY_TOTAL_TDEATHMATCH_WON", 500)
	stats.set_int("MPPLY_SHOOTINGRANGE_WINS", 500)
	stats.set_int("MPPLY_SHOOTINGRANGE_LOSSES", 250)
	stats.set_int("MPPLY_TENNIS_MATCHES_WON", 500)
	stats.set_int("MPPLY_TENNIS_MATCHES_LOST", 250)
	stats.set_int("MPPLY_GOLF_WINS", 500)
	stats.set_int("MPPLY_GOLF_LOSSES", 250)
	stats.set_int("MPPLY_DARTS_TOTAL_WINS", 500)
	stats.set_int("MPPLY_DARTS_TOTAL_MATCHES", 750)
	stats.set_int("MPPLY_SHOOTINGRANGE_TOTAL_MATCH", 800)
	stats.set_int("MPPLY_BJ_WINS", 500)
	stats.set_int("MPPLY_BJ_LOST", 250)
	stats.set_int("MPPLY_RACE_2_POINT_WINS", 500)
	stats.set_int("MPPLY_RACE_2_POINT_LOST", 250)
	stats.set_int("MPPLY_KILLS_PLAYERS", 3593)
	stats.set_int("MPPLY_DEATHS_PLAYER", 1002)
	stats.set_int("MPPLY_MISSIONS_CREATED", 500)
	stats.set_int("MPPLY_LTS_CREATED", 500)
	stats.set_int("MPPLY_AWD_FM_CR_PLAYED_BY_PEEP", 1598)
	stats.set_int("MPPLY_FM_MISSION_LIKES", 1500)
	stats.set_packed_stat_int(7315, 6) --WEAPON_STONE_HATCHET
	stats.set_packed_stat_int(18981, 4) --WEAPON_DOUBLEACTION
	stats.set_packed_stat_int(18982, 3) --Parts of the TM-02 Khanjali (tracks, remote grenade launcher and turret end/muzzle brake)
	stats.set_packed_stat_int(18983, 3) --Parts of the RCV (plow, door and water hose)
	stats.set_packed_stat_int(18984, 3) --Parts of the Chernobog (door, dual headlight set and wheels)
	stats.set_packed_stat_int(18985, 3) --Parts of the Thruster (exhaust, small rotors and handlebars/joysticks)
	stats.set_packed_stat_int(18986, 3) --Parts of the Avenger (wing, nose camera and rotor blade)
	stats.set_packed_stat_int(22050, 5) --Oppressor MK2 Trade Price
	stats.set_packed_stat_int(22051, 50) --Carved Wooden Box (Nightclub)
	stats.set_packed_stat_int(22052, 100) --Ammo Box
	stats.set_packed_stat_int(22053, 20) --Meth
	stats.set_packed_stat_int(22054, 80) --Weed
	stats.set_packed_stat_int(22055, 60) --Passports
	stats.set_packed_stat_int(22056, 40) --Crumpled Cash
	stats.set_packed_stat_int(22057, 10) --Impotent Rage Statue
	stats.set_packed_stat_int(22058, 20) --Gold Business Battle Trophy (Nightclub)
	stats.set_packed_stat_int(22063, 20) --Dinka Go Go Monkey Blista
	stats.set_packed_stat_int(41237, 10) --Taxi Livery
	stats.set_int(MPX .. "HOLDUPS_BITSET", -1)
	stats.set_int(MPX .. "CHAR_WEAP_UNLOCKED", -1)
	stats.set_int(MPX .. "CHAR_WEAP_UNLOCKED2", -1)
	stats.set_int(MPX .. "CHAR_WEAP_ADDON_1_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_WEAP_ADDON_2_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_WEAP_ADDON_3_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_WEAP_ADDON_4_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_UNLOCKED", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_UNLOCKED2", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_UNLOCKED3", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_UNLOCKED4", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_UNLOCKED5", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_UNLOCKED6", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_1_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_2_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_3_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_4_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_5_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_6_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_7_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_8_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_9_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_10_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_11_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_12_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_13_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_14_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_15_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_16_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_17_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_18_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_19_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_WEAP_ADDON_20_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_HAIRCUT_1_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_HAIR_UNLCK1", -1)
	stats.set_int(MPX .. "CHAR_HAIR_UNLCK2", -1)
	stats.set_int(MPX .. "CHAR_HAIR_UNLCK3", -1)
	stats.set_int(MPX .. "CHAR_HAIR_UNLCK4", -1)
	stats.set_int(MPX .. "CHAR_HAIR_UNLCK5", -1)
	stats.set_int(MPX .. "CHAR_HAIR_UNLCK6", -1)
	stats.set_int(MPX .. "CHAR_HAIR_UNLCK7", -1)
	stats.set_int(MPX .. "CHAR_HAIR_UNLCK8", -1)
	stats.set_int(MPX .. "CHAR_HAIR_UNLCK9", -1)
	stats.set_int(MPX .. "CHAR_HAIR_UNLCK10", -1)
	stats.set_int(MPX .. "CHAR_HAIR_UNLCK11", -1)
	stats.set_int(MPX .. "CHAR_HAIR_UNLCK12", -1)
	stats.set_int(MPX .. "CHAR_HAIR_UNLCK13", -1)
	stats.set_int(MPX .. "CHAR_HAIR_UNLCK14", -1)
	stats.set_int(MPX .. "CHAR_HAIR_UNLCK15", -1)
	stats.set_int(MPX .. "CHAR_HAIR_UNLCK16", -1)
	stats.set_int(MPX .. "CHAR_HAIR_UNLCK17", -1)
	stats.set_int(MPX .. "CHAR_FM_HEALTH_1_UNLCK", -1)
	stats.set_int(MPX .. "CHAR_FM_HEALTH_2_UNLCK", -1)
	stats.set_int(MPX .. "RANKAP_UNLK_0", -1)
	stats.set_int(MPX .. "RANKAP_UNLK_1", -1)
	stats.set_int(MPX .. "RANKAP_UNLK_2", -1)
	stats.set_int(MPX .. "RANKAP_UNLK_3", -1)
	stats.set_int(MPX .. "CHAR_CREWUNLOCK_1_UNLCK", -1)
	stats.set_int(MPX .. "PISTOL_ENEMY_KILLS", 600) -- Weapon Tints for Pistol
	stats.set_int(MPX .. "CMBTPISTOL_ENEMY_KILLS", 600) -- Weapon Tints for Combat Pistol
	stats.set_int(MPX .. "APPISTOL_ENEMY_KILLS", 600) -- Weapon Tints for AP Pistol
	stats.set_int(MPX .. "MICROSMG_ENEMY_KILLS", 600) -- Weapon Tints for Micro SMG
	stats.set_int(MPX .. "SMG_ENEMY_KILLS", 600) -- Weapon Tints for SMG
	stats.set_int(MPX .. "ASLTSMG_ENEMY_KILLS", 600) -- Weapon Tints for Assault SMG
	stats.set_int(MPX .. "ASLTRIFLE_ENEMY_KILLS", 600) -- Weapon Tints for Assault Rifle
	stats.set_int(MPX .. "CRBNRIFLE_ENEMY_KILLS", 600) -- Weapon Tints for Carbine Rifle
	stats.set_int(MPX .. "ADVRIFLE_ENEMY_KILLS", 600) -- Weapon Tints for Advanced Rifle
	stats.set_int(MPX .. "MG_ENEMY_KILLS", 600) -- Weapon Tints for MG
	stats.set_int(MPX .. "CMBTMG_ENEMY_KILLS", 600) -- Weapon Tints for Combat MG
	stats.set_int(MPX .. "PUMP_ENEMY_KILLS", 600) -- Weapon Tints for Pump Shotgun
	stats.set_int(MPX .. "SAWNOFF_ENEMY_KILLS", 600) -- Weapon Tints for Sawed-Off Shotgun
	stats.set_int(MPX .. "ASLTSHTGN_ENEMY_KILLS", 600) -- Weapon Tints for Assault Shotgun
	stats.set_int(MPX .. "SNIPERRFL_ENEMY_KILLS", 600) -- Weapon Tints for Sniper Rifle
	stats.set_int(MPX .. "HVYSNIPER_ENEMY_KILLS", 600) -- Weapon Tints for Heavy Sniper
	stats.set_int(MPX .. "GRNLAUNCH_ENEMY_KILLS", 600) -- Weapon Tints for Grenade Launcher
	stats.set_int(MPX .. "RPG_ENEMY_KILLS", 600) -- Weapon Tints for Rocket Launcher
	stats.set_int(MPX .. "MINIGUNS_ENEMY_KILLS", 600) -- Weapon Tints for Minigun
	unlock_packed_bools(25010, 25010) -- Skip arena wall help.
	unlock_packed_bools(25014, 25014) -- Skip arena wall tutorial.
	stats.set_int(MPX .. "FIXER_HQ_OWNED", 1) -- Trade Price for buffalo4
	unlock_packed_bools(32312, 32312)
	stats.set_int(MPX .. "REV_NV_KILLS", 50) -- Navy Revolver Kills
	stats.set_int(MPX .. "XM22_FLOW", -1) -- Acid Lab Unlock
	stats.set_int(MPX .. "XM22_MISSIONS", -1) -- Acid Lab Unlock
	stats.set_int(MPX .. "AWD_CALLME", tunables.get_int(654710993)) -- Acid Lab Equipment Unlock
	stats.set_int(MPX .. "H3_VEHICLESUSED", -1) -- Trade Price for Diamond Casino Heist Finale.
	stats.set_int(MPX .. "H4_H4_DJ_MISSIONS", -1) -- Trade Price for weevil
	stats.set_int(MPX .. "H4_PROGRESS", -1) -- Trade Price for winky
	stats.set_int(MPX .. "TUNER_GEN_BS", -1) -- Trade Price for tailgater2
	stats.set_int(MPX .. "ULP_MISSION_PROGRESS", -1) -- Trade Price greenwood/conada
	stats.set_int(MPX .. "SUM23_AVOP_PROGRESS", -1) -- Trade Price Raiju
	stats.set_int(MPX .. "GANGOPS_FLOW_BITSET_MISS0", -1) -- Trade Price for deluxo/akula/riot2/stromberg/chernobog/barrage/khanjali/volatol/thruster
	stats.set_bool(MPX .. "AWD_TAXISTAR", true) -- Trade Price for taxi
	stats.set_bool("MPPLY_AWD_HST_ORDER", true)
	stats.set_bool("MPPLY_AWD_HST_SAME_TEAM", true)
	stats.set_bool("MPPLY_AWD_HST_ULT_CHAL", true)
	stats.set_int(MPX .. "AT_FLOW_VEHICLE_BS", -1) -- Trade price for dune4/dune5/wastelander/blazer5/phantom2/voltic2/technical2/boxville5/ruiner2
	stats.set_int(MPX .. "LFETIME_HANGAR_BUY_COMPLET", 50) -- Trade price for microlight/rogue/alphaz1/havok/starling/molotok/tula/bombushka/howard/mogul/pyro/seabreeze/nokota/hunter
	stats.set_int(MPX .. "SALV23_GEN_BS", -1) -- polgauntlet trade price
	stats.set_int(MPX .. "SALV23_SCOPE_BS", -1) -- police5 trade price
	stats.set_int(MPX .. "MOST_TIME_ON_3_PLUS_STARS", 300000) -- police4 trade price
end)
FAUT:add_separator()
Text("==========================")
FAUT:add_button("Time Related Stats 1 Click Only", function()
	stats.set_int("MPPLY_TOTAL_PLAYING_TIME", 2073600000)
	stats.set_int("MPPLY_LEADERBOARD_PLAYING_TIME", 2073600000)
	stats.set_int("MPPLY_MP_PLAYING_TIME_NEW", 2073600000)
	stats.set_int("MPPLY_LONGEST_PLAYING_TIME", 2073600000)
	stats.set_int("MPPLY_TIME_DRIVING_CAR", 2073600000)
	stats.set_int("MPPLY_TIME_DRIVING_PLANE", 2073600000)
	stats.set_int("MPPLY_TIME_DRIVING_HELI", 2073600000)
	stats.set_int("MPPLY_TIME_DRIVING_QUADBIKE", 2073600000)
	stats.set_int("MPPLY_TIME_DRIVING_BIKE", 2073600000)
	stats.set_int("MPPLY_TIME_DRIVING_BICYCLE", 2073600000)
	stats.set_int("MPPLY_TIME_DRIVING_BOAT", 2073600000)
	stats.set_int("MPPLY_TIME_DRIVING_SUBMARINE", 2073600000)
	stats.set_int("MPPLY_TIME_SWIMMING", 2073600000)
	stats.set_int("MPPLY_TIME_WALKING", 2073600000)
	stats.set_int("MPPLY_TIME_UNDERWATER", 2073600000)
	stats.set_int("MPPLY_TIME_IN_WATER", 2073600000)
	stats.set_int("MPPLY_TIME_IN_COVER", 2073600000)
	stats.set_int("MPPLY_TIME_DRIVING_PASSENGER", 2073600000)
	stats.set_int("MPPLY_TOTAL_TIME_SPENT_ON_PHONE", 2073600000)
	stats.set_int("MPPLY_TIME_AS_A_PASSENGER", 2073600000)
	stats.set_int("MPPLY_TIME_AS_A_DRIVER", 2073600000)
	stats.set_int("MPPLY_TIME_SPENT_FLYING", 2073600000)
	stats.set_int("MPPLY_TIME_IN_CAR", 2073600000)
	stats.set_int("MPPLY_TOTAL_TIME_SPENT_DEATHMAT", 2073600000)
	stats.set_int("MPPLY_TOTAL_TIME_SPENT_FREEMODE", 2073600000)
	stats.set_int("MPPLY_TOTAL_TIME_MISSION_CREATO", 2073600000)
	stats.set_int("MPPLY_TOTAL_TIME_SPENT_RACES", 2073600000)
	stats.set_int("MPPLY_TOTAL_TIME_SPENT_ON_MISS", 2073600000)
	stats.set_int("MPPLY_TOTAL_TIME_UNDERWATER", 2073600000)
	stats.set_int("MPPLY_TOTAL_TIME_CINEMA", 2073600000)
	stats.set_int("MPPLY_TOTAL_TIME_LOAD_SCREEN", 2073600000)
	stats.set_int("MPPLY_TOTAL_TIME_IN_LOBBY", 2073600000)
	stats.set_int("MPPLY_TOTAL_TIME_SPENT_DEATHMAT", 2147483647)
	stats.set_int("MPPLY_TOTAL_TIME_SPENT_RACES", 2147483647)
	stats.set_int("MPPLY_TOTAL_TIME_LOAD_SCREEN", 1047483647)
	stats.set_int("MPPLY_TOTAL_TIME_IN_LOBBY", 1047483647)
	stats.set_int(MPX .. "TIME_AS_A_DRIVER", 2147483647)
	stats.set_int(MPX .. "TIME_SPENT_FLYING", 2147483647)
	stats.set_int(MPX .. "TIME_IN_CAR", 2147483647)
	stats.set_int(MPX .. "TIME_AS_A_PASSENGER", 2147483647)
	stats.set_int(MPX .. "TOTAL_TIME_CINEMA", 2147483647)
	stats.set_int(MPX .. "TOTAL_CHASE_TIME", 432000000)
	stats.set_int(MPX .. "ARN_SPEC_BOX_TIME_MS", 86400000)
	stats.set_int(MPX .. "LONGEST_PLAYING_TIME", 1047483647)
	stats.set_int(MPX .. "TIME_DRIVING_CAR", 1047483647)
	stats.set_int(MPX .. "TIME_DRIVING_PLANE", 1047483647)
	stats.set_int(MPX .. "TIME_DRIVING_HELI", 1047483647)
	stats.set_int(MPX .. "TIME_DRIVING_QUADBIKE", 1047483647)
	stats.set_int(MPX .. "TIME_DRIVING_BIKE", 1047483647)
	stats.set_int(MPX .. "TIME_DRIVING_BICYCLE", 1047483647)
	stats.set_int(MPX .. "TIME_DRIVING_BOAT", 1047483647)
	stats.set_int(MPX .. "TIME_DRIVING_SUBMARINE", 1047483647)
	stats.set_int(MPX .. "TIME_SWIMMING", 1047483647)
	stats.set_int(MPX .. "TIME_WALKING", 1047483647)
	stats.set_int(MPX .. "TIME_UNDERWATER", 1047483647)
	stats.set_int(MPX .. "TIME_IN_WATER", 1047483647)
	stats.set_int(MPX .. "TIME_IN_COVER", 1047483647)
	stats.set_int(MPX .. "TIME_DRIVING_PASSENGER", 1047483647)
	stats.set_int(MPX .. "TOTAL_TIME_SPENT_ON_PHONE", 1047483647)
	stats.set_int(MPX .. "TIME_AS_A_PASSENGER", 1047483647)
	stats.set_int(MPX .. "TIME_AS_A_DRIVER", 1047483647)
	stats.set_int(MPX .. "TIME_SPENT_FLYING", 1047483647)
	stats.set_int(MPX .. "TIME_IN_CAR", 1047483647)
	stats.set_int(MPX .. "TOTAL_TIME_UNDERWATER", 1047483647)
	stats.set_int(MPX .. "TOTAL_TIME_CINEMA", 1047483647)
end)
FAUT:add_separator()
Text("==========================")
FAUT:add_button("Bools Unlocks 1 Click Only", function()
	PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
	if PlayerIndex == 0 then
		MPX = "MP0_"
	else
		MPX = "MP1_"
	end
	stats.set_bool(MPX .. "AWD_TEEING_OFF", true)
	stats.set_bool(MPX .. "AWD_PARTY_NIGHT", true)
	stats.set_bool(MPX .. "AWD_BILLIONAIRE_GAMES", true)
	stats.set_bool(MPX .. "AWD_HOOD_PASS", true)
	stats.set_bool(MPX .. "AWD_STUDIO_TOUR", true)
	stats.set_bool(MPX .. "AWD_DONT_MESS_DRE", true)
	stats.set_bool(MPX .. "AWD_BACKUP", true)
	stats.set_bool(MPX .. "AWD_SHORTFRANK_1", true)
	stats.set_bool(MPX .. "AWD_SHORTFRANK_2", true)
	stats.set_bool(MPX .. "AWD_SHORTFRANK_3", true)
	stats.set_bool(MPX .. "AWD_CONTR_KILLER", true)
	stats.set_bool(MPX .. "AWD_DOGS_BEST_FRIEND", true)
	stats.set_bool(MPX .. "AWD_MUSIC_STUDIO", true)
	stats.set_bool(MPX .. "AWD_SHORTLAMAR_1", true)
	stats.set_bool(MPX .. "AWD_SHORTLAMAR_2", true)
	stats.set_bool(MPX .. "AWD_SHORTLAMAR_3", true)
	stats.set_bool(MPX .. "BS_FRANKLIN_DIALOGUE_0", true)
	stats.set_bool(MPX .. "BS_FRANKLIN_DIALOGUE_1", true)
	stats.set_bool(MPX .. "BS_FRANKLIN_DIALOGUE_2", true)
	stats.set_bool(MPX .. "BS_IMANI_D_APP_SETUP", true)
	stats.set_bool(MPX .. "BS_IMANI_D_APP_STRAND", true)
	stats.set_bool(MPX .. "BS_IMANI_D_APP_PARTY", true)
	stats.set_bool(MPX .. "BS_IMANI_D_APP_PARTY_2", true)
	stats.set_bool(MPX .. "BS_IMANI_D_APP_PARTY_F", true)
	stats.set_bool(MPX .. "BS_IMANI_D_APP_BILL", true)
	stats.set_bool(MPX .. "BS_IMANI_D_APP_BILL_2", true)
	stats.set_bool(MPX .. "BS_IMANI_D_APP_BILL_F", true)
	stats.set_bool(MPX .. "BS_IMANI_D_APP_HOOD", true)
	stats.set_bool(MPX .. "BS_IMANI_D_APP_HOOD_2", true)
	stats.set_bool(MPX .. "BS_IMANI_D_APP_HOOD_F", true)
	stats.set_bool(MPX .. "AWD_SCOPEOUT", true)
	stats.set_bool(MPX .. "AWD_CREWEDUP", true)
	stats.set_bool(MPX .. "AWD_MOVINGON", true)
	stats.set_bool(MPX .. "AWD_PROMOCAMP", true)
	stats.set_bool(MPX .. "AWD_GUNMAN", true)
	stats.set_bool(MPX .. "AWD_SMASHNGRAB", true)
	stats.set_bool(MPX .. "AWD_INPLAINSI", true)
	stats.set_bool(MPX .. "AWD_UNDETECTED", true)
	stats.set_bool(MPX .. "AWD_ALLROUND", true)
	stats.set_bool(MPX .. "AWD_ELITETHEIF", true)
	stats.set_bool(MPX .. "AWD_PRO", true)
	stats.set_bool(MPX .. "AWD_SUPPORTACT", true)
	stats.set_bool(MPX .. "AWD_SHAFTED", true)
	stats.set_bool(MPX .. "AWD_COLLECTOR", true)
	stats.set_bool(MPX .. "AWD_DEADEYE", true)
	stats.set_bool(MPX .. "AWD_PISTOLSATDAWN", true)
	stats.set_bool(MPX .. "AWD_TRAFFICAVOI", true)
	stats.set_bool(MPX .. "AWD_CANTCATCHBRA", true)
	stats.set_bool(MPX .. "AWD_WIZHARD", true)
	stats.set_bool(MPX .. "AWD_APEESCAP", true)
	stats.set_bool(MPX .. "AWD_MONKEYKIND", true)
	stats.set_bool(MPX .. "AWD_AQUAAPE", true)
	stats.set_bool(MPX .. "AWD_KEEPFAITH", true)
	stats.set_bool(MPX .. "AWD_TRUELOVE", true)
	stats.set_bool(MPX .. "AWD_NEMESIS", true)
	stats.set_bool(MPX .. "AWD_FRIENDZONED", true)
	stats.set_bool(MPX .. "IAP_CHALLENGE_0", true)
	stats.set_bool(MPX .. "IAP_CHALLENGE_1", true)
	stats.set_bool(MPX .. "IAP_CHALLENGE_2v", true)
	stats.set_bool(MPX .. "IAP_CHALLENGE_3", true)
	stats.set_bool(MPX .. "IAP_CHALLENGE_4v", true)
	stats.set_bool(MPX .. "IAP_GOLD_TANK", true)
	stats.set_bool(MPX .. "SCGW_WON_NO_DEATHS", true)
	stats.set_bool(MPX .. "AWD_KINGOFQUB3D", true)
	stats.set_bool(MPX .. "AWD_QUBISM", true)
	stats.set_bool(MPX .. "AWD_QUIBITS", true)
	stats.set_bool(MPX .. "AWD_GODOFQUB3D", true)
	stats.set_bool(MPX .. "AWD_STRAIGHT_TO_VIDEO", true)
	stats.set_bool(MPX .. "AWD_MONKEY_C_MONKEY_DO", true)
	stats.set_bool(MPX .. "AWD_TRAINED_TO_KILL", true)
	stats.set_bool(MPX .. "AWD_DIRECTOR", true)
	stats.set_bool(MPX .. "VCM_FLOW_CS_RSC_SEEN", true)
	stats.set_bool(MPX .. "VCM_FLOW_CS_BWL_SEEN", true)
	stats.set_bool(MPX .. "VCM_FLOW_CS_MTG_SEEN", true)
	stats.set_bool(MPX .. "VCM_FLOW_CS_OIL_SEEN", true)
	stats.set_bool(MPX .. "VCM_FLOW_CS_DEF_SEEN", true)
	stats.set_bool(MPX .. "VCM_FLOW_CS_FIN_SEEN", true)
	stats.set_bool(MPX .. "WAS_CHAR_TRANSFERED", true)
	stats.set_bool(MPX .. "CL_RACE_MODDED_CAR", true)
	stats.set_bool(MPX .. "CL_DRIVE_RALLY", true)
	stats.set_bool(MPX .. "CL_PLAY_GTA_RACE", true)
	stats.set_bool(MPX .. "CL_PLAY_BOAT_RACE", true)
	stats.set_bool(MPX .. "CL_PLAY_FOOT_RACE", true)
	stats.set_bool(MPX .. "CL_PLAY_TEAM_DM", true)
	stats.set_bool(MPX .. "CL_PLAY_VEHICLE_DM", true)
	stats.set_bool(MPX .. "CL_PLAY_MISSION_CONTACT", true)
	stats.set_bool(MPX .. "CL_PLAY_A_PLAYLIST", true)
	stats.set_bool(MPX .. "CL_PLAY_POINT_TO_POINT", true)
	stats.set_bool(MPX .. "CL_PLAY_ONE_ON_ONE_DM", true)
	stats.set_bool(MPX .. "CL_PLAY_ONE_ON_ONE_RACE", true)
	stats.set_bool(MPX .. "CL_SURV_A_BOUNTY", true)
	stats.set_bool(MPX .. "CL_SET_WANTED_LVL_ON_PLAY", true)
	stats.set_bool(MPX .. "CL_GANG_BACKUP_GANGS", true)
	stats.set_bool(MPX .. "CL_GANG_BACKUP_LOST", true)
	stats.set_bool(MPX .. "CL_GANG_BACKUP_VAGOS", true)
	stats.set_bool(MPX .. "CL_CALL_MERCENARIES", true)
	stats.set_bool(MPX .. "CL_PHONE_MECH_DROP_CAR", true)
	stats.set_bool(MPX .. "CL_GONE_OFF_RADAR", true)
	stats.set_bool(MPX .. "CL_FILL_TITAN", true)
	stats.set_bool(MPX .. "CL_MOD_CAR_USING_APP", true)
	stats.set_bool(MPX .. "CL_MOD_CAR_USING_APP", true)
	stats.set_bool(MPX .. "CL_BUY_INSURANCE", true)
	stats.set_bool(MPX .. "CL_BUY_GARAGE", true)
	stats.set_bool(MPX .. "CL_ENTER_FRIENDS_HOUSE", true)
	stats.set_bool(MPX .. "CL_CALL_STRIPPER_HOUSE", true)
	stats.set_bool(MPX .. "CL_CALL_FRIEND", true)
	stats.set_bool(MPX .. "CL_SEND_FRIEND_REQUEST", true)
	stats.set_bool(MPX .. "CL_W_WANTED_PLAYER_TV", true)
	stats.set_bool(MPX .. "PILOT_ASPASSEDLESSON_0", true)
	stats.set_bool(MPX .. "PILOT_ASPASSEDLESSON_1", true)
	stats.set_bool(MPX .. "PILOT_ASPASSEDLESSON_2", true)
	stats.set_bool(MPX .. "PILOT_ASPASSEDLESSON_3", true)
	stats.set_bool(MPX .. "PILOT_ASPASSEDLESSON_4", true)
	stats.set_bool(MPX .. "PILOT_ASPASSEDLESSON_5", true)
	stats.set_bool(MPX .. "PILOT_ASPASSEDLESSON_6", true)
	stats.set_bool(MPX .. "PILOT_ASPASSEDLESSON_7", true)
	stats.set_bool(MPX .. "PILOT_ASPASSEDLESSON_8", true)
	stats.set_bool(MPX .. "PILOT_ASPASSEDLESSON_9", true)
	stats.set_bool(MPX .. "AWD_FIRST_TIME1", true)
	stats.set_bool(MPX .. "AWD_FIRST_TIME2", true)
	stats.set_bool(MPX .. "AWD_FIRST_TIME3", true)
	stats.set_bool(MPX .. "AWD_FIRST_TIME4", true)
	stats.set_bool(MPX .. "AWD_FIRST_TIME5", true)
	stats.set_bool(MPX .. "AWD_FIRST_TIME6", true)
	stats.set_bool(MPX .. "AWD_ALL_IN_ORDER", true)
	stats.set_bool(MPX .. "AWD_SUPPORTING_ROLE", true)
	stats.set_bool(MPX .. "AWD_ACTIVATE_2_PERSON_KEY", true)
	stats.set_bool(MPX .. "AWD_ALL_ROLES_HEIST", true)
	stats.set_bool(MPX .. "AWD_LEADER", true)
	stats.set_bool(MPX .. "AWD_SURVIVALIST", true)
	stats.set_bool(MPX .. "AWD_BUY_EVERY_GUN", true)
	stats.set_bool(MPX .. "AWD_DAILYOBJMONTHBONUS", true)
	stats.set_bool(MPX .. "AWD_DAILYOBJWEEKBONUS", true)
	stats.set_bool(MPX .. "AWD_DRIVELESTERCAR5MINS", true)
	stats.set_bool(MPX .. "AWD_FINISH_HEIST_NO_DAMAGE", true)
	stats.set_bool(MPX .. "AWD_FM25DIFFERENTDM", true)
	stats.set_bool(MPX .. "AWD_FM25DIFFERENTRACES", true)
	stats.set_bool(MPX .. "AWD_FM25DIFITEMSCLOTHES", true)
	stats.set_bool(MPX .. "AWD_FMFURTHESTWHEELIE", true)
	stats.set_bool(MPX .. "AWD_FM6DARTCHKOUT", true)
	stats.set_bool(MPX .. "AWD_FM_GOLF_HOLE_IN_1", true)
	stats.set_bool(MPX .. "AWD_FM_SHOOTRANG_GRAN_WON", true)
	stats.set_bool(MPX .. "AWD_FM_TENNIS_5_SET_WINS", true)
	stats.set_bool(MPX .. "AWD_FMATTGANGHQ", true)
	stats.set_bool(MPX .. "AWD_FMFULLYMODDEDCAR", true)
	stats.set_bool(MPX .. "AWD_FMKILL3ANDWINGTARACE", true)
	stats.set_bool(MPX .. "AWD_FMKILLSTREAKSDM", true)
	stats.set_bool(MPX .. "AWD_FMMOSTKILLSGANGHIDE", true)
	stats.set_bool(MPX .. "AWD_FMMOSTKILLSSURVIVE", true)
	stats.set_bool(MPX .. "AWD_FMPICKUPDLCCRATE1ST", true)
	stats.set_bool(MPX .. "AWD_FMRACEWORLDRECHOLDER", true)
	stats.set_bool(MPX .. "AWD_FMTATTOOALLBODYPARTS", true)
	stats.set_bool(MPX .. "AWD_FMWINALLRACEMODES", true)
	stats.set_bool(MPX .. "AWD_FMWINCUSTOMRACE", true)
	stats.set_bool(MPX .. "AWD_FMWINEVERYGAMEMODE", true)
	stats.set_bool(MPX .. "AWD_SPLIT_HEIST_TAKE_EVENLY", true)
	stats.set_bool(MPX .. "AWD_STORE_20_CAR_IN_GARAGES", true)
	stats.set_bool(MPX .. "SR_TIER_1_REWARD", true)
	stats.set_bool(MPX .. "SR_TIER_3_REWARD", true)
	stats.set_bool(MPX .. "SR_INCREASE_THROW_CAP", true)
	stats.set_bool(MPX .. "AWD_CLUB_COORD", true)
	stats.set_bool(MPX .. "AWD_CLUB_HOTSPOT", true)
	stats.set_bool(MPX .. "AWD_CLUB_CLUBBER", true)
	stats.set_bool(MPX .. "AWD_BEGINNER", true)
	stats.set_bool(MPX .. "AWD_FIELD_FILLER", true)
	stats.set_bool(MPX .. "AWD_ARMCHAIR_RACER", true)
	stats.set_bool(MPX .. "AWD_LEARNER", true)
	stats.set_bool(MPX .. "AWD_SUNDAY_DRIVER", true)
	stats.set_bool(MPX .. "AWD_THE_ROOKIE", true)
	stats.set_bool(MPX .. "AWD_BUMP_AND_RUN", true)
	stats.set_bool(MPX .. "AWD_GEAR_HEAD", true)
	stats.set_bool(MPX .. "AWD_DOOR_SLAMMER", true)
	stats.set_bool(MPX .. "AWD_HOT_LAP", true)
	stats.set_bool(MPX .. "AWD_ARENA_AMATEUR", true)
	stats.set_bool(MPX .. "AWD_PAINT_TRADER", true)
	stats.set_bool(MPX .. "AWD_SHUNTER", true)
	stats.set_bool(MPX .. "AWD_JOCK", true)
	stats.set_bool(MPX .. "AWD_WARRIOR", true)
	stats.set_bool(MPX .. "AWD_T_BONE", true)
	stats.set_bool(MPX .. "AWD_MAYHEM", true)
	stats.set_bool(MPX .. "AWD_WRECKER", true)
	stats.set_bool(MPX .. "AWD_CRASH_COURSE", true)
	stats.set_bool(MPX .. "AWD_ARENA_LEGEND", true)
	stats.set_bool(MPX .. "AWD_PEGASUS", true)
	stats.set_bool(MPX .. "AWD_CONTACT_SPORT", true)
	stats.set_bool(MPX .. "AWD_UNSTOPPABLE", true)
	stats.set_bool(MPX .. "LOW_FLOW_CS_DRV_SEEN", true)
	stats.set_bool(MPX .. "LOW_FLOW_CS_TRA_SEEN", true)
	stats.set_bool(MPX .. "LOW_FLOW_CS_FUN_SEEN", true)
	stats.set_bool(MPX .. "LOW_FLOW_CS_PHO_SEEN", true)
	stats.set_bool(MPX .. "LOW_FLOW_CS_FIN_SEEN", true)
	stats.set_bool(MPX .. "LOW_BEN_INTRO_CS_SEEN", true)
	stats.set_bool(MPX .. "CASINOPSTAT_BOOL0", true)
	stats.set_bool(MPX .. "CASINOPSTAT_BOOL1", true)
	stats.set_bool(MPX .. "FILM4SHIRTUNLOCK", true)
	stats.set_bool(MPX .. "FILM5SHIRTUNLOCK", true)
	stats.set_bool(MPX .. "FILM6SHIRTUNLOCK", true)
	stats.set_bool(MPX .. "FILM7SHIRTUNLOCK", true)
	stats.set_bool(MPX .. "FILM8SHIRTUNLOCK", true)
	stats.set_bool(MPX .. "FILM9SHIRTUNLOCK", true)
	stats.set_bool(MPX .. "ACCOUNTANTSHIRTUNLOCK", true)
	stats.set_bool(MPX .. "BAHAMAMAMASHIRTUNLOCK", true)
	stats.set_bool(MPX .. "DRONESHIRTUNLOCK", true)
	stats.set_bool(MPX .. "GROTTISHIRTUNLOCK", true)
	stats.set_bool(MPX .. "GOLFSHIRTUNLOCK", true)
	stats.set_bool(MPX .. "MAISONETTESHIRTUNLOCK", true)
	stats.set_bool(MPX .. "MANOPAUSESHIRTUNLOCK", true)
	stats.set_bool(MPX .. "MELTDOWNSHIRTUNLOCK", true)
	stats.set_bool(MPX .. "PACIFICBLUFFSSHIRTUNLOCK", true)
	stats.set_bool(MPX .. "PROLAPSSHIRTUNLOCK", true)
	stats.set_bool(MPX .. "TENNISSHIRTUNLOCK", true)
	stats.set_bool(MPX .. "TOESHOESSHIRTUNLOCK", true)
	stats.set_bool(MPX .. "VANILLAUNICORNSHIRTUNLOCK", true)
	stats.set_bool(MPX .. "MARLOWESHIRTUNLOCK", true)
	stats.set_bool(MPX .. "CRESTSHIRTUNLOCK", true)
	stats.set_bool("MPPLY_AWD_GANGOPS_ALLINORDER", true)
	stats.set_bool("MPPLY_AWD_GANGOPS_SUPPORT", true)
	stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY2", true)
	stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD2", true)
	stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY3", true)
	stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD3", true)
	stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY", true)
	stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD", true)
	stats.set_bool("MPPLY_MELEECHLENGECOMPLETED", true)
	stats.set_bool("MPPLY_HEADSHOTCHLENGECOMPLETED", true)
	stats.set_bool("MPPLY_AWD_COMPLET_HEIST_MEM", true)
	stats.set_bool("MPPLY_AWD_COMPLET_HEIST_1STPER", true)
	stats.set_bool("MPPLY_AWD_FLEECA_FIN", true)
	stats.set_bool("MPPLY_AWD_HST_ORDER", true)
	stats.set_bool("MPPLY_AWD_HST_SAME_TEAM", true)
	stats.set_bool("MPPLY_AWD_HST_ULT_CHAL", true)
	stats.set_bool("MPPLY_AWD_HUMANE_FIN", true)
	stats.set_bool("MPPLY_AWD_PACIFIC_FIN", true)
	stats.set_bool("MPPLY_AWD_PRISON_FIN", true)
	stats.set_bool("MPPLY_AWD_SERIESA_FIN", true)
	stats.set_bool("MPPLY_AWD_GANGOPS_IAA", true)
	stats.set_bool("MPPLY_AWD_GANGOPS_SUBMARINE", true)
	stats.set_bool("MPPLY_AWD_GANGOPS_MISSILE", true)
end)

FAUT:add_separator()
FAUT:add_button("Unlock Diamond Casino Heist Outfits", function()
	stats.set_bool_masked(MPX .. "CASINOHSTPSTAT_BOOL1", true, 63) -- Refuse Collectors
	stats.set_bool_masked(MPX .. "CASINOHSTPSTAT_BOOL2", true, 0) -- Undertakers
	stats.set_bool_masked(MPX .. "CASINOHSTPSTAT_BOOL2", true, 1) -- Valet Outfits
	stats.set_bool_masked(MPX .. "CASINOHSTPSTAT_BOOL2", true, 3) -- Prison Guards
	stats.set_bool_masked(MPX .. "CASINOHSTPSTAT_BOOL2", true, 4) -- FIB Suits
	stats.set_bool_masked(MPX .. "CASINOHSTPSTAT_BOOL2", true, 6) -- Gruppe Sechs Gear
	stats.set_bool_masked(MPX .. "CASINOHSTPSTAT_BOOL2", true, 7) -- Bugstars Uniforms
	stats.set_bool_masked(MPX .. "CASINOHSTPSTAT_BOOL2", true, 8) -- Maintenance
	stats.set_bool_masked(MPX .. "CASINOHSTPSTAT_BOOL2", true, 9) -- Yung Ancestors
	stats.set_bool_masked(MPX .. "CASINOHSTPSTAT_BOOL2", true, 10) -- Firefighter Gear
	stats.set_bool_masked(MPX .. "CASINOHSTPSTAT_BOOL2", true, 11) -- Orderly Armor
	stats.set_bool_masked(MPX .. "CASINOHSTPSTAT_BOOL2", true, 12) -- Upscale Armor
	stats.set_bool_masked(MPX .. "CASINOHSTPSTAT_BOOL2", true, 13) -- Evening Armor
	stats.set_bool_masked(MPX .. "CASINOHSTPSTAT_BOOL2", true, 14) -- Reinforced: Padded Combat
	stats.set_bool_masked(MPX .. "CASINOHSTPSTAT_BOOL2", true, 15) -- Reinforced: Bulk Combat
	stats.set_bool_masked(MPX .. "CASINOHSTPSTAT_BOOL2", true, 16) -- Reinforced: Compact Combat
	stats.set_bool_masked(MPX .. "CASINOHSTPSTAT_BOOL2", true, 17) -- Balaclava Crook
	stats.set_bool_masked(MPX .. "CASINOHSTPSTAT_BOOL2", true, 18) -- Classic Crook
	stats.set_bool_masked(MPX .. "CASINOHSTPSTAT_BOOL2", true, 19) -- High-end Crook
	stats.set_bool_masked(MPX .. "CASINOHSTPSTAT_BOOL2", true, 20) -- Infiltration: Upgraded Tech
	stats.set_bool_masked(MPX .. "CASINOHSTPSTAT_BOOL2", true, 21) -- Infiltration: Advanced Tech
	stats.set_bool_masked(MPX .. "CASINOHSTPSTAT_BOOL2", true, 22) -- Infiltration: Modernized Tech
end)

FAUT:add_separator()
FAUT:add_button("Unlock Taxi Livery for Eudora", function()
	stats.set_masked_int(MPX .. "DLC22022PSTAT_INT536", 10, 16, 8)
end)

FAUT:add_button("Unlock Taxi Livery for Broadway", function()
	stats.set_int(MPX .. "AWD_TAXIDRIVER", 50)
end)

FAUT:add_button("Unlock Oppressor MKII Trade Price", function()
	stats.set_masked_int(MPX .. "BUSINESSBATPSTAT_INT379", 5, 5, 5) --Pegassi Oppressor Mk II (Trade Price)
end)

Text("Join New Session Once And")
Text("Notifications Will Stop")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

LSCMUnlockeRecoveryMenu = L7NEG:add_tab("LSCM Unlocker Menu")

LSCMUnlockeRecoveryMenu:add_button("Unlock All Rep Lvl 1000", function()
	for i = 262145 + 30958, 262145 + 30987 do
		globals.set_float(i, 100000)
	end
end)

LSCMUnlockeRecoveryMenu:add_button("LSCM Prize Ride Unlock", function()
	stats.set_bool(MPX .. "CARMEET_PV_CHLLGE_CMPLT", true)
end)

LSCMNote = LSCMUnlockeRecoveryMenu:add_tab("Read Me Tutorial")

LSCMNote:add_text("Buy a membership, activate, sit in", function() end)
LSCMNote:add_text("a test car and go to the track", function() end)
LSCMNote:add_text("", function() end)
LSCMNote:add_text("If your level is not 1, then activate", function() end)
LSCMNote:add_text("and buy something in the LSCM store", function() end)
LSCMNote:add_text("", function() end)
LSCMNote:add_text("If you've used LS Tuner awards unlock", function() end)
LSCMNote:add_text("before, all unlocks will be temporary only", function() end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--© 2023 L7NEG's Official Discord Server. All Rights Reserved--

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

L7NEG7 = L7NEG:add_tab("Ultimate Money Methods Menu")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CeoManagerMenu = L7NEG7:add_tab("Ceo Manager Menu")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--©️ 2024 ΞΛZТΞΛ#0157/SLON
CEO1 = 262145 + 15732
CEO2 = 262145 + 15499
CEO3 = 262145 + 15500
SMC1 = 545 + 1
SMC2 = 545 + 7
SMC3 = 545 + 584
SMC4 = 545 + 55
SMC5 = 545 + 595
SMC6 = 560
SMC7 = 741
SMC8 = 742
SMC9 = 603 + 5
SMC10 = 603 + 1
SMC11 = 603 + 191
SMC12 = 603 + 192

local cs = "appsecuroserv"

local ci = "gb_contraband_sell"

local cb = "gb_contraband_buy"

local am = "am_mp_warehouse"

local am2 = "am_mp_peds"

cratevalue = 0
CeoManagerMenu:add_imgui(function()
	cratevalue, used = ImGui.DragInt("Crate Value", cratevalue, 10000, 0, 6000000)
	if used then
		globals.set_int(CEO1, cratevalue)
	end
end)

checkbox = CeoManagerMenu:add_checkbox("Start Ceo Manager")

CeoManagerMenu:add_button("Open Warehouse Screen", function()
	SCRIPT.REQUEST_SCRIPT("apparcadebusinesshub")
	SYSTEM.START_NEW_SCRIPT("apparcadebusinesshub", 8344)
end)

CeoManagerMenu:add_button("Disable RP Gain", function()
	globals.set_float(262145 + 1, 0)
end)
CeoManagerMenu:add_button("Enable RP Gain", function()
	globals.set_float(262145 + 1, 1)
end)

script.register_looped("yimceoloop", function(script)
	globals.get_int(CEO1)
	globals.set_int(CEO2, 0)
	globals.set_int(CEO3, 0)
	script:yield()

	if checkbox:is_enabled() == true then
		if locals.get_int(ci, 2) == 1 then
			locals.set_int(ci, SMC5, 1)
			locals.set_int(ci, SMC4, 0)
			locals.set_int(ci, SMC3, 0)
			locals.set_int(ci, SMC2, 7)
			script:sleep(500)
			locals.set_int(ci, SMC1, 99999)
		end
		if locals.get_int(cs, 2) == 1 then
			script:sleep(500)
			locals.set_int(cs, SMC8, 1)
			script:sleep(200)
			locals.set_int(cs, SMC7, 1)
			script:sleep(200)
			locals.set_int(cs, SMC6, 3012)
			script:sleep(1000)
		end
		if locals.get_int(cb, 2) == 1 then
			locals.set_int(cb, SMC9, 1)
			locals.set_int(cb, SMC10, 111)
			locals.set_int(cb, SMC11, 6)
			locals.set_int(cb, SMC12, 4)
			gui.show_message("Your Warehouse is now full! 111/111 Crates")
		end
		if locals.get_int(ci, 2) ~= 1 then
			script:sleep(500)
			if locals.get_int(am, 2) == 1 then
				SCRIPT.REQUEST_SCRIPT("appsecuroserv")
				SYSTEM.START_NEW_SCRIPT("appsecuroserv", 8344)
				SCRIPT.SET_SCRIPT_AS_NO_LONGER_NEEDED("appsecuroserv")
			end
		end
	end
	script:sleep(500)
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

MoneyRemoverMenu = L7NEG:add_tab("Money Remover Menu")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

moneyremovervalue = globals.get_int(BV)
MoneyRemoverMenu:add_imgui(function()
	moneyremovervalue, used = ImGui.DragInt("Set Ballastic Value", moneyremovervalue, 1000000, 1000000, 2147483647)
	if used then
		globals.set_int(BV, moneyremovervalue)
	end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local gun_van_tab = L7NEG:add_tab("Gun Van Menu")

local gunvan_locations = {
	vec3:new(-29.532, 6435.136, 31.162),
	vec3:new(1705.214, 4819.167, 41.75),
	vec3:new(1795.522, 3899.753, 33.869),
	vec3:new(1335.536, 2758.746, 51.099),
	vec3:new(795.583, 1210.78, 338.962),
	vec3:new(-3192.67, 1077.205, 20.594),
	vec3:new(-789.719, 5400.921, 33.915),
	vec3:new(-24.384, 3048.167, 40.703),
	vec3:new(2666.786, 1469.324, 24.237),
	vec3:new(-1454.966, 2667.503, 3.2),
	vec3:new(2340.418, 3054.188, 47.888),
	vec3:new(1509.183, -2146.795, 76.853),
	vec3:new(1137.404, -1358.654, 34.322),
	vec3:new(-57.208, -2658.793, 5.737),
	vec3:new(1905.017, 565.222, 175.558),
	vec3:new(974.484, -1718.798, 30.296),
	vec3:new(779.077, -3266.297, 5.719),
	vec3:new(-587.728, -1637.208, 19.611),
	vec3:new(733.99, -736.803, 26.165),
	vec3:new(-1694.632, -454.082, 40.712),
	vec3:new(-1330.726, -1163.948, 4.313),
	vec3:new(-496.618, 40.231, 52.316),
	vec3:new(275.527, 66.509, 94.108),
	vec3:new(260.928, -763.35, 30.559),
	vec3:new(-478.025, -741.45, 30.299),
	vec3:new(894.94, 3603.911, 32.56),
	vec3:new(-2166.511, 4289.503, 48.733),
	vec3:new(1465.633, 6553.67, 13.771),
	vec3:new(1101.032, -335.172, 66.944),
	vec3:new(149.683, -1655.674, 29.028),
}

local van_locations = {
	"Paleto Bay - 1",
	"Grapeseed - 2",
	"Sandy Shores - 3",
	"Grand Senora - 4",
	"Vinewood Hills - 5",
	"Chumash - 6",
	"Paleto Forest - 7",
	"Zancudo River - 8",
	"Power Station - 9",
	"Lago Zancudo - 10",
	"Grand Senora - 11",
	"El Burro Heights - 12",
	"Murrieta Heights - 13",
	"Elysian Island - 14",
	"Tataviam - 15",
	"La Mesa - 16",
	"Terminal - 17",
	"La Puerta - 18",
	"La Mesa - 19",
	"Del Perro - 20",
	"Magellan Ave - 21",
	"West Vinewood - 22",
	"Downtown Vinewood - 23",
	"Pillbox Hill - 24",
	"Little Seoul - 25",
	"Alamo Sea - 26",
	"North Chumash - 27",
	"Mount Chiliad - 28",
	"Mirror Park - 29",
	"Davis - 30",
}

-- Originally by SilentSalo
local weapons_data = {
	"WEAPON_KNIFE",
	"WEAPON_NIGHTSTICK",
	"WEAPON_HAMMER",
	"WEAPON_BOTTLE",
	"WEAPON_DAGGER",
	"WEAPON_KNUCKLE",
	"WEAPON_MACHETE",
	"WEAPON_FLASHLIGHT",
	"WEAPON_SWITCHBLADE",
	"WEAPON_BATTLEAXE",
	"WEAPON_POOLCUE",
	"WEAPON_WRENCH",
	"WEAPON_HATCHET",
	"WEAPON_BAT",
	"WEAPON_CROWBAR",
    "WEAPON_STUNROD",
	"WEAPON_PISTOL",
	"WEAPON_PISTOL_MK2",
	"WEAPON_COMBATPISTOL",
	"WEAPON_APPISTOL",
	"WEAPON_PISTOL50",
	"WEAPON_SNSPISTOL",
	"WEAPON_SNSPISTOL_MK2",
	"WEAPON_HEAVYPISTOL",
	"WEAPON_VINTAGEPISTOL",
	"WEAPON_FLAREGUN",
	"WEAPON_MARKSMANPISTOL",
	"WEAPON_REVOLVER",
	"WEAPON_REVOLVER_MK2",
	"WEAPON_DOUBLEACTION",
	"WEAPON_RAYPISTOL",
	"WEAPON_CERAMICPISTOL",
	"WEAPON_NAVYREVOLVER",
	"WEAPON_GADGETPISTOL",
	"WEAPON_STUNGUN_MP",
	"WEAPON_MICROSMG",
	"WEAPON_SMG",
	"WEAPON_SMG_MK2",
	"WEAPON_ASSAULTSMG",
	"WEAPON_COMBATPDW",
	"WEAPON_MACHINEPISTOL",
	"WEAPON_MINISMG",
	"WEAPON_MG",
	"WEAPON_COMBATMG",
	"WEAPON_COMBATMG_MK2",
	"WEAPON_GUSENBERG",
	"WEAPON_RAYCARBINE",
	"WEAPON_ASSAULTRIFLE",
	"WEAPON_ASSAULTRIFLE_MK2",
	"WEAPON_CARBINERIFLE",
	"WEAPON_CARBINERIFLE_MK2",
	"WEAPON_ADVANCEDRIFLE",
	"WEAPON_SPECIALCARBINE",
	"WEAPON_SPECIALCARBINE_MK2",
	"WEAPON_BULLPUPRIFLE",
	"WEAPON_BULLPUPRIFLE_MK2",
	"WEAPON_COMPACTRIFLE",
	"WEAPON_MILITARYRIFLE",
	"WEAPON_HEAVYRIFLE",
	"WEAPON_TACTICALRIFLE",
	"WEAPON_PUMPSHOTGUN",
	"WEAPON_PUMPSHOTGUN_MK2",
	"WEAPON_SAWNOFFSHOTGUN",
	"WEAPON_ASSAULTSHOTGUN",
	"WEAPON_BULLPUPSHOTGUN",
	"WEAPON_MUSKET",
	"WEAPON_HEAVYSHOTGUN",
	"WEAPON_DBSHOTGUN",
	"WEAPON_AUTOSHOTGUN",
	"WEAPON_COMBATSHOTGUN",
	"WEAPON_SNIPERRIFLE",
	"WEAPON_HEAVYSNIPER",
	"WEAPON_HEAVYSNIPER_MK2",
	"WEAPON_MARKSMANRIFLE",
	"WEAPON_MARKSMANRIFLE_MK2",
	"WEAPON_PRECISIONRIFLE",
	"WEAPON_GRENADELAUNCHER",
	"WEAPON_RPG",
	"WEAPON_MINIGUN",
	"WEAPON_HOMINGLAUNCHER",
	"WEAPON_COMPACTLAUNCHER",
	"WEAPON_RAYMINIGUN",
	"WEAPON_EMPLAUNCHER",
	"WEAPON_RAILGUNXM3",
	"WEAPON_TECPISTOL",
	"WEAPON_FIREWORK",
	"WEAPON_BATTLERIFLE",
	"WEAPON_SNOWLAUNCHER",
}

local selected_loc = 0
local selected_slot = 0
local is_typing = false
local weapon_skins = false
local gta_plus_blip = false
local livery_lock = false
local weapon_editor_popup = false
local filter_text = ""
local weapon_name = ""

local gun_van_loc = 0

local function help_marker(text)
	ImGui.SameLine()
	ImGui.TextDisabled("(?)")
	if ImGui.IsItemHovered() then
		ImGui.BeginTooltip()
		ImGui.PushTextWrapPos(ImGui.GetFontSize() * 35)
		ImGui.TextUnformatted(text)
		ImGui.PopTextWrapPos()
		ImGui.EndTooltip()
	end
end

local function render_weapon_editor()
	ImGui.SetNextWindowSize(700, 420)
	ImGui.OpenPopup("Weapon Editor")

	if
		ImGui.BeginPopupModal(
			"Weapon Editor",
			weapon_editor_popup,
			ImGuiWindowFlags.NoResize | ImGuiWindowFlags.NoCollapse | ImGuiWindowFlags.NoMove | ImGuiWindowFlags.Modal
		)
	then
		selected_slot =
			ImGui.Combo("Select Slot", selected_slot, { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10" }, 10)

		filter_text = ImGui.InputText("Weapon Name", filter_text, 100)
		if ImGui.IsItemActive() then
			is_typing = true
		else
			is_typing = false
		end

		if ImGui.BeginListBox("##weapons", 450, 200) then
			for index, item in ipairs(weapons_data) do
				local display_name = weapons.get_weapon_display_name(item)
				if string.find(display_name:lower(), filter_text:lower()) then
					if ImGui.Selectable(display_name) then
						filter_text = display_name
						weapon_name = item
					end
				end
			end
			ImGui.EndListBox()
		end

		if ImGui.Button("Set Weapon") then
			local is_weapon_valid = weapons.get_weapon_display_name(weapon_name) ~= ""

			if is_weapon_valid then
				tunables.set_int("XM22_GUN_VAN_SLOT_WEAPON_TYPE_" .. selected_slot, joaat(weapon_name))
			else
				gui.show_error("Gun Van", "Invalid weapon.")
			end
		end

		ImGui.SameLine()

		if ImGui.Button("Remove Weapon") then
			tunables.set_int("XM22_GUN_VAN_SLOT_WEAPON_TYPE_" .. selected_slot, 0)
		end

		if ImGui.Button("Close") then
			selected_slot = 0
			filter_text = ""
			weapon_name = ""
			weapon_editor_popup = false
			ImGui.CloseCurrentPopup()
		end

		ImGui.EndPopup()
	end
end

script.register_looped("Gun Van", function()
	gun_van_loc = globals.get_int(2652592 + 2671)

	if is_typing then
		PAD.DISABLE_ALL_CONTROL_ACTIONS(0)
	end

	if weapon_skins then
		tunables.set_bool(1490225691, false)
	end

	if livery_lock then
		local value = locals.get_int("gunclub_shop", 142 + 747) | (1 << 8)
		locals.set_int("gunclub_shop", 142 + 747, value)
	end

	if gta_plus_blip then
		local gun_van_sprite = HUD.GET_FIRST_BLIP_INFO_ID(844)

		tunables.set_float(15999531, 10000.0)
		if HUD.DOES_BLIP_EXIST(gun_van_sprite) then
			HUD.SET_BLIP_AS_SHORT_RANGE(gun_van_sprite, false)
		end
	end
end)

gun_van_tab:add_imgui(function()
	if weapon_editor_popup then
		render_weapon_editor()
	end

	ImGui.Text("Current Location: " .. (gun_van_loc ~= -1 and gun_van_loc + 1 or "N/A"))

	ImGui.SetNextItemWidth(265)
	selected_loc = ImGui.Combo("##selected_loc", selected_loc, van_locations, 30)

	ImGui.SameLine()

	if ImGui.Button("Set New Gun Van Location") then
		globals.set_int(2652592 + 2671, selected_loc)
	end

	ImGui.SameLine()

	if ImGui.Button("Teleport") then
		script.run_in_fiber(function()
			local coords = gunvan_locations[selected_loc + 1]
			PED.SET_PED_COORDS_KEEP_VEHICLE(self.get_ped(), coords.x, coords.y, coords.z)
		end)
	end

	weapon_skins, on_tick = ImGui.Checkbox("Weapon Skins", weapon_skins)
	help_marker("Enables the special liveries for Knife and Baseball Bat.")

	if on_tick then
		if not weapon_skins then
			tunables.set_bool(1490225691, true)
		end
	end

	livery_lock, on_tick = ImGui.Checkbox("Remove Livery Lock", livery_lock)
	help_marker(
		"Removes the hard-coded lock on special weapon liveries, such as Season's Greetings, Employee of the Month etc."
	)

	if on_tick then
		if not livery_lock then
			local value = locals.get_int("gunclub_shop", 142 + 747) & ~(1 << 8)
			locals.set_int("gunclub_shop", 142 + 747, value)
		end
	end

	gta_plus_blip, on_tick = ImGui.Checkbox("Blip Always Visible", gta_plus_blip)
	help_marker("The Gun Van will always be blipped on the map, just like in GTA+.")

	if on_tick then
		if not gta_plus_blip then
			tunables.set_float(15999531, 500.0)
		end
	end

	ImGui.Separator()

	if ImGui.TreeNode("Weapons") then
		for i = 0, 9 do
			local weapon_hash = tunables.get_int("XM22_GUN_VAN_SLOT_WEAPON_TYPE_" .. i)

			if weapon_hash ~= 0 then
				local weapon_name = weapons.get_weapon_display_name(weapon_hash)
				local weapon_discount =
					math.floor(tunables.get_float("XM22_GUN_VAN_SLOT_WEAPON_DISCOUNT_" .. i) * 100.0)

				ImGui.Text(i + 1 .. " - " .. weapon_name .. " (" .. weapon_discount .. "%)")
			end
		end

		if ImGui.Button("Edit Weapons") then
			weapon_editor_popup = true
		end

		ImGui.Separator()
		ImGui.TreePop()
	end

	if ImGui.TreeNode("Throwables") then
		for i = 0, 2 do
			local throwable_hash = tunables.get_int("XM22_GUN_VAN_SLOT_THROWABLE_TYPE_" .. i)

			if throwable_hash ~= 0 then
				local throwable_name = weapons.get_weapon_display_name(throwable_hash)
				local throwable_discount =
					math.floor(tunables.get_float("XM22_GUN_VAN_SLOT_THROWABLE_DISCOUNT_" .. i) * 100.0)

				ImGui.Text(i + 1 .. " - " .. throwable_name .. " (" .. throwable_discount .. "%)")
			end
		end

		ImGui.Separator()
		ImGui.TreePop()
	end

	if ImGui.TreeNode("Body Armor") then
		local armour_discounts = {}

		for i = 0, 4 do
			armour_discounts[i + 1] = math.floor(tunables.get_float("XM22_GUN_VAN_SLOT_ARMOUR_DISCOUNT_" .. i) * 100.0)
		end

		ImGui.Text("Super Light Armor (" .. armour_discounts[1] .. "%)")
		ImGui.Text("Light Armor (" .. armour_discounts[2] .. "%)")
		ImGui.Text("Standard Armor (" .. armour_discounts[3] .. "%)")
		ImGui.Text("Heavy Armor (" .. armour_discounts[4] .. "%)")
		ImGui.Text("Super Heavy Armor (" .. armour_discounts[5] .. "%)")

		ImGui.TreePop()
	end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

WareHouseDataEditorMenu = CeoManagerMenu:add_tab("WareHouse Data Editor")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

WareHouseDataEditorMenu:add_button("Reset Crate Sell Stats-0/0 Sales", function()
	stats.set_int(MPX .. "LIFETIME_BUY_COMPLETE", 0)
	stats.set_int(MPX .. "LIFETIME_BUY_UNDERTAKEN", 0)
	stats.set_int(MPX .. "LIFETIME_SELL_COMPLETE", 0)
	stats.set_int(MPX .. "LIFETIME_SELL_UNDERTAKEN", 0)
	stats.set_int(MPX .. "LIFETIME_CONTRA_EARNINGS", 0)
	globals.set_int(1575035, 11) ----PlayerSessionBlank--------
	globals.set_int(1574589, 1) ----PlayerSessionNew----------
	sleep(2)
	globals.set_int(1574589, 0) ----PlayerSessionNew------
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

HeistsDataEditorMenu = L7NEG:add_tab("Heists Data Editor Menu")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ApartmentDataEditorMenu = HeistsDataEditorMenu:add_tab("Apartment Data Editor Menu")

ApartmentDataEditorMenu:add_button("Skip Current Apartment Heist Preps", function()
	stats.set_int(MPX .. "HEIST_PLANNING_STAGE", -1)
end)

ApartmentDataEditorMenu:add_sameline()

ApartmentDataEditorMenu:add_button("Reset Current Apartment Heist Preps", function()
	stats.set_int(MPX .. "HEIST_PLANNING_STAGE", 0)
end)

ApartmentDataEditorMenu:add_text("")
ApartmentDataEditorMenu:add_text("For Fleeca:")
ApartmentDataEditorMenu:add_text(
	'Pay for the preparation, start the first mission and as soon as you are sent to scout\nchange the session, come back to planning room, press "Complete Preps" near white board and press "E"'
)
ApartmentDataEditorMenu:add_text("For Other Heist:")
ApartmentDataEditorMenu:add_text(
	'Start the mission and leave after the 1st cutscene ends, press "Complete Preps" near white board and press "E"'
)

ApartmentDataEditorMenu:add_separator()
ApartmentDataEditorMenu:add_text("Cuts to All")
ApartmentDataEditorMenu:add_text("Fleeca Job Heist:")
ApartmentDataEditorMenu:add_button("100", function()
	globals.set_int(ACg1, -200)
	globals.set_int(ACg2, 100)
end)
ApartmentDataEditorMenu:add_text("")
ApartmentDataEditorMenu:add_text("Other Heists:")
ApartmentDataEditorMenu:add_button("100", function()
	globals.set_int(ACg1, -300)
	globals.set_int(ACg2, 100)
	globals.set_int(ACg3, 100)
	globals.set_int(ACg4, 100)
end)

local apartCut1 = 0
local apartCut2 = 0
local apartCut3 = 0
local apartCut4 = 0
ApartmentDataEditorMenu:add_imgui(function()
	ImGui.Text("Custom Cuts:")
	ImGui.SetNextItemWidth(150)
	apartCut1 = ImGui.InputInt("Cut 1", apartCut1)
	ImGui.SameLine()
	ImGui.SetNextItemWidth(150)
	apartCut2 = ImGui.InputInt("Cut 2", apartCut2)
	ImGui.SetNextItemWidth(150)
	apartCut3 = ImGui.InputInt("Cut 3", apartCut3)
	ImGui.SameLine()
	ImGui.SetNextItemWidth(150)
	apartCut4 = ImGui.InputInt("Cut 4", apartCut4)
	ImGui.Text("For Fleeca Heist")
	if ImGui.Button("Set Cuts") then
		globals.set_int(ACg1, 100 - (apartCut1 * 2))
		globals.set_int(ACg2, apartCut2)
	end
	ImGui.Text("For Other Heists")
	if ImGui.Button("Set Cuts") then
		globals.set_int(ACg1, 100 - (apartCut1 * 4))
		globals.set_int(ACg2, apartCut2)
		globals.set_int(ACg3, apartCut3)
		globals.set_int(ACg4, apartCut4)
	end
	if ImGui.Button("Set Negative to Positive (own)") then
		globals.set_int(ACg5, -1 * (-100 + globals.get_int(ACg1)) / 2)
	end
end)
ApartmentDataEditorMenu:add_separator()
ApartmentDataEditorMenu:add_text("Extras")
ApartmentDataEditorMenu:add_button("Bypass Fleeca Hack", function()
	locals.set_int(FMC, AFHl, 7)
end)
ApartmentDataEditorMenu:add_sameline()
ApartmentDataEditorMenu:add_button("Bypass Fleeca Drill", function()
	locals.set_float(FMC, AFDl, 100)
end)
ApartmentDataEditorMenu:add_sameline()
ApartmentDataEditorMenu:add_button("Unlock All Jobs", function()
	stats.set_int(MPX .. "HEIST_SAVED_STRAND_0", globals.get_int(AUAJg1))
	stats.set_int(MPX .. "HEIST_SAVED_STRAND_0_L", 5)
	stats.set_int(MPX .. "HEIST_SAVED_STRAND_1", globals.get_int(AUAJg2))
	stats.set_int(MPX .. "HEIST_SAVED_STRAND_1_L", 5)
	stats.set_int(MPX .. "HEIST_SAVED_STRAND_2", globals.get_int(AUAJg3))
	stats.set_int(MPX .. "HEIST_SAVED_STRAND_2_L", 5)
	stats.set_int(MPX .. "HEIST_SAVED_STRAND_3", globals.get_int(AUAJg4))
	stats.set_int(MPX .. "HEIST_SAVED_STRAND_3_L", 5)
	stats.set_int(MPX .. "HEIST_SAVED_STRAND_4", globals.get_int(AUAJg5))
	stats.set_int(MPX .. "HEIST_SAVED_STRAND_4_L", 5)
end)
ApartmentDataEditorMenu:add_sameline()
ApartmentDataEditorMenu:add_button("Instant Finish", function()
	locals.set_int(FMC, AIFl3, 12)
	locals.set_int(FMC, AIFl4, 99999)
	locals.set_int(FMC, AIFl5, 99999)
end)
ApartmentDataEditorMenu:add_text("Note: After Clicking Unlock All jobs, restart the game")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CasinoHeistEditorMenu = HeistsDataEditorMenu:add_tab("Casino Heist")

fm_mission_controller_cart_grab = 10255
fm_mission_controller_cart_grab_speed = 14
fm_mission_controller_cart_autograb = false


CasinoHeistEditorMenu:add_button("One Click Setup Casino Silent&Sneaky", function()
	stats.set_int(MPX .. "H3OPT_APPROACH", 1)
	stats.set_int(MPX .. "H3_LAST_APPROACH", 3)
	stats.set_int(MPX .. "H3OPT_TARGET", 3)
	stats.set_int(MPX .. "H3OPT_BITSET1", 127)
	stats.set_int(MPX .. "H3OPT_DISRUPTSHIP", 3)
	stats.set_int(MPX .. "H3OPT_KEYLEVELS", 2)
	stats.set_int(MPX .. "H3OPT_CREWWEAP", 4)
	stats.set_int(MPX .. "H3OPT_CREWDRIVER", 5)
	stats.set_int(MPX .. "H3OPT_CREWHACKER", 5)
	stats.set_int(MPX .. "H3OPT_VEHS", 2)
	stats.set_int(MPX .. "H3OPT_WEAPS", 1)
	stats.set_int(MPX .. "H3OPT_BITSET0", 262399)
	stats.set_int(MPX .. "H3OPT_MASKS", 2)
end)

CasinoHeistEditorMenu:add_button("One Click Setup Casino The Big Con. Mode", function()
	stats.set_int(MPX .. "H3OPT_APPROACH", 2)
	stats.set_int(MPX .. "H3_LAST_APPROACH", 3)
	stats.set_int(MPX .. "H3OPT_TARGET", 3)
	stats.set_int(MPX .. "H3OPT_BITSET1", 799)
	stats.set_int(MPX .. "H3OPT_DISRUPTSHIP", 3)
	stats.set_int(MPX .. "H3OPT_KEYLEVELS", 2)
	stats.set_int(MPX .. "H3OPT_CREWWEAP", 4)
	stats.set_int(MPX .. "H3OPT_CREWDRIVER", 5)
	stats.set_int(MPX .. "H3OPT_CREWHACKER", 5)
	stats.set_int(MPX .. "H3OPT_VEHS", 2)
	stats.set_int(MPX .. "H3OPT_WEAPS", 0)
	stats.set_int(MPX .. "H3OPT_BITSET0", 913623)
	stats.set_int(MPX .. "H3OPT_MASKS", 2)
end)

CasinoHeistEditorMenu:add_button("One Click Setup Casino Agrresive Mode", function()
	stats.set_int(MPX .. "H3OPT_APPROACH", 3)
	stats.set_int(MPX .. "H3_LAST_APPROACH", 1)
	stats.set_int(MPX .. "H3OPT_TARGET", 3)
	stats.set_int(MPX .. "H3OPT_BITSET1", 799)
	stats.set_int(MPX .. "H3OPT_DISRUPTSHIP", 3)
	stats.set_int(MPX .. "H3OPT_KEYLEVELS", 2)
	stats.set_int(MPX .. "H3OPT_CREWWEAP", 4)
	stats.set_int(MPX .. "H3OPT_CREWDRIVER", 5)
	stats.set_int(MPX .. "H3OPT_CREWHACKER", 5)
	stats.set_int(MPX .. "H3OPT_VEHS", 2)
	stats.set_int(MPX .. "H3OPT_WEAPS", 1)
	stats.set_int(MPX .. "H3OPT_BITSET0", 1835223)
	stats.set_int(MPX .. "H3OPT_MASKS", 2)
end)

CasinoHeistEditorMenu:add_text("Preps")
CasinoHeistEditorMenu:add_text("")
local function CasinoApproachSetter(last_approach, hard_approach, approach, selected_approach)
	stats.set_int(MPX .. "H3_LAST_APPROACH", last_approach)
	stats.set_int(MPX .. "H3_HARD_APPROACH", hard_approach)
	stats.set_int(MPX .. "H3_APPROACH", approach)
	stats.set_int(MPX .. "H3OPT_APPROACH", selected_approach)
end
local function CasinoCompletePreps()
	stats.set_int(MPX .. "H3OPT_DISRUPTSHIP", 3)
	stats.set_int(MPX .. "H3OPT_KEYLEVELS", 2)
	stats.set_int(MPX .. "H3OPT_BITSET0", -1)
	stats.set_int(MPX .. "H3OPT_BITSET1", -1)
	stats.set_int(MPX .. "H3OPT_COMPLETEDPOSIX", -1)
end
CasinoHeistEditorMenu:add_text("Primary Target")
CasinoHeistEditorMenu:add_button("Diamond", function()
	stats.set_int(MPX .. "H3OPT_TARGET", 3)
end)
CasinoHeistEditorMenu:add_sameline()
CasinoHeistEditorMenu:add_button("Gold", function()
	stats.set_int(MPX .. "H3OPT_TARGET", 1)
end)
CasinoHeistEditorMenu:add_sameline()
CasinoHeistEditorMenu:add_button("Arts", function()
	stats.set_int(MPX .. "H3OPT_TARGET", 2)
end)
CasinoHeistEditorMenu:add_sameline()
CasinoHeistEditorMenu:add_button("Cash", function()
	stats.set_int(MPX .. "H3OPT_TARGET", 0)
end)
CasinoHeistEditorMenu:add_separator()
CasinoHeistEditorMenu:add_text("Select Apprach")
CasinoHeistEditorMenu:add_button("Silent & Sneaky", function()
	CasinoApproachSetter(2, 1, 3, 1)
	STATS.STAT_SET_INT(MPX .. "H3OPT_BITSET1", 127)
	stats.set_int(MPX .. "H3OPT_WEAPS", 0)
end)
CasinoHeistEditorMenu:add_sameline()
CasinoHeistEditorMenu:add_button("Big Con", function()
	CasinoApproachSetter(1, 2, 3, 2)
	STATS.STAT_SET_INT(MPX .. "H3OPT_BITSET1", 799)
	stats.set_int(MPX .. "H3OPT_WEAPS", 0)
end)
CasinoHeistEditorMenu:add_sameline()
CasinoHeistEditorMenu:add_button("Aggressive", function()
	CasinoApproachSetter(2, 3, 1, 3)
	STATS.STAT_SET_INT(MPX .. "H3OPT_BITSET1", 799)
	stats.set_int(MPX .. "H3OPT_WEAPS", 0)
end)
CasinoHeistEditorMenu:add_separator()
CasinoHeistEditorMenu:add_text("Gun Man")
local gunman = 0
local driver = 0
local hacker = 0
local mask = 0
local casinoPc1 = 0
local casinoPc2 = 0
local casinoPc3 = 0
local casinoPc4 = 0
local GunManLoadoutSi = {
	"Karl Abolaji/Micro SMG",
	"Karl Abolaji/Machine Pistol",
	"Charlie Reed/Assault SMG",
	"Charlie Reed/Bullpup Shotgun",
	"Patrick McReary/Combat PDW",
	"Patrick McReary/Assault Rifle",
	"Gustavo Mota/Carbine Rifle",
	"Gustavo Mota/Assault Shotgun",
	"Chester McCoy/Pump Shotgun Mk II",
	"Chester McCoy/Carbine Rifle Mk II",
}
local GunManLoadoutBC = {
	"Karl Abolaji/Micro SMG",
	"Karl Abolaji/Double Barrel Shotgun",
	"Charlie Reed/Machine Pistol",
	"Charlie Reed/Sweeper Shotgun",
	"Patrick McReary/Sawed-Off Shotgun",
	"Patrick McReary/Compact Rifle",
	"Gustavo Mota/Carbine Rifle",
	"Gustavo Mota/Assault Shotgun",
	"Chester McCoy/SMG Mk II",
	"Chester McCoy/Bullpup Rifle Mk II",
}
local GunManLoadoutAg = {
	"Karl Abolaji/Sawed-Off Shotgun",
	"Karl Abolaji/Heavy Revolver",
	"Charlie Reed/Assault SMG",
	"Charlie Reed/Pump Shotgun",
	"Patrick McReary/Heavy Shotgun",
	"Patrick McReary/Combat MG",
	"Gustavo Mota/Carbine Rifle",
	"Gustavo Mota/Assault Shotgun",
	"Chester McCoy/Pump Shotgun Mk II",
	"Chester McCoy/Assault Rifle Mk II",
}
local DriverLoad = {
	"Karim Denz/Issi Classic",
	"Karim Denz/Asbo",
	"Karim Denz/Blista Kanjo",
	"Karim Denz/Sentinel Classic",
	"Zach Nelson/Manchez",
	"Zach Nelson/Stryder",
	"Zach Nelson/Defiler",
	"Zach Nelson/Lectro",
	"Taliana Martinez/Retinue Mk II",
	"Taliana Martinez/Drift Yosemite",
	"Taliana Martinez/Sugoi",
	"Taliana Martinez/Jugular",
	"Eddie Toh/Sultan Classic",
	"Eddie Toh/Gauntlet Classic",
	"Eddie Toh/Ellie",
	"Eddie Toh/Komoda",
	"Chester McCoy/Zhaba",
	"Chester McCoy/Vagrant",
	"Chester McCoy/Outlaw",
	"Chester McCoy/Everon",
}
local hackerLoad = {
	"Select",
	"Rickie Lukens",
	"Christian Feltz",
	"Yohan Blair",
	"Avi Schwartzman",
	"Page Harris",
}
local maskLoad = {
	"Select",
	"Geometic Set",
	"Hunter Set",
	"Oni Half Mask Set",
	"Emoji Set",
	"Ornate Skull Set",
	"Lucky Fruit Set",
	"Guerilla Set",
	"Clown Set",
	"Animal Set",
	"Riot Set",
	"Oni Full Mask Set",
	"Hockey Set",
}
CasinoHeistEditorMenu:add_imgui(function()
	if stats.get_int(MPX .. "H3OPT_APPROACH") == 1 then
		ImGui.SetNextItemWidth(265)
		gunman = ImGui.Combo("Loadout", gunman, GunManLoadoutSi, 10)
	elseif stats.get_int(MPX .. "H3OPT_APPROACH") == 2 then
		ImGui.SetNextItemWidth(265)
		gunman = ImGui.Combo("Loadout", gunman, GunManLoadoutBC, 10)
	elseif stats.get_int(MPX .. "H3OPT_APPROACH") == 3 then
		ImGui.SetNextItemWidth(265)
		gunman = ImGui.Combo("Loadout", gunman, GunManLoadoutAg, 10)
	end

	if ImGui.Button("Set Loadout") then
		ImGui.Text(gunman)
		if gunman <= 1 then
			stats.set_int(MPX .. "H3OPT_CREWWEAP", 1)
			stats.set_int(MPX .. "H3OPT_WEAPS", gunman)
		elseif gunman <= 4 then
			stats.set_int(MPX .. "H3OPT_CREWWEAP", 3)
			stats.set_int(MPX .. "H3OPT_WEAPS", gunman - 2)
		elseif gunman <= 6 then
			stats.set_int(MPX .. "H3OPT_CREWWEAP", 5)
			stats.set_int(MPX .. "H3OPT_WEAPS", gunman - 4)
		elseif gunman <= 8 then
			stats.set_int(MPX .. "H3OPT_CREWWEAP", 2)
			stats.set_int(MPX .. "H3OPT_WEAPS", gunman - 6)
		elseif gunman <= 10 then
			stats.set_int(MPX .. "H3OPT_CREWWEAP", 4)
			stats.set_int(MPX .. "H3OPT_WEAPS", gunman - 8)
		end
	end
	ImGui.Separator()
	ImGui.Text("Getaway Vehicles")
	ImGui.SetNextItemWidth(265)
	driver = ImGui.Combo("", driver, DriverLoad, 20)
	if ImGui.Button("Set Getaway Vehicle") then
		ImGui.Text(driver)
		if driver <= 3 then
			stats.set_int(MPX .. "H3OPT_CREWDRIVER", 1)
			stats.set_int(MPX .. "H3OPT_VEHS", driver)
		elseif driver <= 7 then
			stats.set_int(MPX .. "H3OPT_CREWDRIVER", 4)
			stats.set_int(MPX .. "H3OPT_VEHS", driver - 4)
		elseif driver <= 11 then
			stats.set_int(MPX .. "H3OPT_CREWDRIVER", 2)
			stats.set_int(MPX .. "H3OPT_VEHS", driver - 8)
		elseif driver <= 15 then
			stats.set_int(MPX .. "H3OPT_CREWDRIVER", 3)
			stats.set_int(MPX .. "H3OPT_VEHS", driver - 12)
		elseif driver <= 19 then
			stats.set_int(MPX .. "H3OPT_CREWDRIVER", 5)
			stats.set_int(MPX .. "H3OPT_VEHS", driver - 16)
		end
	end
	ImGui.Separator()
	ImGui.Text("Hacker")
	ImGui.SetNextItemWidth(265)
	hacker = ImGui.Combo("Hacker", hacker, hackerLoad, 6)
	if ImGui.Button("Set Hacker") then
		ImGui.Text(hacker)
		stats.set_int(MPX .. "H3OPT_CREWHACKER", hacker)
	end
	ImGui.Separator()
	ImGui.Text("Mask")
	ImGui.SetNextItemWidth(265)
	ImGui.SetNextItemWidth(265)
	mask = ImGui.Combo("Masks", mask, maskLoad, 13)
	if ImGui.Button("Set Mask") then
		ImGui.Text(mask)
		stats.set_int(MPX .. "H3OPT_MASKS", mask)
	end
	ImGui.Separator()
	if ImGui.Button("Complete preps") then
		CasinoCompletePreps()
	end
	ImGui.Separator()
	ImGui.Text("Cuts")
	ImGui.Text("Preset Cut")
	if ImGui.Button("Set Cut to 100") then
		CutsPresetter(DCCg1, DCCg4, 100)
	end
	casinoPc1 = ImGui.InputInt("Player Cut 1", casinoPc1)
	casinoPc2 = ImGui.InputInt("Player Cut 2", casinoPc2)
	casinoPc3 = ImGui.InputInt("Player Cut 3", casinoPc3)
	casinoPc4 = ImGui.InputInt("Player Cut 4", casinoPc4)
	if ImGui.Button("Set Player Cuts") then
		globals.set_int(DCCg1, casinoPc1)
		globals.set_int(DCCg2, casinoPc2)
		globals.set_int(DCCg3, casinoPc3)
		globals.set_int(DCCg4, casinoPc4)
	end
end)
CasinoHeistEditorMenu:add_separator()
CasinoHeistEditorMenu:add_button("Reload Planning Screen", function()
	locals.set_int("gb_casino_heist_planning", DCRBl, 2)
end)

CasinoHeistEditorMenu:add_separator()
CasinoHeistEditorMenu:add_text("Instant Heist Passed")
CasinoHeistEditorMenu:add_button("Instant Finish $$", function()
	locals.set_int(FMC2020, 50150, 9)
	locals.set_int(FMC2020, 50150 + 1770 + 1, 50)
	gui.show_message("Instant Heist Passed", "Activated")
end)

local CasinoHeistExtra = CasinoHeistEditorMenu:add_tab("Extras")
CasinoHeistExtra:add_text("Make Lester, Driver, Hacker, and Gunman cut to 0%")
CasinoHeistExtra:add_button("Make Fees to 0", function()
	globals.set_int(DCCgun, 0)
	globals.set_int(DCCh, 0)
	globals.set_int(DCCl, 0)
	globals.set_int(DCCd, 0)
end)
CasinoHeistExtra:add_text("Hacks")
CasinoHeistExtra:add_button("Bypass Casino Fingerprint Hack", function()
	if locals.get_int(FMC, DCFHl) == 4 then
		locals.set_int(FMC, DCFHl, 5)
	end
end)
CasinoHeistExtra:add_sameline()
CasinoHeistExtra:add_button("Bypass Keypad Hack", function()
	if locals.get_int(FMC, DCKHl) ~= 4 then
		locals.set_int(FMC, DCKHl, 5)
	end
end)
CasinoHeistExtra:add_sameline()
CasinoHeistExtra:add_button("Bypass Drill Vault Door", function()
	locals.set_int(FMC, DCDVDl1, locals.get_int(FMC, DCDVDl2))
end)

CasinoHeistEditorMenu:add_separator()
CasinoHeistEditorMenu:add_text("Casino Heist")

CasinoHeistEditorMenu:add_imgui(function()
	fm_mission_controller_cart_autograb, _ =
		ImGui.Checkbox("Auto Grab Cash/Gold/Diamonds", fm_mission_controller_cart_autograb)
end)

	if fm_mission_controller_cart_autograb then
		if locals.get_int(FMC, fm_mission_controller_cart_grab) == 3 then
			locals.set_int(FMC, fm_mission_controller_cart_grab, 4)
		elseif locals.get_int(FMC, fm_mission_controller_cart_grab) == 4 then
			locals.set_float(FMC, fm_mission_controller_cart_grab + fm_mission_controller_cart_grab_speed, 2)
		end
	end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Updated by DeadlineEm, I used your modest menu version for ideas for this.

-- Deleting enemies does not allow the keycards to drop, so teleport into the
-- seondary buildings to grab the loot, you can open the door for others from
-- the inside
local CayoHeistEditorMenu = HeistsDataEditorMenu:add_tab("Cayo Perico Editor")

CayoHeistEditorMenu:add_text("Cuts to All")
CayoHeistEditorMenu:add_button("100", function()
	CutsPresetter(CPCg1, CPCg4, 100)
end)
CayoHeistEditorMenu:add_text("")
CayoHeistEditorMenu:add_text("Custom Cut")
local cayocut1 = CayoHeistEditorMenu:add_input_int("Cut 1")
local cayocut2 = CayoHeistEditorMenu:add_input_int("Cut 2")
local cayocut3 = CayoHeistEditorMenu:add_input_int("Cut 3")
local cayocut4 = CayoHeistEditorMenu:add_input_int("Cut 4")
CayoHeistEditorMenu:add_button("Set", function()
	globals.set_int(CPCg1, cayocut1:get_value())
	globals.set_int(CPCg2, cayocut2:get_value())
	globals.set_int(CPCg3, cayocut3:get_value())
	globals.set_int(CPCg4, cayocut4:get_value())
end)
CayoHeistEditorMenu:add_separator()

CayoHeistEditorMenu:add_text("Non-Legit Presets")

CayoHeistEditorMenu:add_button("Panther/Gold (Hard)", function()
	PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
	if PlayerIndex == 0 then
		MPX = "MP0_"
	else
		MPX = "MP1_"
	end
	stats.set_int(MPX .. "H4CNF_BS_GEN", 131071)
	stats.set_int(MPX .. "H4CNF_BS_ENTR", 63)
	stats.set_int(MPX .. "H4CNF_BS_ABIL", 63)
	stats.set_int(MPX .. "H4CNF_WEAPONS", 5)
	stats.set_int(MPX .. "H4CNF_WEP_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_ARM_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_HEL_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_TARGET", 5)
	stats.set_int(MPX .. "H4CNF_TROJAN", 2)
	stats.set_int(MPX .. "H4CNF_APPROACH", -1)
	stats.set_int(MPX .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX .. "H4LOOT_CASH_C", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_I", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_C", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_I", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_C", 0)
	stats.set_int(MPX .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_I", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_C", -1)
	stats.set_int(MPX .. "H4LOOT_PAINT", 0)
	stats.set_int(MPX .. "H4_PROGRESS", 131055)
	stats.set_int(MPX .. "H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_C_SCOPED", -1)
	stats.set_int(MPX .. "H4LOOT_GOLD_V", 1191817)
	stats.set_int(MPX .. "H4LOOT_PAINT_SCOPED", 0)
	stats.set_int(MPX .. "H4_MISSIONS", 65535)
	stats.set_int(MPX .. "H4_PLAYTHROUGH_STATUS", 32)

	gui.show_message("Cayo Heist", "Panther Hard Mode has been set up!")
	gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)
CayoHeistEditorMenu:add_sameline()
CayoHeistEditorMenu:add_button("Diamond/Gold (Hard)", function()
	PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
	if PlayerIndex == 0 then
		MPX = "MP0_"
	else
		MPX = "MP1_"
	end
	stats.set_int(MPX .. "H4CNF_BS_GEN", 131071)
	stats.set_int(MPX .. "H4CNF_BS_ENTR", 63)
	stats.set_int(MPX .. "H4CNF_BS_ABIL", 63)
	stats.set_int(MPX .. "H4CNF_WEAPONS", 5)
	stats.set_int(MPX .. "H4CNF_WEP_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_ARM_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_HEL_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_TARGET", 3)
	stats.set_int(MPX .. "H4CNF_TROJAN", 2)
	stats.set_int(MPX .. "H4CNF_APPROACH", -1)
	stats.set_int(MPX .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX .. "H4LOOT_CASH_C", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_I", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_C", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_I", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_C", 0)
	stats.set_int(MPX .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_I", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_C", -1)
	stats.set_int(MPX .. "H4LOOT_PAINT", 0)
	stats.set_int(MPX .. "H4_PROGRESS", 131055)
	stats.set_int(MPX .. "H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_C_SCOPED", -1)
	stats.set_int(MPX .. "H4LOOT_GOLD_V", 1191817)
	stats.set_int(MPX .. "H4LOOT_PAINT_SCOPED", 0)
	stats.set_int(MPX .. "H4_MISSIONS", 65535)
	stats.set_int(MPX .. "H4_PLAYTHROUGH_STATUS", 32)

	gui.show_message("Cayo Heist", "Diamond Hard Mode has been set up!")
	gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

CayoHeistEditorMenu:add_sameline()
CayoHeistEditorMenu:add_button("Bonds/Gold (Hard)", function()
	PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
	if PlayerIndex == 0 then
		MPX = "MP0_"
	else
		MPX = "MP1_"
	end
	stats.set_int(MPX .. "H4CNF_BS_GEN", 131071)
	stats.set_int(MPX .. "H4CNF_BS_ENTR", 63)
	stats.set_int(MPX .. "H4CNF_BS_ABIL", 63)
	stats.set_int(MPX .. "H4CNF_WEAPONS", 5)
	stats.set_int(MPX .. "H4CNF_WEP_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_ARM_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_HEL_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_TARGET", 2)
	stats.set_int(MPX .. "H4CNF_TROJAN", 2)
	stats.set_int(MPX .. "H4CNF_APPROACH", -1)
	stats.set_int(MPX .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX .. "H4LOOT_CASH_C", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_I", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_C", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_I", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_C", 0)
	stats.set_int(MPX .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_I", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_C", -1)
	stats.set_int(MPX .. "H4LOOT_PAINT", 0)
	stats.set_int(MPX .. "H4_PROGRESS", 131055)
	stats.set_int(MPX .. "H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_C_SCOPED", -1)
	stats.set_int(MPX .. "H4LOOT_GOLD_V", 1191817)
	stats.set_int(MPX .. "H4LOOT_PAINT_SCOPED", 0)
	stats.set_int(MPX .. "H4_MISSIONS", 65535)
	stats.set_int(MPX .. "H4_PLAYTHROUGH_STATUS", 32)

	gui.show_message("Cayo Heist", "Bonds Hard Mode has been set up!")
	gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

CayoHeistEditorMenu:add_sameline()
CayoHeistEditorMenu:add_button("Necklace/Gold (Hard)", function()
	PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
	if PlayerIndex == 0 then
		MPX = "MP0_"
	else
		MPX = "MP1_"
	end
	stats.set_int(MPX .. "H4CNF_BS_GEN", 131071)
	stats.set_int(MPX .. "H4CNF_BS_ENTR", 63)
	stats.set_int(MPX .. "H4CNF_BS_ABIL", 63)
	stats.set_int(MPX .. "H4CNF_WEAPONS", 5)
	stats.set_int(MPX .. "H4CNF_WEP_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_ARM_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_HEL_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_TARGET", 1)
	stats.set_int(MPX .. "H4CNF_TROJAN", 2)
	stats.set_int(MPX .. "H4CNF_APPROACH", -1)
	stats.set_int(MPX .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX .. "H4LOOT_CASH_C", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_I", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_C", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_I", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_C", 0)
	stats.set_int(MPX .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_I", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_C", -1)
	stats.set_int(MPX .. "H4LOOT_PAINT", 0)
	stats.set_int(MPX .. "H4_PROGRESS", 131055)
	stats.set_int(MPX .. "H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_C_SCOPED", -1)
	stats.set_int(MPX .. "H4LOOT_GOLD_V", 1191817)
	stats.set_int(MPX .. "H4LOOT_PAINT_SCOPED", 0)
	stats.set_int(MPX .. "H4_MISSIONS", 65535)
	stats.set_int(MPX .. "H4_PLAYTHROUGH_STATUS", 32)

	gui.show_message("Cayo Heist", "Necklace Hard Mode has been set up!")
	gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

CayoHeistEditorMenu:add_sameline()
CayoHeistEditorMenu:add_button("Tequila/Gold (Hard)", function()
	PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
	if PlayerIndex == 0 then
		MPX = "MP0_"
	else
		MPX = "MP1_"
	end
	stats.set_int(MPX .. "H4CNF_BS_GEN", 131071)
	stats.set_int(MPX .. "H4CNF_BS_ENTR", 63)
	stats.set_int(MPX .. "H4CNF_BS_ABIL", 63)
	stats.set_int(MPX .. "H4CNF_WEAPONS", 5)
	stats.set_int(MPX .. "H4CNF_WEP_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_ARM_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_HEL_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_TARGET", 0)
	stats.set_int(MPX .. "H4CNF_TROJAN", 2)
	stats.set_int(MPX .. "H4CNF_APPROACH", -1)
	stats.set_int(MPX .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX .. "H4LOOT_CASH_C", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_I", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_C", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_I", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_C", 0)
	stats.set_int(MPX .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_I", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_C", -1)
	stats.set_int(MPX .. "H4LOOT_PAINT", 0)
	stats.set_int(MPX .. "H4_PROGRESS", 131055)
	stats.set_int(MPX .. "H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_C_SCOPED", -1)
	stats.set_int(MPX .. "H4LOOT_GOLD_V", 1191817)
	stats.set_int(MPX .. "H4LOOT_PAINT_SCOPED", 0)
	stats.set_int(MPX .. "H4_MISSIONS", 65535)
	stats.set_int(MPX .. "H4_PLAYTHROUGH_STATUS", 32)

	gui.show_message("Cayo Heist", "Tequila Hard Mode has been set up!")
	gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)
CayoHeistEditorMenu:add_separator()
CayoHeistEditorMenu:add_text("Legit Presets")

CayoHeistEditorMenu:add_button("Panther/Gold (L. Hard)", function()
	PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
	if PlayerIndex == 0 then
		MPX = "MP0_"
	else
		MPX = "MP1_"
	end
	stats.set_int(MPX .. "H4CNF_BS_GEN", 131071)
	stats.set_int(MPX .. "H4CNF_BS_ENTR", 63)
	stats.set_int(MPX .. "H4CNF_BS_ABIL", 63)
	stats.set_int(MPX .. "H4CNF_WEAPONS", 5)
	stats.set_int(MPX .. "H4CNF_WEP_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_ARM_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_HEL_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_TARGET", 5) --Primary Target Values: 0. Tequila, 1. Necklace, 2. Bonds, 3. Diamond, 4. Medrazo Files, 5. Panther
	stats.set_int(MPX .. "H4CNF_TROJAN", 2)
	stats.set_int(MPX .. "H4CNF_APPROACH", -1)
	-- Island Loot // -1 shows all, 0 shows none
	stats.set_int(MPX .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_I", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_I", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_I", 0)

	-- Compound Loot // -1 shows all, 0 shows none
	stats.set_int(MPX .. "H4LOOT_CASH_C", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_C", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_C", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_C", -1)
	stats.set_int(MPX .. "H4LOOT_PAINT", 0)
	stats.set_int(MPX .. "H4_PROGRESS", 131055) -- 131055 // Hard Mode  -  130667 // Solo Normal??

	-- These are what is set when you find loot throughout the island/compound
	stats.set_int(MPX .. "H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_C_SCOPED", -1)
	stats.set_int(MPX .. "H4LOOT_PAINT_SCOPED", 0)

	-- Payout Values // Set to "Normal" values.  Each value is multiplied by 8, bc there are 8 locations for them.
	stats.set_int(MPX .. "H4LOOT_GOLD_V", 45375)
	globals.set_int(PSV, 1900000) -- Panther Value -- 1900000 shows as 2,090,000 in-game on the board. 190,000 difference.

	stats.set_int(MPX .. "H4_MISSIONS", 65535)
	stats.set_int(MPX .. "H4_PLAYTHROUGH_STATUS", 32)

	gui.show_message("Cayo Heist", "Panther Hard Mode (Legit) has been set up!")
	gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

CayoHeistEditorMenu:add_sameline()

CayoHeistEditorMenu:add_button("Diamond/Gold (L. Hard)", function()
	PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
	if PlayerIndex == 0 then
		MPX = "MP0_"
	else
		MPX = "MP1_"
	end
	stats.set_int(MPX .. "H4CNF_BS_GEN", 131071)
	stats.set_int(MPX .. "H4CNF_BS_ENTR", 63)
	stats.set_int(MPX .. "H4CNF_BS_ABIL", 63)
	stats.set_int(MPX .. "H4CNF_WEAPONS", 5)
	stats.set_int(MPX .. "H4CNF_WEP_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_ARM_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_HEL_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_TARGET", 3) --Primary Target Values: 0. Tequila, 1. Necklace, 2. Bonds, 3. Diamond, 4. Medrazo Files, 5. Panther
	stats.set_int(MPX .. "H4CNF_TROJAN", 2)
	stats.set_int(MPX .. "H4CNF_APPROACH", -1)
	-- Island Loot // -1 shows all, 0 shows none
	stats.set_int(MPX .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_I", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_I", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_I", 0)

	-- Compound Loot // -1 shows all, 0 shows none
	stats.set_int(MPX .. "H4LOOT_CASH_C", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_C", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_C", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_C", -1)
	stats.set_int(MPX .. "H4LOOT_PAINT", 0)
	stats.set_int(MPX .. "H4_PROGRESS", 131055) -- 131055 // Hard Mode  -  130667 // Solo Normal??

	-- These are what is set when you find loot throughout the island/compound
	stats.set_int(MPX .. "H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_C_SCOPED", -1)
	stats.set_int(MPX .. "H4LOOT_PAINT_SCOPED", 0)

	-- Payout Values // Set to "Normal" values.  Each value is multiplied by 8, bc there are 8 locations for them.
	stats.set_int(MPX .. "H4LOOT_GOLD_V", 45375)
	globals.set_int(PDIAMOND, 1300000) -- Diamond Value  -- 1300000 shows as 1,430,000 in-game. 130,000 difference.

	stats.set_int(MPX .. "H4_MISSIONS", 65535)
	stats.set_int(MPX .. "H4_PLAYTHROUGH_STATUS", 32)

	gui.show_message("Cayo Heist", "Diamond Hard Mode (Legit) has been set up!")
	gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

CayoHeistEditorMenu:add_sameline()

CayoHeistEditorMenu:add_button("Bonds/Gold (L. Hard)", function()
	PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
	if PlayerIndex == 0 then
		MPX = "MP0_"
	else
		MPX = "MP1_"
	end
	stats.set_int(MPX .. "H4CNF_BS_GEN", 131071)
	stats.set_int(MPX .. "H4CNF_BS_ENTR", 63)
	stats.set_int(MPX .. "H4CNF_BS_ABIL", 63)
	stats.set_int(MPX .. "H4CNF_WEAPONS", 5)
	stats.set_int(MPX .. "H4CNF_WEP_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_ARM_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_HEL_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_TARGET", 2) --Primary Target Values: 0. Tequila, 1. Necklace, 2. Bonds, 3. Diamond, 4. Medrazo Files, 5. Panther
	stats.set_int(MPX .. "H4CNF_TROJAN", 2)
	stats.set_int(MPX .. "H4CNF_APPROACH", -1)
	-- Island Loot // -1 shows all, 0 shows none
	stats.set_int(MPX .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_I", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_I", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_I", 0)

	-- Compound Loot // -1 shows all, 0 shows none
	stats.set_int(MPX .. "H4LOOT_CASH_C", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_C", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_C", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_C", -1)
	stats.set_int(MPX .. "H4LOOT_PAINT", 0)
	stats.set_int(MPX .. "H4_PROGRESS", 131055) -- 131055 // Hard Mode  -  130667 // Solo Normal??

	-- These are what is set when you find loot throughout the island/compound
	stats.set_int(MPX .. "H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_C_SCOPED", -1)
	stats.set_int(MPX .. "H4LOOT_PAINT_SCOPED", 0)

	-- Payout Values // Set to "Normal" values.  Each value is multiplied by 8, bc there are 8 locations for them.
	stats.set_int(MPX .. "H4LOOT_GOLD_V", 45375)
	globals.set_int(BB, 770000) -- Bonds Value -- 770000 shows as 847,000 in-game.  77,000 difference.

	stats.set_int(MPX .. "H4_MISSIONS", 65535)
	stats.set_int(MPX .. "H4_PLAYTHROUGH_STATUS", 32)

	gui.show_message("Cayo Heist", "Bonds Hard Mode (Legit) has been set up!")
	gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

CayoHeistEditorMenu:add_sameline()

CayoHeistEditorMenu:add_button("Necklace/Gold (L. Hard)", function()
	PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
	if PlayerIndex == 0 then
		MPX = "MP0_"
	else
		MPX = "MP1_"
	end
	stats.set_int(MPX .. "H4CNF_BS_GEN", 131071)
	stats.set_int(MPX .. "H4CNF_BS_ENTR", 63)
	stats.set_int(MPX .. "H4CNF_BS_ABIL", 63)
	stats.set_int(MPX .. "H4CNF_WEAPONS", 5)
	stats.set_int(MPX .. "H4CNF_WEP_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_ARM_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_HEL_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_TARGET", 1) --Primary Target Values: 0. Tequila, 1. Necklace, 2. Bonds, 3. Diamond, 4. Medrazo Files, 5. Panther
	stats.set_int(MPX .. "H4CNF_TROJAN", 2)
	stats.set_int(MPX .. "H4CNF_APPROACH", -1)
	-- Island Loot // -1 shows all, 0 shows none
	stats.set_int(MPX .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_I", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_I", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_I", 0)

	-- Compound Loot // -1 shows all, 0 shows none
	stats.set_int(MPX .. "H4LOOT_CASH_C", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_C", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_C", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_C", -1)
	stats.set_int(MPX .. "H4LOOT_PAINT", 0)
	stats.set_int(MPX .. "H4_PROGRESS", 131055) -- 131055 // Hard Mode  -  130667 // Solo Normal??

	-- These are what is set when you find loot throughout the island/compound
	stats.set_int(MPX .. "H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_C_SCOPED", -1)
	stats.set_int(MPX .. "H4LOOT_PAINT_SCOPED", 0)

	-- Payout Values // Set to "Normal" values.  Each value is multiplied by 8, bc there are 8 locations for them.
	stats.set_int(MPX .. "H4LOOT_GOLD_V", 45375)
	globals.set_int(RN, 700000) -- Necklace Value -- 700000 shows as 770,000 in-game. 70,000 difference.

	stats.set_int(MPX .. "H4_MISSIONS", 65535)
	stats.set_int(MPX .. "H4_PLAYTHROUGH_STATUS", 32)

	gui.show_message("Cayo Heist", "Necklace Hard Mode (Legit) has been set up!")
	gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

CayoHeistEditorMenu:add_sameline()

CayoHeistEditorMenu:add_button("Tequila/Gold (L. Hard)", function()
	PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
	if PlayerIndex == 0 then
		MPX = "MP0_"
	else
		MPX = "MP1_"
	end
	stats.set_int(MPX .. "H4CNF_BS_GEN", 131071)
	stats.set_int(MPX .. "H4CNF_BS_ENTR", 63)
	stats.set_int(MPX .. "H4CNF_BS_ABIL", 63)
	stats.set_int(MPX .. "H4CNF_WEAPONS", 5)
	stats.set_int(MPX .. "H4CNF_WEP_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_ARM_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_HEL_DISRP", 3)
	stats.set_int(MPX .. "H4CNF_TARGET", 0) --Primary Target Values: 0. Tequila, 1. Necklace, 2. Bonds, 3. Diamond, 4. Medrazo Files, 5. Panther
	stats.set_int(MPX .. "H4CNF_TROJAN", 2)
	stats.set_int(MPX .. "H4CNF_APPROACH", -1)
	-- Island Loot // -1 shows all, 0 shows none
	stats.set_int(MPX .. "H4LOOT_CASH_I", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_I", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_I", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_I", 0)

	-- Compound Loot // -1 shows all, 0 shows none
	stats.set_int(MPX .. "H4LOOT_CASH_C", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_C", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_C", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_C", -1)
	stats.set_int(MPX .. "H4LOOT_PAINT", 0)
	stats.set_int(MPX .. "H4_PROGRESS", 131055) -- 131055 // Hard Mode  -  130667 // Solo Normal??

	-- These are what is set when you find loot throughout the island/compound
	stats.set_int(MPX .. "H4LOOT_CASH_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_CASH_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_WEED_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_COKE_C_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_I_SCOPED", 0)
	stats.set_int(MPX .. "H4LOOT_GOLD_C_SCOPED", -1)
	stats.set_int(MPX .. "H4LOOT_PAINT_SCOPED", 0)

	-- Payout Values // Set to "Normal" values.  Each value is multiplied by 8, bc there are 8 locations for them.
	stats.set_int(MPX .. "H4LOOT_GOLD_V", 45375)
	globals.set_int(TEQUILA, 693000) -- Tequila Value -- 630000 shows as 693,000. 63,000 difference.

	stats.set_int(MPX .. "H4_MISSIONS", 65535)
	stats.set_int(MPX .. "H4_PLAYTHROUGH_STATUS", 32)

	gui.show_message("Cayo Heist", "Tequila Hard Mode (Legit) has been set up!")
	gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

CayoHeistEditorMenu:add_separator()
CayoHeistEditorMenu:add_text("Press this after clicking one of the above presets")
CayoHeistEditorMenu:add_button("Reset Kosatka Board", function()
	locals.set_int(HIP, 1546, 2)
	gui.show_message("Cayo Heist", "Planning board has been reset!")
end)

CayoHeistEditorMenu:add_separator()
CayoHeistEditorMenu:add_text("During Heist")
CayoHeistEditorMenu:add_button("Skip Drainage Cut", function()
	locals.set_int(FMC2020, CPSTCl, 6)
	gui.show_message("Cayo Heist", "Bypassed Drainage Cut")
end)

CayoHeistEditorMenu:add_sameline()
CayoHeistEditorMenu:add_button("Skip Fingerprint Scanner", function()
	locals.set_int(FMC2020, CPFHl, 5)
	gui.show_message("Cayo Heist", "Bypassed Fingerprint Scanner")
end)

CayoHeistEditorMenu:add_sameline()
CayoHeistEditorMenu:add_button("Skip Glass Cut", function()
	locals.set_float(FMC2020, CPPCCl, 100.0)
	gui.show_message("Cayo Heist", "Bypassed Plasma Cutter")
end)

CayoHeistEditorMenu:add_sameline()
CayoHeistEditorMenu:add_button("Remove All CCTV's", function()
	for _, ent in pairs(entities.get_all_objects_as_handles()) do
		for __, cam in pairs(CamList) do
			if ENTITY.GET_ENTITY_MODEL(ent) == cam then
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, true, true)
				ENTITY.DELETE_ENTITY(ent)
			end
		end
	end
end)
CamList = {
	joaat("prop_cctv_cam_01a"),
	joaat("prop_cctv_cam_01b"),
	joaat("prop_cctv_cam_02a"),
	joaat("prop_cctv_cam_03a"),
	joaat("prop_cctv_cam_04a"),
	joaat("prop_cctv_cam_04c"),
	joaat("prop_cctv_cam_05a"),
	joaat("prop_cctv_cam_06a"),
	joaat("prop_cctv_cam_07a"),
	joaat("prop_cs_cctv"),
	joaat("p_cctv_s"),
	joaat("hei_prop_bank_cctv_01"),
	joaat("hei_prop_bank_cctv_02"),
	joaat("ch_prop_ch_cctv_cam_02a"),
	joaat("xm_prop_x17_server_farm_cctv_01"),
}

CayoHeistEditorMenu:add_sameline()
CayoHeistEditorMenu:add_button("Delete Mission NPC's", function() -- Thanks to RazorGamerX for the help on this
	for index, ped in ipairs(entities.get_all_peds_as_handles()) do
		local model = ENTITY.GET_ENTITY_MODEL(ped)
		if model == 0x7ED5AD78 or model == 0x6C8C08E5 or model == 0x995B3F9F or model == 0xB881AEE then
			ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ped, true, true)
			PED.DELETE_PED(ped)
		end
	end
end)

CayoHeistEditorMenu:add_separator()
CayoHeistEditorMenu:add_text("After Heist")
CayoHeistEditorMenu:add_button("Skip Cooldown", function()
	-- Solo Skip
	stats.set_int("MP0_H4_TARGET_POSIX", 1659643454)
	stats.set_int("MP0_H4_COOLDOWN", 0)
	stats.set_int("MP0_H4_COOLDOWN_HARD", 0)
	-- Multiplayer Skip
	stats.set_int("MP0_H4_TARGET_POSIX", 1659429119)
	stats.set_int("MP0_H4_COOLDOWN", 0)
	stats.set_int("MP0_H4_COOLDOWN_HARD", 0)
	-- Solo Skip (Second Character)
	stats.set_int("MP1_H4_TARGET_POSIX", 1659643454)
	stats.set_int("MP1_H4_COOLDOWN", 0)
	stats.set_int("MP1_H4_COOLDOWN_HARD", 0)
	-- Multiplayer Skip (Second Character)
	stats.set_int("MP1_H4_TARGET_POSIX", 1659429119)
	stats.set_int("MP1_H4_COOLDOWN", 0)
	stats.set_int("MP1_H4_COOLDOWN_HARD", 0)

	gui.show_message("Cayo Heist", "Skipped Cayo Perico Cooldown for all characters")
	gui.show_message("Cayo Heist", "Go to story mode and come back to apply the reset")
end)
CayoHeistEditorMenu:add_separator()
CayoHeistEditorMenu:add_text("How to Set Up or Bypass Cooldown:")
CayoHeistEditorMenu:add_text(
	"Make sure you have completed the heist and you are standing in front of the planning screen"
)
CayoHeistEditorMenu:add_text("Click Skip Cooldown, then click on your Preset and click Reset Kosatka Board")

CayoHeistEditorMenu:add_separator()
CayoHeistEditorMenu:add_text("Instant Heist Passed")
CayoHeistEditorMenu:add_button("Instant Finish $$", function()
	locals.set_int(FMC2020, 50150, 9)
	locals.set_int(FMC2020, 50150 + 1770 + 1, 50)
	gui.show_message("Instant Heist Passed", "Activated")
end)

-- Cayo Bag Size & Value Editor
local cayoSizeEditor = CayoHeistEditorMenu:add_tab("Size/Value Editor")
cayoSizeEditor:add_text("Bag Size Editor")
bagSizeVal = 1800
cayoSizeEditor:add_imgui(function()
	bagSizeVal, used = ImGui.SliderInt("Bag Size", bagSizeVal, 1800, 7200) -- 7200 = 4 players, this works if you want more money solo and it adjusts so you can always have full bags
	if used then
		globals.set_int(BAS1, bagSizeVal)
		gui.show_message("Bag Size Modified!")
	end
end)

cayoSizeEditor:add_text("Custom Bag Size Editor")
custombagSizeVal = 1800
cayoSizeEditor:add_imgui(function()
	custombagSizeVal, used = ImGui.SliderInt("Custom Bag Size", custombagSizeVal, 1800, 2147483646)
	if used then
		globals.set_int(BAS1, custombagSizeVal)
		gui.show_message("Custom Bag Size Modified!")
	end
end)

cayoSizeEditor:add_separator()
cayoSizeEditor:add_text("Primary Target Editors")
pantherSizeVal = 1900000
cayoSizeEditor:add_imgui(function()
	pantherSizeVal, used = ImGui.SliderInt("Panther Value", pantherSizeVal, 1900000, 3800000) -- Double the original price
	out = "Reset the board to see changes"

	if used then
		globals.set_int(PSV, pantherSizeVal)
		gui.show_message("Panther Value Modified!", out)
	end
end)

diamondSizeVal = 1300000
cayoSizeEditor:add_imgui(function()
	diamondSizeVal, used = ImGui.SliderInt("Diamond Value", diamondSizeVal, 1300000, 2600000) -- Double the original price
	out = "Reset the board to see changes"

	if used then
		globals.set_int(PDIAMOND, diamondSizeVal)
		gui.show_message("Diamond Value Modified!", out)
	end
end)

bondSizeVal = 770000
cayoSizeEditor:add_imgui(function()
	bondSizeVal, used = ImGui.SliderInt("Bonds Value", bondSizeVal, 770000, 1540000) -- Double the original price
	out = "Reset the board to see changes"

	if used then
		globals.set_int(BB, bondSizeVal)
		gui.show_message("Bonds Value Modified!", out)
	end
end)

necklaceSizeVal = 700000
cayoSizeEditor:add_imgui(function()
	necklaceSizeVal, used = ImGui.SliderInt("Necklace Value", necklaceSizeVal, 700000, 1400000) -- Double the original price
	out = "Reset the board to see changes"

	if used then
		globals.set_int(RN, necklaceSizeVal)
		gui.show_message("Necklace Value Modified!", out)
	end
end)

tequilaSizeVal = 693000
cayoSizeEditor:add_imgui(function()
	tequilaSizeVal, used = ImGui.SliderInt("Tequila Value", tequilaSizeVal, 693000, 1400000) -- Double the original price
	out = "Reset the board to see changes"

	if used then
		globals.set_int(TEQUILA, tequilaSizeVal)
		gui.show_message("Tequila Value Modified!", out)
	end
end)

cayoSizeEditor:add_separator()
cayoSizeEditor:add_text("Secondary Target Editors")

goldSizeVal = 45375
cayoSizeEditor:add_imgui(function()
	goldSizeVal, used = ImGui.SliderInt("Gold Value", goldSizeVal, 45375, 181500) -- Quadruple the original price
	out = "Reset the board to see changes"

	if used then
		PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
		if PlayerIndex == 0 then
			MPX = "MP0_"
		else
			MPX = "MP1_"
		end
		stats.set_int(MPX .. "H4LOOT_GOLD_V", goldSizeVal)
		gui.show_message("Gold Value Modified!", out)
	end
end)

cokeSizeVal = 25312
cayoSizeEditor:add_imgui(function()
	cokeSizeVal, used = ImGui.SliderInt("Coke Value", cokeSizeVal, 25312, 101248) -- Quadruple the original price
	out = "Reset the board to see changes"

	if used then
		PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
		if PlayerIndex == 0 then
			MPX = "MP0_"
		else
			MPX = "MP1_"
		end
		stats.set_int(MPX .. "H4LOOT_COKE_V", cokeSizeVal)
		gui.show_message("Coke Value Modified!", out)
	end
end)

paintSizeVal = 22500
cayoSizeEditor:add_imgui(function()
	paintSizeVal, used = ImGui.SliderInt("Paintings Value", paintSizeVal, 22500, 90000) -- Quadruple the original price
	out = "Reset the board to see changes"

	if used then
		PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
		if PlayerIndex == 0 then
			MPX = "MP0_"
		else
			MPX = "MP1_"
		end
		stats.set_int(MPX .. "H4LOOT_PAINT_V", paintSizeVal)
		gui.show_message("Paintings Value Modified!", out)
	end
end)

weedSizeVal = 16875
cayoSizeEditor:add_imgui(function()
	weedSizeVal, used = ImGui.SliderInt("Weed Value", weedSizeVal, 16875, 67500) -- Quadruple the original price
	out = "Reset the board to see changes"

	if used then
		PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
		if PlayerIndex == 0 then
			MPX = "MP0_"
		else
			MPX = "MP1_"
		end
		stats.set_int(MPX .. "H4LOOT_WEED_V", weedSizeVal)
		gui.show_message("Weed Value Modified!", out)
	end
end)

cashSizeVal = 10406
cayoSizeEditor:add_imgui(function()
	cashSizeVal, used = ImGui.SliderInt("Cash Value", cashSizeVal, 10406, 41624) -- Quadruple the original price
	out = "Reset the board to see changes"

	if used then
		PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR")
		if PlayerIndex == 0 then
			MPX = "MP0_"
		else
			MPX = "MP1_"
		end
		stats.set_int(MPX .. "H4LOOT_WEED_V", cashSizeVal)
		gui.show_message("Cash Value Modified!", out)
	end
end)
cayoSizeEditor:add_text("These values seem incorrect, but the game reads them properly.")
cayoSizeEditor:add_text("Minimum values are exact defaults for ALL targets.")
cayoSizeEditor:add_separator()
cayoSizeEditor:add_text("Press this after setting values.")
cayoSizeEditor:add_button("Reset Kosatka Board", function()
	locals.set_int(HIP, 1546, 2)
	gui.show_message("Cayo Heist", "Planning board has been reset!")
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

DoomsdayHeistEditorMenu = HeistsDataEditorMenu:add_tab("Doomsday Heist Editor")

DoomsdayHeistEditorMenu:add_button("One Click Setup Act 1: The Data Breaches", function()
	stats.set_int(MPX .. "GANGOPS_FLOW_MISSION_PROG", 7)
	stats.set_int(MPX .. "GANGOPS_FM_MISSION_PROG", 7)
end)

DoomsdayHeistEditorMenu:add_button("One Click Setup Act 2: The Bodgan Problem", function()
	stats.set_int(MPX .. "GANGOPS_FLOW_MISSION_PROG", 240)
	stats.set_int(MPX .. "GANGOPS_FM_MISSION_PROG", 248)
end)

DoomsdayHeistEditorMenu:add_button("One Click Setup Act 3: Doomsday Scenario", function()
	stats.set_int(MPX .. "GANGOPS_FLOW_MISSION_PROG", 15872)
	stats.set_int(MPX .. "GANGOPS_FM_MISSION_PROG", 16128)
end)

DoomsdayHeistEditorMenu:add_text("Set Doomsday Heist Cuts")
DoomsdayHeistEditorMenu:add_text("Preset Cut")
DoomsdayHeistEditorMenu:add_button("100", function()
	CutsPresetter(DCg1, DCg4, 100)
end)
DoomsdayHeistEditorMenu:add_text("Custom Cuts")
local dmsdyCut1 = DoomsdayHeistEditorMenu:add_input_int("Cut 1")
local dmsdyCut2 = DoomsdayHeistEditorMenu:add_input_int("Cut 2")
local dmsdyCut3 = DoomsdayHeistEditorMenu:add_input_int("Cut 3")
local dmsdyCut4 = DoomsdayHeistEditorMenu:add_input_int("Cut 4")
DoomsdayHeistEditorMenu:add_button("Set Cuts", function()
	globals.set_int(DCg1, dmsdyCut1:get_value())
	globals.set_int(DCg2, dmsdyCut2:get_value())
	globals.set_int(DCg3, dmsdyCut3:get_value())
	globals.set_int(DCg4, dmsdyCut4:get_value())
end)

DoomsdayHeistEditorMenu:add_separator()
DoomsdayHeistEditorMenu:add_text("Preps")
DoomsdayHeistEditorMenu:add_button("Reset Preps", function()
	DoomsdayActSetter(240, 0)
end)

DoomsdayHeistEditorMenu:add_sameline()
DoomsdayHeistEditorMenu:add_button("Complete Preps", function()
	stats.set_int(MPX .. "GANGOPS_FM_MISSION_PROG", -1)
end)

DoomsdayHeistEditorMenu:add_separator()
DoomsdayHeistEditorMenu:add_text("By pass Doomsday Scenario hack")
DoomsdayHeistEditorMenu:add_button("By Act III Pass hack", function()
	locals.set_int(FMC, DDSHl, 3)
end)

DoomsdayHeistEditorMenu:add_separator()
DoomsdayHeistEditorMenu:add_text("Instant Heist Passed")
DoomsdayHeistEditorMenu:add_button("Instant Finish $$", function()
	locals.set_int(FMC, 19746, 12)
	locals.set_int(FMC, 19746 + 2686, 10000000)
	locals.set_int(FMC, 28365 + 1, 99999)
	locals.set_int(FMC, 31621 + 69, 99999)
	gui.show_message("Instant Heist Passed", "Activated")
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

MissionsSelectorAndCooldownMenu = L7NEG:add_tab("Missions Selector And cooldown Menu")

MissionsSelectorAndCooldownMenu:add_button("Remove Dax Missions CoolDown ", function()
	stats.set_int("MP" .. MPX .. "_XM22JUGGALOWORKCDTIMER", -1)
end)

MissionsSelectorAndCooldownMenu:add_button("Remove VIP/MC Cool Down", function()
	stats.set_int("MPPLY_VIPGAMEPLAYDISABLEDTIMER", 0)
end)

MissionsSelectorAndCooldownMenu:add_button("Skip Yacht Misions", function()
	stats.set_int(MPX .. "YACHT_MISSION_PROG", 0)
	stats.set_int(MPX .. "YACHT_MISSION_FLOW", 21845)
	stats.set_int(MPX .. "CASINO_DECORATION_GIFT_1", -1)
end)



local TransactionManager <const> = {}
TransactionManager.__index = TransactionManager

function TransactionManager.new()
    local instance = setmetatable({}, TransactionManager)

    instance.Transactions = {
        {label = "15M (Bend Job Limited)", hash = 0x176D9D54},
        {label = "15M (Bend Bonus Limited)", hash = 0xA174F633},
        {label = "7M (Gang Money Limited)", hash = 0xED97AFC1},
        {label = "3.6M (Casino Heist Money Limited)", hash = 0xB703ED29},
        {label = "2.5M (Gang Money Limited)", hash = 0x46521174},
        {label = "2.5M (Island Heist Money Limited)", hash = 0xDBF39508},
        {label = "2M (Heist Awards Money Limited)", hash = 0x8107BB89},
        {label = "2M (Tuner Robbery Money Limited)", hash = 0x921FCF3C},
        {label = "2M (Business Hub Money Limited)", hash = 0x4B6A869C},
        {label = "1M (Avenger Operations Money Limited)", hash = 0xE9BBC247},
        {label = "1M (Daily Objective Event Money Limited)", hash = 0x314FB8B0},
        {label = "1M (Daily Objective Money Limited)", hash = 0xBFCBE6B6},
        {label = "680K (Betting Money Limited)", hash = 0xACA75AAE},
        {label = "500K (Juggalo Story Money Limited)", hash = 0x05F2B7EE},
        {label = "310K (Vehicle Export Money Limited)", hash = 0xEE884170},
        {label = "200K (DoomsDay Finale Bonus Money Limited)", hash = 0xBA16F44B},
        {label = "200K (Action Figures Money Limited)",  hash = 0x9145F938},
        {label = "200K (Collectibles Money Limited)",    hash = 0xCDCF2380},
        {label = "190K (Vehicle Sales Money Limited)",   hash = 0xFD389995}
    }

    return instance
end

---@return Table TransactionList
function TransactionManager:GetTransactionList()
    return self.Transactions
end

---@return Int32 character
function TransactionManager:GetCharacter()
    local _, char = STATS.STAT_GET_INT(joaat("MPPLY_LAST_MP_CHAR"), 0, 1)
    return tonumber(char)
end

---@param Int32 hash 
---@param Int32 category
---@return Int32 price
function TransactionManager:GetPrice(hash)
    return tonumber(NETSHOPPING.NET_GAMESERVER_GET_PRICE(hash, 0x57DE404E, true))
end

---@param Int32 hash 
---@param? Int32 amount 
function TransactionManager:TriggerTransaction(item_hash)
    script.execute_as_script("shop_controller", function()
        if NETSHOPPING.NET_GAMESERVER_BASKET_IS_ACTIVE() then
            NETSHOPPING.NET_GAMESERVER_BASKET_END()
        end

        local status, tranny_id = NETSHOPPING.NET_GAMESERVER_BEGIN_SERVICE(-1, 0x57DE404E, item_hash, 0x562592BB, self:GetPrice(item_hash), 2)
        if status then
            NETSHOPPING.NET_GAMESERVER_CHECKOUT_START(tranny_id)
        end
    end)
end

function TransactionManager:Init()
    -- Haupttab für Money
    local Money = L7NEG:add_tab("Money")

    -- Untertab für ATM
    local sub_atm = Money:add_tab("ATM")
    local checkboxwb = sub_atm:add_checkbox("Transfer Wallet Money To Bank")

    -- Untertab für Looped Transactions
    local sub_transaction = Money:add_tab("Looped Transactions")
    local checkbox1m = sub_transaction:add_checkbox("180k Loop")
    sub_transaction:add_sameline()
    local checkbox50k = sub_transaction:add_checkbox("50K Loop")
    local checkbox100k = sub_transaction:add_checkbox("100K Loop")
    sub_transaction:add_sameline()
    local bountyloop = sub_transaction:add_checkbox("Bounty Loop")

    -- Untertab für Limited Transactions
    local sub_transactionL = Money:add_tab("Limited Transactions")

    script.register_looped("1mtransaction", function()
        if checkbox1m:is_enabled() then
            self:TriggerTransaction(0x615762F1)
        end
    end)

    script.register_looped("50ktransaction", function(script)
        if checkbox50k:is_enabled() then
            self:TriggerTransaction(0x610F9AB4)
        end
    end)

    script.register_looped("100ktransaction", function(script)
        if checkbox100k:is_enabled() then 
            self:TriggerTransaction(0x68341DC5)
        end
    end)

    script.register_looped("bountyloop", function(script)
        if bountyloop:is_enabled() then 
            self:TriggerTransaction(0xC4F96E65)
            script:sleep(1000)
            self:TriggerTransaction(0x610F9AB4)
        end
    end)

    script.register_looped("walletbank", function(script)
        if checkboxwb:is_enabled() then
            NETSHOPPING.NET_GAMESERVER_TRANSFER_WALLET_TO_BANK(self:GetCharacter(), MONEY.NETWORK_GET_VC_WALLET_BALANCE(self:GetCharacter()))
        end
    end)

    for _, stealth in ipairs(self:GetTransactionList()) do
        sub_transactionL:add_button(stealth.label, function()
            self:TriggerTransaction(stealth.hash)
        end)
    end
end

TransactionManager.new():Init()
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Almenu = L7NEG:add_tab("Other")

gui.show_message("Zephyr","V2 Loaded")

	Almenu:add_text(" Zephyr_extras_Menu_V3_1.68 ")
------------------------------------

function run_script(name) --start script thread
    script.run_in_fiber(function (runscript)
        SCRIPT.REQUEST_SCRIPT(name)  
        repeat runscript:yield() until SCRIPT.HAS_SCRIPT_LOADED(name)
        SYSTEM.START_NEW_SCRIPT(name, 5000)
        SCRIPT.SET_SCRIPT_AS_NO_LONGER_NEEDED(name)
    end)
end


function tpfac()
    local Pos = HUD.GET_BLIP_COORDS(HUD.GET_FIRST_BLIP_INFO_ID(590))
    if HUD.DOES_BLIP_EXIST(HUD.GET_FIRST_BLIP_INFO_ID(590)) then
        PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), Pos.x, Pos.y, Pos.z+4)
    end

end

function DELETE_OBJECT_BY_HASH(hash)
    for _, ent in pairs(entities.get_all_objects_as_handles()) do
        if ENTITY.GET_ENTITY_MODEL(ent) == hash then
            PED.SET_PED_COORDS_KEEP_VEHICLE(ent, 0, 0, 0)
        end
    end
end
------------------------------------



AlmenuT = Almenu:add_tab("Teleport")

AlmenuT:add_button("to Marker (particles)", function()
    script.run_in_fiber(function (tp2wp)
        command.call("waypointtp",{}) --调用Yimmenu自身传送到导航点命令
        STREAMING.REQUEST_NAMED_PTFX_ASSET("scr_rcbarry2") --小丑出现烟雾
        while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("scr_rcbarry2") do
            STREAMING.REQUEST_NAMED_PTFX_ASSET("scr_rcbarry2")
            tp2wp:yield()               
        end
        GRAPHICS.USE_PARTICLE_FX_ASSET("scr_rcbarry2")
        GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("scr_clown_appears", PLAYER.PLAYER_PED_ID(), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0x8b93, 1.0, false, false, false, 0, 0, 0, 0)
    end)
end)


AlmenuT:add_button("to Bunker", function()
    local PlayerPos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.PLAYER_PED_ID(), 0.0, 0.52, 0.0)
    local intr = INTERIOR.GET_INTERIOR_AT_COORDS(PlayerPos.x, PlayerPos.y, PlayerPos.z)

    if intr == 269313 then 
        gui.show_message("no need to send","You are already in the facility")
    else
        tpfac()
    end
end)

AlmenuT:add_sameline()

AlmenuT:add_button("to Bunker Plan Screen", function()
    local PlayerPos = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(PLAYER.PLAYER_PED_ID(), 0.0, 0.52, 0.0)
    local intr = INTERIOR.GET_INTERIOR_AT_COORDS(PlayerPos.x, PlayerPos.y, PlayerPos.z)
    if intr == 269313 then 
        if HUD.DOES_BLIP_EXIST(HUD.GET_FIRST_BLIP_INFO_ID(428)) then
            PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), 350.69284, 4872.308, -60.794243)
        end
    else
        gui.show_message("make sure you are in the facility","Please enter the facility before teleporting to the planning screen")
        tpfac()
    end
end)
-------------------------------------


local NightclubPropertyInfo = {
    [1]  = {name = "La Mesa Nightclub",           coords = {x = 757.009,   y =  -1332.32,  z = 27.1802 }},
    [2]  = {name = "Mission Row Nightclub",       coords = {x = 345.7519,  y =  -978.8848, z = 29.2681 }},
    [3]  = {name = "Strawberry Nightclub",        coords = {x = -120.906,  y =  -1260.49,  z = 29.2088 }},
    [4]  = {name = "West Vinewood Nightclub",     coords = {x = 5.53709,   y =  221.35,    z = 107.6566}},
    [5]  = {name = "Cypress Flats Nightclub",     coords = {x = 871.47,    y =  -2099.57,  z = 30.3768 }},
    [6]  = {name = "LSIA Nightclub",              coords = {x = -676.625,  y =  -2458.15,  z = 13.8444 }},
    [7]  = {name = "Elysian Island Nightclub",    coords = {x = 195.534,   y =  -3168.88,  z = 5.7903  }},
    [8]  = {name = "Downtown Vinewood Nightclub", coords = {x = 373.05,    y =  252.13,    z = 102.9097}},
    [9]  = {name = "Del Perro Nightclub",         coords = {x = -1283.38,  y =  -649.916,  z = 26.5198 }},
    [10] = {name = "Vespucci Canals Nightclub",   coords = {x = -1174.85,  y =  -1152.3,   z = 5.56128 }},
}

-- Business / Other Online Work Stuff [[update]]
local function GetOnlineWorkOffset()
    -- GLOBAL_PLAYER_STAT
        local playerid = globals.get_int(1574918) --疑似与MPPLY_LAST_MP_CHAR相等
    return (1853988 + 1 + (playerid * 867) + 267)
end
local function GetNightClubHubOffset()
    return (GetOnlineWorkOffset() + 310)
end
local function GetNightClubOffset()
    return (GetOnlineWorkOffset() + 354) -- CLUB_OWNER_X
end

local function GetWarehouseOffset()
    return (GetOnlineWorkOffset() + 116) + 1
end

local function GetMCBusinessOffset()
    return (GetOnlineWorkOffset() + 193) + 1
end
local function GetNightClubPropertyID()
    return globals.get_int(GetNightClubOffset())
end

local function IsPlayerInNightclub()
    return (GetPlayerPropertyID() > 101) and (GetPlayerPropertyID() < 112)
end

function tpnc() --传送到夜总会
    local property = GetNightClubPropertyID()
    if property ~= 0  then
        local coords = NightclubPropertyInfo[property].coords
        PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), coords.x, coords.y, coords.z)
    end
end

AlmenuT:add_button("to Nightclub (Work only in invitation session)", function()
    tpnc()
end)

AlmenuT:add_sameline()

AlmenuT:add_button("to Nightclub safe (TP to NC first)", function()
    PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), -1615.6832, -3015.7546, -75.204994)
end)
-----------


---------------

AlmenuF = Almenu:add_tab("CMM")

AlmenuF:add_text("(Computers Management Menu)")
---------------

AlmenuM = Almenu:add_tab("Money")

---------------

AlmenuH = Almenu:add_tab("Heist Editor")

---------------
CayoH = AlmenuH:add_tab("Cayo Perico Heist")

CayoH:add_button("Setup Panther", function()
    PlayerIndex = globals.get_int(1574918)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
		STATS.STAT_SET_INT(joaat(mpx .. "H4CNF_BS_GEN"), 131071, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4CNF_BS_ENTR"), 63, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4CNF_BS_ABIL"), 63, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4CNF_WEAPONS"), 5, true)
		STATS.STAT_SET_INT(joaat(mpx .. "H4CNF_WEP_DISRP"), 3, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4CNF_ARM_DISRP"), 3, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4CNF_HEL_DISRP"), 3, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4CNF_TARGET"), 5, true)
		STATS.STAT_SET_INT(joaat(mpx .. "H4CNF_TROJAN"), 2, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4CNF_APPROACH"), -1, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4LOOT_CASH_I"), 0, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4LOOT_CASH_C"), 0, true)
		STATS.STAT_SET_INT(joaat(mpx .. "H4LOOT_WEED_I"), 0, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4LOOT_WEED_C"), 0, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4LOOT_COKE_I"), 0, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4LOOT_COKE_C"), 0, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4LOOT_CASH_I"), 0, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4LOOT_GOLD_I"), 0, true)
		STATS.STAT_SET_INT(joaat(mpx .. "H4LOOT_GOLD_C"), 0, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4LOOT_PAINT"), -1, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4_PROGRESS"), 126823, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4LOOT_CASH_I_SCOPED"), 0, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4LOOT_CASH_C_SCOPED"), 0, true)
		STATS.STAT_SET_INT(joaat(mpx .. "H4LOOT_WEED_I_SCOPED"), 0, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4LOOT_WEED_C_SCOPED"), 0, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4LOOT_COKE_I_SCOPED"), 0, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4LOOT_COKE_C_SCOPED"), 0, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4LOOT_GOLD_I_SCOPED"), 0, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4LOOT_GOLD_C_SCOPED"), 0, true)
		STATS.STAT_SET_INT(joaat(mpx .. "H4LOOT_PAINT_SCOPED"), -1, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4_MISSIONS"), 65535, true)
                STATS.STAT_SET_INT(joaat(mpx .. "H4_PLAYTHROUGH_STATUS"), 32, true)
                
                --
                
end)

CayoH:add_sameline()

CayoH:add_button("Setup Hard", function()
    PlayerIndex = globals.get_int(1574918)
    if PlayerIndex == 0 then
        mpx = "MP0_"
    else
        mpx = "MP1_"
    end
        STATS.STAT_SET_INT(joaat(mpx .. "H4_PROGRESS"), 131055, true)
                
                --
                
end)

CayoH:add_sameline()

CayoH:add_button("Setup Normal", function()
    PlayerIndex = globals.get_int(1574918)
    if PlayerIndex == 0 then
        mpx = "MP0_"
    else
        mpx = "MP1_"
    end
        STATS.STAT_SET_INT(joaat(mpx .. "H4_PROGRESS"), 126823, true)
                
                --
                
end)

--



CayoH:add_button("Reset", function()
    PlayerIndex = globals.get_int(1574918)
    if PlayerIndex == 0 then
        mpx = "MP0_"
    else
        mpx = "MP1_"
    end
         STATS.STAT_SET_INT(joaat(mpx .. "H4_MISSIONS"), 0, true)
         STATS.STAT_SET_INT(joaat(mpx .. "H4_PROGRESS"), 0, true)
         STATS.STAT_SET_INT(joaat(mpx .. "H4_PLAYTHROUGH_STATUS"), 0, true)
         STATS.STAT_SET_INT(joaat(mpx .. "H4CNF_APPROACH"), 0, true)
         STATS.STAT_SET_INT(joaat(mpx .. "H4CNF_BS_ENTR"), 0, true)
         STATS.STAT_SET_INT(joaat(mpx .. "H4CNF_BS_GEN"), 0, true)       
end)
--

CayoH:add_separator()

CayoH:add_button("remove all cameras", function()
    for _, ent in pairs(entities.get_all_objects_as_handles()) do
        for __, cam in pairs(CamList) do
            if ENTITY.GET_ENTITY_MODEL(ent) == cam then
                ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent,true,true) --不执行这个下面会删除失败 @nord123#9579
                ENTITY.DELETE_ENTITY(ent)               
            end
        end
    end
end)
CamList = {   --从heist control抄的
    joaat("prop_cctv_cam_01a"),
    joaat("prop_cctv_cam_01b"),
    joaat("prop_cctv_cam_02a"),
    joaat("prop_cctv_cam_03a"),
    joaat("prop_cctv_cam_04a"),
    joaat("prop_cctv_cam_04c"),
    joaat("prop_cctv_cam_05a"),
    joaat("prop_cctv_cam_06a"),
    joaat("prop_cctv_cam_07a"),
    joaat("prop_cs_cctv"),
    joaat("p_cctv_s"),
    joaat("hei_prop_bank_cctv_01"),
    joaat("hei_prop_bank_cctv_02"),
    joaat("ch_prop_ch_cctv_cam_02a"),
    joaat("xm_prop_x17_server_farm_cctv_01"),
}

CayoH:add_sameline()

CayoH:add_button("Removed Perico hoplites", function()
    for _, ent in pairs(entities.get_all_peds_as_handles()) do
        if ENTITY.GET_ENTITY_MODEL(ent) == 193469166 then
            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent,true,true)
            ENTITY.DELETE_ENTITY(ent)
        end
    end
end)

--

CayoH:add_separator()

CayoH:add_button("TP at the entrance", function()
            PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), 5048.157, -5821.616, -12.726)
        end)

CayoH:add_sameline()

CayoH:add_button("TP in storage", function()
            PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), 5007.505, -5755.067, 15.484)
        end)

CayoH:add_sameline()

CayoH:add_button("TP on the way out", function()
            PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), 4990.359, -5717.899, 19.880)
        end)

CayoH:add_sameline()

CayoH:add_button("TP on the sea", function()
            PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), 4200.177, -5625.261, -2.69)
        end)
--







---------------
FleecaH = AlmenuH:add_tab("Fleeca Heist")

FleecaH:add_button("Skip Prep", function()
	PlayerIndex = globals.get_int(1574907)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
		STATS.STAT_SET_INT(joaat(mpx .. "HEIST_PLANNING_STAGE"), -1, true)
end)

FleecaH:add_sameline()

FleecaH:add_button("Reset Prep", function()
	PlayerIndex = globals.get_int(1574907)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
		STATS.STAT_SET_INT(joaat(mpx .. "HEIST_PLANNING_STAGE"), 0, true)
end)
---------------


---------------






----------------------------------------------------------------


AlmenuF:add_text("Works properly in session by invitations. in an open session does not work well")


AlmenuF:add_button("Show master control computer", function()
    local playerIndex = globals.get_int(1574918)
    if globals.get_int(1895156+playerIndex*609+10+429+1) == 0 then
        run_script("apparcadebusinesshub")
    else
        if globals.get_int(1895156+playerIndex*609+10+429+1) == 1 then
            run_script("apparcadebusinesshub")
        else
                gui.show_message("Don't forget to register as CEO/Leader")
                run_script("apparcadebusinesshub")
        end
    end
end)






AlmenuF:add_button("Show Nightclub computer", function()
    local playerIndex = globals.get_int(1574918)
    if globals.get_int(1895156+playerIndex*609+10+429+1) == 0 then
        run_script("appbusinesshub")
    else
        if globals.get_int(1895156+playerIndex*609+10+429+1) == 1 then
            run_script("appbusinesshub")
        else
                gui.show_message("Don't forget to register as CEO/Leader")
                run_script("appbusinesshub")
        end
    end
end)

AlmenuF:add_button("Show office computer", function()
    local playerIndex = globals.get_int(1574918)
    if globals.get_int(1895156+playerIndex*609+10+429+1) == 0 then
        run_script("appfixersecurity")
    else
        if globals.get_int(1895156+playerIndex*609+10+429+1) == 1 then
            globals.set_int(1895156+playerIndex*609+10+429+1,0)
            gui.show_message("prompt","Converted to CEO")
            run_script("appfixersecurity")
            else
            gui.show_message("Don't forget to register as CEO/Leader","It may also be a script detection error, known problem, no feedback required")
            run_script("appfixersecurity")
        end
    end
end)

AlmenuF:add_button("show bunker computer", function()
    local playerIndex = globals.get_int(1574918)
    if globals.get_int(1895156+playerIndex*609+10+429+1) == 0 then
        run_script("appbunkerbusiness")
    else
        if globals.get_int(1895156+playerIndex*609+10+429+1) == 1 then
            run_script("appbunkerbusiness")
            else
                gui.show_message("Don't forget to register as CEO/Leader","It may also be a script detection error, known problem, no feedback required")
                run_script("appbunkerbusiness")
            end
    end
end)

AlmenuF:add_button("show hangar computer", function()
    local playerIndex = globals.get_int(1574918)
    if globals.get_int(1895156+playerIndex*609+10+429+1) == 0 then
        run_script("appsmuggler")
    else
        if globals.get_int(1895156+playerIndex*609+10+429+1) == 1 then
            run_script("appsmuggler")
            else
                gui.show_message("Don't forget to register as CEO/Leader","It may also be a script detection error, known problem, no feedback required")
                run_script("appsmuggler")
            end
    end
end)

AlmenuF:add_button("Show the Terrorist Dashboard", function()
    local playerIndex = globals.get_int(1574918)
    if globals.get_int(1895156+playerIndex*609+10+429+1) == 0 then
        run_script("apphackertruck")
    else
        if globals.get_int(1895156+playerIndex*609+10+429+1) == 1 then
            run_script("apphackertruck")
        else
            gui.show_message("Don't forget to register as CEO/Leader","It may also be a script detection error, known problem, no feedback required")
            run_script("apphackertruck")
        end
    end
end)

AlmenuF:add_button("Show Avengers panel", function()
    local playerIndex = globals.get_int(1574918)
    if globals.get_int(1895156+playerIndex*609+10+429+1) == 0 then
        run_script("appAvengerOperations")
    else
        if globals.get_int(1895156+playerIndex*609+10+429+1) == 1 then
            run_script("appAvengerOperations")
        else
            gui.show_message("Don't forget to register as CEO/Leader","It may also be a script detection error, known problem, no feedback required")
            run_script("appAvengerOperations")
        end
    end
end)









AlmenuM:add_text("Here are the best and safest ways to cheat money in GTA 5 online.")
AlmenuM:add_text("BUT DO NOT GET A LOT OF MONEY, AND USE THE ''STAT EDITOR'' SECTION FOR ACCOUNT SAFETY!!!")
AlmenuM:add_text("Make money in moderation!")
ult = AlmenuM:add_tab("CEO")

Howtou = ult:add_tab("How to use CEO")

Howtou:add_text("How the buy Mission:") 
Howtou:add_text("1)Click ''Enable YimCeo''")
Howtou:add_text("2) Click ''Show computer'' and select ''CEO''")
Howtou:add_text("3) select ur warhouse and start the 1 Crate Mission for 2k$")
Howtou:add_text("4) wait 1 second -> now your warehouse is full.")
Howtou:add_text("5)Clear statistics by selecting ''STAT EDITOR''")

Howtou:add_separator()

Howtou:add_text("How to get money")
Howtou:add_text("1)Click ''Enable YimCeo''")
Howtou:add_text("2)Select the required amount of funds (from 10k to 6m)")
Howtou:add_text("3)Click ''Show computer'' and select ''CEO'', click ''Sell Cargo'' and wait")
Howtou:add_text("4)Clear statistics by selecting ''STAT EDITOR''")





cratevalue = 0
ult:add_imgui(function()
    cratevalue, used = ImGui.DragInt("Crate Value", cratevalue, 10000, 0, 6000000)
    if used then
        globals.set_int(262145+15991, cratevalue)
    end
end)
checkbox = ult:add_checkbox("Enable YimCeo")
ult:add_button("Show computer", function() SCRIPT.REQUEST_SCRIPT("apparcadebusinesshub") SYSTEM.START_NEW_SCRIPT("apparcadebusinesshub", 8344) end)
script.register_looped("yimceoloop", function (script)
    cratevalue = globals.get_int(262145+15991)
    globals.set_int(262145+15756, 0)
    globals.set_int(262145+15757, 0)
    script:yield()

    if checkbox:is_enabled() == true then
        if locals.get_int("gb_contraband_sell", 2) == 1 then
            locals.set_int("gb_contraband_sell", 543+595, 1)
            locals.set_int("gb_contraband_sell", 543+55, 0)
            locals.set_int("gb_contraband_sell", 543+584, 0) 
            locals.set_int("gb_contraband_sell", 543+7, 7)
            script:sleep(500)
            locals.set_int("gb_contraband_sell", 543+1, 99999)  
        end
        if locals.get_int("appsecuroserv", 2) == 1 then
            script:sleep(500)
            locals.set_int("appsecuroserv", 740, 1)
            script:sleep(200)
            locals.set_int("appsecuroserv", 739, 1)
            script:sleep(200)
            locals.set_int("appsecuroserv", 558, 3012)
            script:sleep(1000)
        end
        if locals.get_int("gb_contraband_buy", 2) == 1 then
            locals.set_int("gb_contraband_buy", 601+5, 1)
            locals.set_int("gb_contraband_buy", 601+1, 111)
            locals.set_int("gb_contraband_buy", 601+191, 6)
            locals.set_int("gb_contraband_buy", 601+192, 4)
            gui.show_message("Ur Warehouse is now full!")
        end
        if locals.get_int("gb_contraband_sell", 2) ~= 1 then  
            script:sleep(500)
            if locals.get_int("am_mp_warehouse", 2) == 1 then
                SCRIPT.REQUEST_SCRIPT("appsecuroserv")
                SYSTEM.START_NEW_SCRIPT("appsecuroserv", 8344)
                SCRIPT.SET_SCRIPT_AS_NO_LONGER_NEEDED("appsecuroserv")
            end
        end
    end
    script:sleep(500)
end)

--


Casino = AlmenuM:add_tab("Casino")


Casino:add_text("Chips can be bought")

Casino:add_button("Chips set to 1000000000", function()
    script.run_in_fiber(function (script)
        STATS.STAT_SET_INT(joaat("MPPLY_CASINO_CHIPS_PUR_GD"), -1000000000, true)
    end)
end)

Casino:add_button("Chips reset to 0", function()
    script.run_in_fiber(function (script)
        STATS.STAT_SET_INT(joaat("MPPLY_CASINO_CHIPS_PUR_GD"), 0, true)
    end)
end)






AlmenuS = Almenu:add_tab("Stat Editor")

AlmenuS:add_text("Use ''Reset 1'' player or ''Reset 2 player'' and change session and exit the game to apply changes")

AlmenuS:add_separator()

AlmenuS:add_button("Reset 1 player", function()
    gui.show_message("Player 1 Stats Reset","Change session to apply changes")
    script.run_in_fiber(function (script)
        STATS.STAT_SET_INT(joaat("MPPLY_TOTAL_EVC"), 0, true)
        STATS.STAT_SET_INT(joaat("MPPLY_TOTAL_SVC"), 0, true)
        STATS.STAT_SET_INT(joaat("MP0_MONEY_EARN_BETTING"), 0, true)
        STATS.STAT_SET_INT(joaat("MP0_MONEY_EARN_JOBS"), 0, true)
        STATS.STAT_SET_INT(joaat("MP0_MONEY_EARN_SHARED"), 0, true)
        STATS.STAT_SET_INT(joaat("MP0_MONEY_SPENT_SHARED"), 0, true)
        STATS.STAT_SET_INT(joaat("MP0_MONEY_EARN_JOBSHARED"), 0, true)
        STATS.STAT_SET_INT(joaat("MP0_MONEY_EARN_SELLING_VEH"), 0, true)
        STATS.STAT_SET_INT(joaat("MP0_MONEY_SPENT_WEAPON_ARMOR"), 0, true)
        STATS.STAT_SET_INT(joaat("MP0_MONEY_SPENT_VEH_MAINTENANCE"), 0, true)
        STATS.STAT_SET_INT(joaat("MP0_MONEY_SPENT_STYLE_ENT"), 0, true)
        STATS.STAT_SET_INT(joaat("MP0_MONEY_SPENT_PROPERTY_UTIL"), 0, true)
        STATS.STAT_SET_INT(joaat("MP0_MONEY_SPENT_JOB_ACTIVITY"), 0, true)
        STATS.STAT_SET_INT(joaat("MP0_MONEY_SPENT_BETTING"), 0, true)
        STATS.STAT_SET_INT(joaat("MP0_MONEY_EARN_VEHICLE_EXPORT"), 0, true)
        STATS.STAT_SET_INT(joaat("MP0_MONEY_SPENT_VEHICLE_EXPORT"), 0, true)
        STATS.STAT_SET_INT(joaat("MP0_MONEY_EARN_CLUB_DANCING"), 0, true)
        STATS.STAT_SET_INT(joaat("MP0_CASINO_CHIPS_WON_GD"), 0, true)
        STATS.STAT_SET_INT(joaat("MP0_CASINO_CHIPS_WONTIM"), 0, true)
        STATS.STAT_SET_INT(joaat("MP0_CASINO_GMBLNG_GD"), 0, true)
        STATS.STAT_SET_INT(joaat("MP0_CASINO_BAN_TIME"), 0, true)
        STATS.STAT_SET_INT(joaat("MP0_CASINO_CHIPS_PURTIM"), 0, true)
        STATS.STAT_SET_INT(joaat("MP0_CASINO_CHIPS_PUR_GD"), 0, true)
	end)
end)







AlmenuS:add_button("Reset 2 player", function()
    gui.show_message("Player 2 Stats Reset","Change session to apply changes")
    script.run_in_fiber(function (script)
        STATS.STAT_SET_INT(joaat("MPPLY_TOTAL_EVC"), 0, true)
        STATS.STAT_SET_INT(joaat("MPPLY_TOTAL_SVC"), 0, true)
        STATS.STAT_SET_INT(joaat("MP1_MONEY_EARN_BETTING"), 0, true)
        STATS.STAT_SET_INT(joaat("MP1_MONEY_EARN_JOBS"), 0, true)
        STATS.STAT_SET_INT(joaat("MP1_MONEY_EARN_SHARED"), 0, true)
        STATS.STAT_SET_INT(joaat("MP1_MONEY_SPENT_SHARED"), 0, true)
        STATS.STAT_SET_INT(joaat("MP1_MONEY_EARN_JOBSHARED"), 0, true)
        STATS.STAT_SET_INT(joaat("MP1_MONEY_EARN_SELLING_VEH"), 0, true)
        STATS.STAT_SET_INT(joaat("MP1_MONEY_SPENT_WEAPON_ARMOR"), 0, true)
        STATS.STAT_SET_INT(joaat("MP1_MONEY_SPENT_VEH_MAINTENANCE"), 0, true)
        STATS.STAT_SET_INT(joaat("MP1_MONEY_SPENT_STYLE_ENT"), 0, true)
        STATS.STAT_SET_INT(joaat("MP1_MONEY_SPENT_PROPERTY_UTIL"), 0, true)
        STATS.STAT_SET_INT(joaat("MP1_MONEY_SPENT_JOB_ACTIVITY"), 0, true)
        STATS.STAT_SET_INT(joaat("MP1_MONEY_SPENT_BETTING"), 0, true)
        STATS.STAT_SET_INT(joaat("MP1_MONEY_EARN_VEHICLE_EXPORT"), 0, true)
        STATS.STAT_SET_INT(joaat("MP1_MONEY_SPENT_VEHICLE_EXPORT"), 0, true)
        STATS.STAT_SET_INT(joaat("MP1_MONEY_EARN_CLUB_DANCING"), 0, true)
        STATS.STAT_SET_INT(joaat("MP1_CASINO_CHIPS_WON_GD"), 0, true)
        STATS.STAT_SET_INT(joaat("MP1_CASINO_CHIPS_WONTIM"), 0, true)
        STATS.STAT_SET_INT(joaat("MP1_CASINO_GMBLNG_GD"), 0, true)
        STATS.STAT_SET_INT(joaat("MP1_CASINO_BAN_TIME"), 0, true)
        STATS.STAT_SET_INT(joaat("MP1_CASINO_CHIPS_PURTIM"), 0, true)
        STATS.STAT_SET_INT(joaat("MP1_CASINO_CHIPS_PUR_GD"), 0, true)
	end)
end)

AlmenuCredits = Almenu:add_tab("Credits")

Yimura = AlmenuCredits:add_tab("Yimura")
Yimura:add_text("Yim Menu Cheat creator")
Yimura:add_text("Cheat on GitHub:")
Yimura:add_text("https://github.com/YimMenu/YimMenu")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CreditsMenu = L7NEG:add_tab("Credits")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Yimura = CreditsMenu:add_tab("Yimura")
Yimura:add_text("Yim Menu Cheat Developer")
Yimura:add_text("Cheat on GitHub:")
Yimura:add_text("https://github.com/YimMenu/YimMenu")

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


















json = require('json')

--[[


                                                                                                                       
                                                                                                                       
ZZZZZZZZZZZZZZZZZZZ                                       hhhhhhh                                                      
Z:::::::::::::::::Z                                       h:::::h                                                      
Z:::::::::::::::::Z                                       h:::::h                                                      
Z:::ZZZZZZZZ:::::Z                                        h:::::h                                                      
ZZZZZ     Z:::::Z      eeeeeeeeeeee    ppppp   ppppppppp   h::::h hhhhh   yyyyyyy           yyyyyyyrrrrr   rrrrrrrrr   
        Z:::::Z      ee::::::::::::ee  p::::ppp:::::::::p  h::::hh:::::hhh y:::::y         y:::::y r::::rrr:::::::::r  
       Z:::::Z      e::::::eeeee:::::eep:::::::::::::::::p h::::::::::::::hhy:::::y       y:::::y  r:::::::::::::::::r 
      Z:::::Z      e::::::e     e:::::epp::::::ppppp::::::ph:::::::hhh::::::hy:::::y     y:::::y   rr::::::rrrrr::::::r
     Z:::::Z       e:::::::eeeee::::::e p:::::p     p:::::ph::::::h   h::::::hy:::::y   y:::::y     r:::::r     r:::::r
    Z:::::Z        e:::::::::::::::::e  p:::::p     p:::::ph:::::h     h:::::h y:::::y y:::::y      r:::::r     rrrrrrr
   Z:::::Z         e::::::eeeeeeeeeee   p:::::p     p:::::ph:::::h     h:::::h  y:::::y:::::y       r:::::r            
ZZZ:::::Z     ZZZZZe:::::::e            p:::::p    p::::::ph:::::h     h:::::h   y:::::::::y        r:::::r            
Z::::::ZZZZZZZZ:::Ze::::::::e           p:::::ppppp:::::::ph:::::h     h:::::h    y:::::::y         r:::::r            
Z:::::::::::::::::Z e::::::::eeeeeeee   p::::::::::::::::p h:::::h     h:::::h     y:::::y          r:::::r            
Z:::::::::::::::::Z  ee:::::::::::::e   p::::::::::::::pp  h:::::h     h:::::h    y:::::y           r:::::r            
ZZZZZZZZZZZZZZZZZZZ    eeeeeeeeeeeeee   p::::::pppppppp    hhhhhhh     hhhhhhh   y:::::y            rrrrrrr            
                                        p:::::p                                 y:::::y                                
                                        p:::::p                                y:::::y                                 
                                       p:::::::p                              y:::::y                                  
                                       p:::::::p                             y:::::y                                   
                                       p:::::::p                            yyyyyyy                                    
                                       ppppppppp                                                                       
                                                                                                                       



    Zephyr for YimMenu v1.69
        Zephyr Version: 2

        Credits:  Yimura & LucasAbi69!

]]--

 addonVersion = "V2"

griefPlayerTab = gui.get_tab("")
dropsPlayerTab = gui.get_tab("") -- For Selected Player Options
giftPlayerTab = gui.get_tab("")

-- Function to create a text element
 function createText(tab, text)
    tab:add_text(text)
end

function sleep(seconds)
    local start = os.clock()
    while os.clock() - start < seconds do
        -- Yield the CPU to avoid high CPU usage during the delay
        coroutine.yield()
    end
end

function delete_entity(ent) --discord@rostal315
    if ENTITY.DOES_ENTITY_EXIST(ent) then
        ENTITY.DETACH_ENTITY(ent, true, true)
        ENTITY.SET_ENTITY_VISIBLE(ent, false, false)
        NETWORK.NETWORK_SET_ENTITY_ONLY_EXISTS_FOR_PARTICIPANTS(ent, true)
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ent, 0.0, 0.0, -1000.0, false, false, false)
        ENTITY.SET_ENTITY_COLLISION(ent, false, false)
        ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, true, true)
        ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(ent)
        ENTITY.DELETE_ENTITY(ent)
    end
end

function toolTip(tab, text, seperate)
    seperate = seperate or false
    if tab == "" then
        if seperate then --waiting approval
            ImGui.SameLine()
            ImGui.TextDisabled("(?)")
        end
        if ImGui.IsItemHovered() then
            ImGui.BeginTooltip()
      ImGui.Text(text)
            ImGui.EndTooltip()
        end
    else
        tab:add_imgui(function()
            if seperate then
                ImGui.SameLine()
                ImGui.TextDisabled("(?)")
            end
            if ImGui.IsItemHovered() then
                ImGui.BeginTooltip()
                ImGui.Text(text)
                ImGui.EndTooltip()
            end
        end)
    end
end

function newText(tab, text, size)
    size = size or 1
    tab:add_imgui(function()
        ImGui.SetWindowFontScale(size)
        ImGui.Text(text)
        ImGui.SetWindowFontScale(1)
    end)
end

function RequestControl(entity)
    return entities.take_control_of(entity)
end

function request_control(entity)
    return entities.take_control_of(entity)
end

function SessionChanger(session)
    globals.set_int(1575035, session)
        if session == -1 then
            globals.set_int(1574589 + 2, -1)
        end
        sleep(0.5)
        globals.set_int(1574589, 1)
        sleep(0.5)
        globals.set_int(1574589, 0)
end

-- Extras Menu Addon for YimMenu 1.69 by DeadlineEm
 Zephyr = gui.get_tab("Zephyr V2")
require("Extras-data")
newText(Zephyr, "Welcome to Zephyr "..addonVersion.." please read the information below before proceeding to use the menu options.", 1)
Zephyr:add_separator()
createText(Zephyr, "Some, if not most of these options are considered Recovery based options, use them at your own risk!")
Zephyr:add_separator()
createText(Zephyr, "This menu is a mashup of multiple menu features, some altered, some not.  It was created with the intent")
createText(Zephyr, "of having as many options as possible for everything you can imagine, but to allow complete mod freedom")
createText(Zephyr, "without needing to compile your own version of YimMenu yet still being able to use its base features in")
createText(Zephyr, "one small dropdown tab without needing multiple lua scripts to do so.  The project is open source and I")
createText(Zephyr, "encourage everyone to create this with me, lend your ideas, submit PR's, make discussions and lets make")
createText(Zephyr, "YimMenu next generation!")
Zephyr:add_separator()
createText(Zephyr, "Credits: Yimura, LucasAbi69")

-- Player Options Tab
 Pla = Zephyr:add_tab("Player Options")

-- Movement Tab with Slider for Movement Speed
 Mvmt = Pla:add_tab("Movement")

runSpeed = 1
Mvmt:add_imgui(function()
    runSpeed, used = ImGui.SliderInt("Run Speed", runSpeed, 1, 10)
    out = "Speed set to "..tostring(runSpeed).."x"
    if used then
        PLAYER.SET_RUN_SPRINT_MULTIPLIER_FOR_PLAYER(PLAYER.PLAYER_ID(), runSpeed/7)
        gui.show_message('Run Speed Modified!', out)
    end
    toolTip("", "Increase your Walk/Run Speed")
end)

swimSpeed = 1
Mvmt:add_imgui(function()
    swimSpeed, used = ImGui.SliderInt("Swim Speed", swimSpeed, 1, 10)
    out = "Speed set to "..tostring(swimSpeed).."x"
    if used then
        PLAYER.SET_SWIM_MULTIPLIER_FOR_PLAYER(PLAYER.PLAYER_ID(), swimSpeed/7)
        gui.show_message('Swim Speed Modified!', out)
    end
    toolTip("", "Increase your Swimming Speed")
end)

-- Fun Random Things
 Fun = Pla:add_tab("Fun Self Options")
Fun:add_text("PTFX")
 fireworkLoop3 = Fun:add_checkbox("Firework (On/Off)")

function load_fireworks()
    STREAMING.REQUEST_NAMED_PTFX_ASSET("proj_indep_firework")

    if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("proj_indep_firework") then
        return false
    end


    return true
end

function random_color()
    return math.random(0, 255), math.random(0, 255), math.random(0, 255)
end

script.register_looped("FireworkLoop3", function()
    if fireworkLoop3:is_enabled() == true then
        if load_fireworks() then
             PlayerId = PLAYER.PLAYER_ID()
                 player_coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PlayerId), true)

                -- Get random color values
                 colorR, colorG, colorB = random_color()
                test = player_coords.z - 1
                GRAPHICS.USE_PARTICLE_FX_ASSET("proj_indep_firework")
                GRAPHICS.SET_PARTICLE_FX_NON_LOOPED_COLOUR(colorR, colorG, colorB)
                GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_indep_firework_grd_burst", player_coords.x, player_coords.y, test, 0, 0, 0, 1, false, false, false, false)
            sleep(0.2)
        end
    end
end)
toolTip(Fun, "Toggles Firework particle effect on your player")
Fun:add_sameline()
 smokeLoop = Fun:add_checkbox("Smoke (On/Off)")
function load_smoke()

    STREAMING.REQUEST_NAMED_PTFX_ASSET("scr_sum2_hal")

    if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("scr_sum2_hal") then
        return false
    end

    return true
end

function random_color()
    return math.random(0, 255), math.random(0, 255), math.random(0, 255)
end

script.register_looped("SmokeLoop", function()
    if smokeLoop:is_enabled() == true then
        if load_smoke() then
             PlayerId = PLAYER.PLAYER_ID()
                 player_coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PlayerId), true)

                -- Get random color values
                 colorR, colorG, colorB = random_color()
                test = player_coords.z - 2.0
                GRAPHICS.USE_PARTICLE_FX_ASSET("scr_sum2_hal")
                GRAPHICS.SET_PARTICLE_FX_NON_LOOPED_COLOUR(colorR, colorG, colorB)
                GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_sum2_hal_rider_death_blue", player_coords.x, player_coords.y, test, 0, 0, 0, 1, false, false, false, false)
            sleep(0.2)
        end
    end
end)
toolTip(Fun, "Toggles Smoke particle effect at your players feet")
Fun:add_sameline()
 flameLoop = Fun:add_checkbox("Flames (On/Off)")
function load_flame()

    STREAMING.REQUEST_NAMED_PTFX_ASSET("scr_bike_adversary")

    if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("scr_bike_adversary") then
        return false
    end

    return true
end

function random_color()
    return math.random(0, 255), math.random(0, 255), math.random(0, 255)
end

script.register_looped("FlameLoop", function()
    if flameLoop:is_enabled() == true then
        if load_flame() then
             PlayerId = PLAYER.PLAYER_ID()
                 player_coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PlayerId), true)

                -- Get random color values
                 colorR, colorG, colorB = random_color()
                test = player_coords.z - 1
                GRAPHICS.USE_PARTICLE_FX_ASSET("scr_bike_adversary")
                GRAPHICS.SET_PARTICLE_FX_NON_LOOPED_COLOUR(colorR, colorG, colorB)
                GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_adversary_foot_flames", player_coords.x, player_coords.y, test, 0, 0, 0, 5, false, false, false, false)
            sleep(0.2)
        end
    end
end)
toolTip(Fun, "Toggles Fire 'Ghostrider' particle effect at your players feet")
Fun:add_separator()
shootCB = Fun:add_checkbox("Gun PTFX (Banknotes)")

script.register_looped("particles", function(shoot)
    if shootCB:is_enabled() then
        if PED.IS_PED_SHOOTING(PLAYER.PLAYER_PED_ID()) then
             weapon = WEAPON.GET_CURRENT_PED_WEAPON_ENTITY_INDEX(PLAYER.PLAYER_PED_ID(), 0)
             boneId = ENTITY.GET_ENTITY_BONE_INDEX_BY_NAME(weapon, "gun_muzzle")
            GRAPHICS.USE_PARTICLE_FX_ASSET("scr_rcbarry2")
            GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_PED_BONE("muz_clown", weapon, 0.0, 0.0, 0.0, 90, 0, 0, boneId, 0.8, false, false, false)
        end
    end
end)
toolTip(Fun, "Toggles a Clown particle effect on your weapon when its fired")
Fun:add_sameline()
shootCB2 = Fun:add_checkbox("Gun PTFX (Blood)")

script.register_looped("particles2", function(shootlol)
    if shootCB2:is_enabled() then
        if PED.IS_PED_SHOOTING(PLAYER.PLAYER_PED_ID()) then
             weapon = WEAPON.GET_CURRENT_PED_WEAPON_ENTITY_INDEX(PLAYER.PLAYER_PED_ID(), 0)
             boneId = ENTITY.GET_ENTITY_BONE_INDEX_BY_NAME(weapon, "gun_muzzle")

            GRAPHICS.USE_PARTICLE_FX_ASSET("scr_michael2")
            GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_PED_BONE("scr_mich2_blood_stab", weapon, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, boneId, 2.5, false, false, false)
        end
    end
end)
toolTip(Fun, "Toggles Blood particle effect on your weapon when its fired")
Fun:add_sameline()
vehCB = Fun:add_checkbox("Rear Wheel Flames")
Zephyr:add_separator()
Zephyr:add_text(""..caesar_decrypt(encoded, 3).."")
script.register_looped("particles3", function(wheelOne)
    if vehCB:is_enabled() then
         effect = "scr_bike_adversary"
        while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(effect) do
            STREAMING.REQUEST_NAMED_PTFX_ASSET(effect)
            wheelOne:yield()
        end
            -- weapon = WEAPON.GET_CURRENT_PED_WEAPON_ENTITY_INDEX(PLAYER.PLAYER_PED_ID(), 0)
         vehicle = PED.GET_VEHICLE_PED_IS_IN(PLAYER.PLAYER_PED_ID(), true)
        if ENTITY.IS_ENTITY_A_VEHICLE(vehicle) then
             class = VEHICLE.GET_VEHICLE_CLASS(vehicle)
            if class == 8 then
                 boneId = ENTITY.GET_ENTITY_BONE_INDEX_BY_NAME(vehicle, "wheel_lr") -- Rear Motorcycle Wheel
                GRAPHICS.USE_PARTICLE_FX_ASSET(effect)
                GRAPHICS.START_PARTICLE_FX_NON_LOOPED_ON_ENTITY_BONE("scr_adversary_foot_flames", vehicle, 0.0, 0.0, 0.0, 0, 0, 0, boneId, 2, false, false, false)
            else
                 boneIdOne = ENTITY.GET_ENTITY_BONE_INDEX_BY_NAME(vehicle, "wheel_lr") -- left rear wheel
                 boneIdTwo = ENTITY.GET_ENTITY_BONE_INDEX_BY_NAME(vehicle, "wheel_rr") -- right rear wheel
                GRAPHICS.USE_PARTICLE_FX_ASSET(effect)
                GRAPHICS.START_PARTICLE_FX_NON_LOOPED_ON_ENTITY_BONE("scr_adversary_foot_flames", vehicle, 0.0, 0.0, 0.0, 0, 0, 0, boneIdOne, 2, false, false, false)
                GRAPHICS.USE_PARTICLE_FX_ASSET(effect)
                GRAPHICS.START_PARTICLE_FX_NON_LOOPED_ON_ENTITY_BONE("scr_adversary_foot_flames", vehicle, 0.0, 0.0, 0.0, 0, 0, 0, boneIdTwo, 2, false, false, false)
            end
        end
    end
end)
toolTip(Fun, "Toggles fire particle effects on your vehicles rear wheels")

 effectNames = { "Alien Impact", "Clown Appears", "Blue Sparks", "Alien Disintegration", "Firey Particles" }
 local effects <const> = {
    {"scr_rcbarry1", "scr_alien_impact_bul", 1.0, 50},
    {"scr_rcbarry2", "scr_clown_appears", 0.3, 500},
    {"core", "ent_dst_elec_fire_sp", 1.0, 100},
    {"scr_rcbarry1", "scr_alien_disintegrate", 0.1, 400},
    {"scr_rcbarry1", "scr_alien_teleport", 0.1, 400}
}

function newTimer()
     self = {
        start = os.clock(), -- Start time in seconds
        m_enabled = false,
    }

     function reset()
        self.start = os.clock()
        self.m_enabled = true
    end

     function elapsed()
        return (os.clock() - self.start) * 1000 -- Convert seconds to milliseconds
    end

     function disable() self.m_enabled = false end
     function isEnabled() return self.m_enabled end

    return {
        isEnabled = isEnabled,
        reset = reset,
        elapsed = elapsed,
        disable = disable,
    }
end


 selectedOpt = 1
 local lastEffect <const> = newTimer()

tirePTFX = Fun:add_checkbox("Tire PTFX")
Fun:add_sameline()
Fun:add_imgui(function()
    selectedOpt, selected = ImGui.Combo("Effects", selectedOpt, effectNames, #effectNames)
end)

script.register_looped("tireptfx", function(tire)
     effect = effects[selectedOpt + 1]
     vehicle = PED.GET_VEHICLE_PED_IS_IN(PLAYER.PLAYER_PED_ID(), false)
    if tirePTFX:is_enabled() then

        if ENTITY.DOES_ENTITY_EXIST(vehicle) and not ENTITY.IS_ENTITY_DEAD(vehicle, false) and
        VEHICLE.IS_VEHICLE_DRIVEABLE(vehicle, false) and lastEffect.elapsed() > effect[4] then
            request_fx_asset(effect[1])
            for _, boneName in pairs({"wheel_lf", "wheel_lr", "wheel_rf", "wheel_rr"}) do
                 bone = ENTITY.GET_ENTITY_BONE_INDEX_BY_NAME(vehicle, boneName)

                GRAPHICS.USE_PARTICLE_FX_ASSET(effect[1])
                GRAPHICS.START_PARTICLE_FX_NON_LOOPED_ON_ENTITY_BONE(
                    effect[2],
                    vehicle,
                    0.0, 0.0, 0.0,
                    0.0, 0.0, 0.0,
                    bone,
                    effect[3],
                    false, false, false
                )
            end
            lastEffect.reset()
        end
    end
end)
toolTip(Fun, "Show Particle Effects On Your Tires")

Fun:add_separator()
Fun:add_text("Movement Altering")
drunkLoop = false
acidTrip = false
drunkDriving = false
Fun:add_imgui(function()
    drunkLoop, enabled = ImGui.Checkbox("Make Me Drunk", drunkLoop, true)
    ImGui.SameLine()
    ImGui.TextDisabled("(?)")
    if ImGui.IsItemHovered() then
        ImGui.BeginTooltip()
        ImGui.Text("Makes your character move around drunk.")
        ImGui.EndTooltip()
    end
    ImGui.SameLine()
    acidTrip, enabled = ImGui.Checkbox("Show Drunk VFX", acidTrip, true)
    ImGui.SameLine()
    ImGui.TextDisabled("(?)")
    if ImGui.IsItemHovered() then
        ImGui.BeginTooltip()
        ImGui.Text("Shows the Drunk visual effects (Only when ``Make Me Drunk´´ is active).")
        ImGui.EndTooltip()
    end
    ImGui.SameLine()
    drunkDriving, enabled = ImGui.Checkbox("Drunk Driving", drunkDriving, true)
    ImGui.SameLine()
    ImGui.TextDisabled("(?)")
    if ImGui.IsItemHovered() then
        ImGui.BeginTooltip()
        ImGui.Text("Simulates Drunk Driving (Only when ``Make Me Drunk´´ is active).")
        ImGui.EndTooltip()
    end
     ped = PLAYER.PLAYER_PED_ID()
    if drunkLoop then
        script.run_in_fiber(function()
            while not STREAMING.HAS_CLIP_SET_LOADED("move_m@drunk@verydrunk") do
                STREAMING.REQUEST_CLIP_SET("move_m@drunk@verydrunk")
                coroutine.yield()
            end
            PED.SET_PED_MOVEMENT_CLIPSET(ped, "move_m@drunk@verydrunk", 1.0)
        end)
            gui.show_message("Impairment:", "You are now drunk!")
    else
        PED.RESET_PED_MOVEMENT_CLIPSET(ped, 0.0)
    end
        -- Apply drunk visual effects if the checkbox is enabled
    if acidTrip then
        script.run_in_fiber(function()
            if not drunkLoop then
                gui.show_warning("Impairment:", "Activate ``Make Me Drunk´´ before using this effect.")
                acidTrip = false
            else
            -- Apply acid trip visual effects
            -- Adjust these effects based on your preferences and available native functions
            GRAPHICS.SET_TIMECYCLE_MODIFIER("Drunk") -- Apply drunk timecycle modifier (you can change this to an acid trip modifier or stoned modifier)
            GRAPHICS.SET_TIMECYCLE_MODIFIER_STRENGTH(1.3) -- Adjust strength of distortion
            -- Add additional visual effects here (e.g., screen distortions, color shifts, etc.)
            -- You may need to experiment with different native functions to achieve the desired effect
            end
        end)
    else
        GRAPHICS.CLEAR_TIMECYCLE_MODIFIER()
    end
end)
script.register_looped("drunk driving", function(script)
    script:yield()
    -- Enable drunk driving if the checkbox is enabled
    if drunkDriving then
        if not drunkLoop then
            gui.show_warning("Impairment:", "Activate ``Make Me Drunk´´ before using this effect.")
            drunkDriving = false
        else
             vehicle = PED.GET_VEHICLE_PED_IS_IN(PLAYER.PLAYER_PED_ID(), false)
            if vehicle ~= 0 then
                -- Apply random steering inputs
                 randomSteering = math.random(-1, 1) -- Random value between -1 and 1
                VEHICLE.SET_VEHICLE_STEER_BIAS(vehicle, randomSteering)
                VEHICLE.SET_VEHICLE_STEERING_BIAS_SCALAR(vehicle, 100)
                VEHICLE.SET_VEHICLE_HANDLING_OVERRIDE(vehicle, MISC.GET_HASH_KEY(vehicle))
                sleep(0.2)
                -- Reduce vehicle control
            end
        end
    end
end)
Fun:add_button("Remove Impairments", function()
    script.run_in_fiber(function(remDrugs)
        if drunkLoop then
             ped = PLAYER.PLAYER_PED_ID()
            PED.RESET_PED_MOVEMENT_CLIPSET(ped, 0.0)
            drunkLoop = false
            gui.show_message("Impairment Removed", "You are no longer impaired. Visual and movement effects are removed.")
            -- Reset acid trip visual effects when removing drunk movement
        end
        if acidTrip then
            GRAPHICS.CLEAR_TIMECYCLE_MODIFIER()
            acidTrip = false
        end
    end)
end)
toolTip(Fun, "Removes all impairments.")

expMelee = Fun:add_checkbox("Explosive Melee")
explodedTargets = {}  -- Table to store exploded targets

script.register_looped("explosivePunch", function(expPunch)
    if expMelee:is_enabled() then
        local playerPed = PLAYER.PLAYER_PED_ID()

        if PED.IS_PED_PERFORMING_MELEE_ACTION(playerPed) then
            local target = PED.GET_MELEE_TARGET_FOR_PED(playerPed)

                local targetType = ENTITY.GET_ENTITY_TYPE(target)
                local targetHash = MISC.GET_HASH_KEY(target)
                if not explodedTargets[targetHash] then
                    local coords = ENTITY.GET_ENTITY_COORDS(target, true)
                    FIRE.ADD_EXPLOSION(coords.x, coords.y, coords.z, 0, 100000.0, true, false, 1.0, false)
                    explodedTargets[targetHash] = true
                end

        else
            explodedTargets = {}
        end
    end
    expPunch:yield()
end)
toolTip(Fun, "Makes the Pedestrian you're punching explode.")

Fun:add_sameline()
lazerBeamz = Fun:add_checkbox("Lazer Beams")
-- Lazer Beam loop
script.register_looped('lazerBeam', function(script)
    if lazerBeamz:is_enabled() then
        HUD.SHOW_HUD_COMPONENT_THIS_FRAME(14)
        PLAYER.DISABLE_PLAYER_FIRING(PLAYER.PLAYER_ID(), true)
            if PAD.IS_CONTROL_PRESSED(0, 142) then
                PAD.DISABLE_CONTROL_ACTION(0, 142, true)
                local hit, hitCoords = getEntityInCrosshair()
                if hit ~= nil then
                    local playerPed = PLAYER.PLAYER_PED_ID()
                    local leftEyePos = PED.GET_PED_BONE_COORDS(playerPed, 25260, 0.0, 0.0, 0.07)  -- Left eye bone index
                    local rightEyePos = PED.GET_PED_BONE_COORDS(playerPed, 27474, 0.0, 0.0, 0.07) -- Right eye bone index
                    local endPos = hitCoords
                    local entityType = ENTITY.GET_ENTITY_TYPE(hit)

                    -- Fire projectile from eye positions to hit position
                    local direction = {
                        x = endPos.x - leftEyePos.x,
                        y = endPos.y - leftEyePos.y,
                        z = endPos.z - leftEyePos.z
                    }
                    local directionMag = math.sqrt(direction.x * direction.x + direction.y * direction.y + direction.z * direction.z)
                    direction.x = direction.x / directionMag
                    direction.y = direction.y / directionMag
                    direction.z = direction.z / directionMag

                    if PAD.IS_DISABLED_CONTROL_PRESSED(0, 142) then 
                        GRAPHICS.DRAW_LIGHT_WITH_RANGE(leftEyePos.x, leftEyePos.y, leftEyePos.z, 255, 0, 0, 4.0, 100.0)
                        -- Projectile effect
                        local projectileHash = joaat("WEAPON_RAYCARBINE") -- Unholy Hellbringer projectile
                        
                        WEAPON.REQUEST_WEAPON_ASSET(projectileHash)
                        script:yield()
                        
                        if WEAPON.HAS_WEAPON_ASSET_LOADED(projectileHash) then 
                        STREAMING.REQUEST_NAMED_PTFX_ASSET("weap_xs_weapons")

                        if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("weap_xs_weapons") then
                            return false
                        end
                        
                            GRAPHICS.USE_PARTICLE_FX_ASSET("weap_xs_weapons")
                            GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_PED_BONE("muz_xs_sr_carbine", playerPed, 0, 0.03, 0, 90, 0, 0, 25260, 1, false, false, false)
                            MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(leftEyePos.x, leftEyePos.y, leftEyePos.z, endPos.x, endPos.y, endPos.z, 1000000.0, true, projectileHash, playerPed, true, false, 1.0)
                            MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(rightEyePos.x, rightEyePos.y, rightEyePos.z, endPos.x, endPos.y, endPos.z, 1000000.0, true, projectileHash, playerPed, true, false, 2000.0)
                            GRAPHICS.DRAW_LIGHT_WITH_RANGE(endPos.x, endPos.y, endPos.z, 255, 0, 0, 8.0, 100.0)
                            FIRE.ADD_EXPLOSION(endPos.x, endPos.y, endPos.z, 3, 1000.0, false, false, 0.0, false)
                            script:yield()
                        end
                    end
                end
            end
    end
end)
toolTip(Fun, "Shoots Lazer beams from youe eyes while unarmed OR from your gun muzzle while holding a gun.")

Fun:add_sameline()
explosivePoint = Fun:add_checkbox("Point of Death")
-- Explosive Point loop
script.register_looped("explosivePointer", function(script)
    if explosivePoint:is_enabled() then
        HUD.SHOW_HUD_COMPONENT_THIS_FRAME(14)
        if globals.get_int(4521801 + 932) == 3 then
            local hit, hitCoords = getEntityInCrosshair()
            if hit ~= nil then
                local targetPos = ENTITY.GET_ENTITY_COORDS(hit, false)
                    local entity = hit
                    if not ENTITY.IS_ENTITY_A_PED(entity) then
                        entity = PLAYER.PLAYER_PED_ID()
                    end
                    FIRE.ADD_EXPLOSION(targetPos.x, targetPos.y, targetPos.z + 1, 2, 1000.0, true, false, 1.0, false)
                    script:yield()
            end
        end
    end
end)
toolTip(Fun, "Explodes the entity in your crosshair when you point at it")

-- Stat Editor - Alestarov_Menu // Reset Stats Option
 Stats = Pla:add_tab("Stats")
Stats:add_text("Change Levels")
Stats:add_button("Randomize RP", function()
    script.run_in_fiber(function (script)
        MPX = PI
        PI = stats.get_int("MPPLY_LAST_MP_CHAR")
        if PI == 0 then
            MPX = "MP0_"
        else
            MPX = "MP1_"
        end
         randomizeRP = math.random(1, 1787576850) -- 1 Rp to 1787576850 Rp (lvl 1 to 8000)
        STATS.STAT_SET_INT(joaat(MPX .. "CHAR_SET_RP_GIFT_ADMIN"), randomizeRP, true)
        gui.show_message("Stats", "Your RP has been randomized to "..randomizeRP..", changing session and applying RP")
        sleep(1)
        SessionChanger(0)
    end)
end)
toolTip(Stats, "Randomize your RP/Level")
Stats:add_sameline()
Stats:add_button("Lvl 1", function()
    script.run_in_fiber(function (script)
        MPX = PI
        PI = stats.get_int("MPPLY_LAST_MP_CHAR")
        if PI == 0 then
            MPX = "MP0_"
        else
            MPX = "MP1_"
        end
         rpLevel = 1 -- Level 1 -- https://www.unknowncheats.me/forum/2458458-post691.html
        STATS.STAT_SET_INT(joaat(MPX .. "CHAR_SET_RP_GIFT_ADMIN"), rpLevel, true)
        gui.show_message("Stats", "Your level was set to 1, changing session and applying RP")
        sleep(1)
        SessionChanger(0)
    end)
end)
toolTip(Stats, "Set your level to 1")
Stats:add_sameline()
Stats:add_button("Lvl 100", function()
    script.run_in_fiber(function (script)
        MPX = PI
        PI = stats.get_int("MPPLY_LAST_MP_CHAR")
        if PI == 0 then
            MPX = "MP0_"
        else
            MPX = "MP1_"
        end
         rpLevel = 1584350 -- Level 100 -- https://www.unknowncheats.me/forum/2458458-post691.html
        STATS.STAT_SET_INT(joaat(MPX .. "CHAR_SET_RP_GIFT_ADMIN"), rpLevel, true)
        gui.show_message("Stats", "Your level was set to 100, changing session and applying RP")
        sleep(1)
        SessionChanger(0)
    end)
end)
toolTip(Stats, "Set your level to 100")
Stats:add_sameline()
Stats:add_button("Lvl 420", function()
    script.run_in_fiber(function (script)
        MPX = PI
        PI = stats.get_int("MPPLY_LAST_MP_CHAR")
        if PI == 0 then
            MPX = "MP0_"
        else
            MPX = "MP1_"
        end
         rpLevel = 13288350 -- Level 420 -- https://www.unknowncheats.me/forum/2458458-post691.html
        STATS.STAT_SET_INT(joaat(MPX .. "CHAR_SET_RP_GIFT_ADMIN"), rpLevel, true)
        gui.show_message("Stats", "Your level was set to 420, changing session and applying RP")
        SessionChanger(0)
    end)
end)
toolTip(Stats, "Set your level to 420")
Stats:add_sameline()
Stats:add_button("Lvl 1337", function()
    script.run_in_fiber(function (script)
        MPX = PI
        PI = stats.get_int("MPPLY_LAST_MP_CHAR")
        if PI == 0 then
            MPX = "MP0_"
        else
            MPX = "MP1_"
        end
         rpLevel = 75185850 -- Level 1337 -- https://www.unknowncheats.me/forum/2458458-post691.html
        STATS.STAT_SET_INT(joaat(MPX .. "CHAR_SET_RP_GIFT_ADMIN"), rpLevel, true)
        gui.show_message("Stats", "Your level was set to 1337, changing session and applying RP")
        sleep(1)
        SessionChanger(0)
    end)
end)
toolTip(Stats, "Set your level to 1337")
Stats:add_sameline()
Stats:add_button("Lvl 8000", function()
    script.run_in_fiber(function (script)
        MPX = PI
        PI = stats.get_int("MPPLY_LAST_MP_CHAR")
        if PI == 0 then
            MPX = "MP0_"
        else
            MPX = "MP1_"
        end
         rpLevel = 1787576850 -- Level 8000 -- https://www.unknowncheats.me/forum/2458458-post691.html
        STATS.STAT_SET_INT(joaat(MPX .. "CHAR_SET_RP_GIFT_ADMIN"), rpLevel, true)
        gui.show_message("Stats", "Your level was set to 8000, changing session and applying RP")
        sleep(1)
        SessionChanger(0)
    end)
end)
toolTip(Stats, "Set your level to 8000")
levelInput = Stats:add_input_int("Level")
toolTip(Stats, "Set your level to a value between 1 and 8000")
--PlayerId = PLAYER.PLAYER_ID()
--PlayerRp = network.get_player_rp(PlayerId)-- Not working properly, returns -1 when the PlayerId is yours
levelInput:set_value(1)-- TODO: Set PlayerRank as default value
Stats:add_button("Change level", function()
    script.run_in_fiber(function (script)
        MPX = PI
        PI = stats.get_int("MPPLY_LAST_MP_CHAR")
        if PI == 0 then
            MPX = "MP0_"
        else
            MPX = "MP1_"
        end
        chosenLevel = levelInput:get_value()
        if chosenLevel >= 98 then
            rpLevel = 25 * chosenLevel^2 + 23575 * chosenLevel - 1023150 --calculate rank if greater than 97
        else
            rpLevel = ranks[chosenLevel]-- get rp level from ranks
        end

        if rpLevel == nil then
            gui.show_message("Stats", "The chosen level must be between 1 and 8000!")
        else
            STATS.STAT_SET_INT(joaat(MPX .. "CHAR_SET_RP_GIFT_ADMIN"), rpLevel, true)
            gui.show_message("Stats", "Your level was set to ".. tostring(chosenLevel) ..", changing session and applying RP")
            sleep(1)
            SessionChanger(0)
        end
    end)
end)
toolTip(Stats, "Set your level to the value chosen above (1-8000)")
Stats:add_separator()
Stats:add_text("Income Statistics")
Stats:add_button("Reset Income/Spent Stats", function()
    script.run_in_fiber(function (script)
        MPX = PI
        PI = stats.get_int("MPPLY_LAST_MP_CHAR")
        if PI == 0 then
            MPX = "MP0_"
        else
            MPX = "MP1_"
        end
        STATS.STAT_SET_INT(joaat("MPPLY_TOTAL_EVC"), 0, true)
        STATS.STAT_SET_INT(joaat("MPPLY_TOTAL_SVC"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "MONEY_EARN_BETTING"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "MONEY_EARN_JOBS"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "MONEY_EARN_SHARED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "MONEY_SPENT_SHARED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "MONEY_EARN_JOBSHARED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "MONEY_EARN_SELLING_VEH"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "MONEY_SPENT_WEAPON_ARMOR"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "MONEY_SPENT_VEH_MAINTENANCE"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "MONEY_SPENT_STYLE_ENT"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "MONEY_SPENT_PROPERTY_UTIL"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "MONEY_SPENT_JOB_ACTIVITY"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "MONEY_SPENT_BETTING"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "MONEY_EARN_VEHICLE_EXPORT"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "MONEY_SPENT_VEHICLE_EXPORT"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "MONEY_EARN_CLUB_DANCING"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "CASINO_CHIPS_WON_GD"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "CASINO_CHIPS_WONTIM"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "CASINO_GMBLNG_GD"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "CASINO_BAN_TIME"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "CASINO_CHIPS_PURTIM"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "CASINO_CHIPS_PUR_GD"), 0, true)
        if PI == 0 then
            gui.show_message("Stats", "Income Stats for Player 1 have been reset to 0, changing sessions to apply.")
        else
            gui.show_message("Stats", "Income Stats for Player 2 have been reset to 0, changing sessions to apply.")
        end
        sleep(1)
        SessionChanger(0)
    end)
end)
toolTip(Stats, "Reset your Earned income, Overall Income, Casino Chip Earnings, etc. to 0")
Stats:add_sameline()
Stats:add_button("Bank 2 Wallet", function()
    script.run_in_fiber(function(pocketMoney)
        NETSHOPPING.NET_GAMESERVER_TRANSFER_BANK_TO_WALLET(stats.get_character_index(), MONEY.NETWORK_GET_VC_BANK_BALANCE(stats.get_character_index()))
    end)
end)
toolTip(Stats, "Take all your money out of the bank")
Stats:add_sameline()
Stats:add_button("Wallet 2 Bank", function()
    script.run_in_fiber(function(bankMoney)
        NETSHOPPING.NET_GAMESERVER_TRANSFER_WALLET_TO_BANK(stats.get_character_index(), MONEY.NETWORK_GET_VC_WALLET_BALANCE(stats.get_character_index()))
    end)
end)
toolTip(Stats, "Put all your money into the bank")
Stats:add_separator()
Stats:add_text("Character Skills")
Stats:add_button("Max All Skills", function()
    script.run_in_fiber(function (script)
        MPX = PI
        PI = stats.get_int("MPPLY_LAST_MP_CHAR")
        if PI == 0 then
            MPX = "MP0_"
        else
            MPX = "MP1_"
        end
        STATS.STAT_SET_INT(joaat(MPX .. "SCRIPT_INCREASE_DRIV"), 1000, true)
        STATS.STAT_SET_INT(joaat(MPX .. "SCRIPT_INCREASE_FLY"), 1000, true)
        STATS.STAT_SET_INT(joaat(MPX .. "SCRIPT_INCREASE_LUNG"), 1000, true)
        STATS.STAT_SET_INT(joaat(MPX .. "SCRIPT_INCREASE_SHO"), 1000, true)
        STATS.STAT_SET_INT(joaat(MPX .. "SCRIPT_INCREASE_STAM"), 1000, true)
        STATS.STAT_SET_INT(joaat(MPX .. "SCRIPT_INCREASE_STL"), 1000, true)
        STATS.STAT_SET_INT(joaat(MPX .. "SCRIPT_INCREASE_STRN"), 1000, true)
        gui.show_message("Stats", "Your character skills (Driving, Flying, etc.) have been maxed. Changing sessions to apply.")
        sleep(1)
        SessionChanger(0)
    end)
end)
toolTip(Stats, "Max your characters skills (Driving, flying, stamina, etc.)")
Stats:add_sameline()
Stats:add_button("Reset All Skills", function()
    script.run_in_fiber(function (script)
        MPX = PI
        PI = stats.get_int("MPPLY_LAST_MP_CHAR")
        if PI == 0 then
            MPX = "MP0_"
        else
            MPX = "MP1_"
        end
        STATS.STAT_SET_INT(joaat(MPX .. "SCRIPT_INCREASE_DRIV"), -1000, true)
        STATS.STAT_SET_INT(joaat(MPX .. "SCRIPT_INCREASE_FLY"), -1000, true)
        STATS.STAT_SET_INT(joaat(MPX .. "SCRIPT_INCREASE_LUNG"), -1000, true)
        STATS.STAT_SET_INT(joaat(MPX .. "SCRIPT_INCREASE_SHO"), -1000, true)
        STATS.STAT_SET_INT(joaat(MPX .. "SCRIPT_INCREASE_STAM"), -1000, true)
        STATS.STAT_SET_INT(joaat(MPX .. "SCRIPT_INCREASE_STL"), -1000, true)
        STATS.STAT_SET_INT(joaat(MPX .. "SCRIPT_INCREASE_STRN"), -1000, true)
        gui.show_message("Stats", "Your character skills (Driving, Flying, etc.) have been zeroed. Changing sessions to apply.")
        sleep(1)
        SessionChanger(0)
    end)
end)
toolTip(Stats, "Resets your skills to minimum values.")
Stats:add_separator()
Stats:add_text("Unlocker")

function unlock_packed_bools(from, to)
    for i = from, to do
        stats.set_packed_stat_bool(i, true)
    end
end

-- Look for what reads DISABLE_DAILY_OBJECTIVES and then there should be a while loop that stops at 3.
local current_objectives_global = 2359296
local weekly_words_global = 2737992
local objectives_state_global = 1574744

Stats:add_button("Unlock All", function() --Original script by ShinyWasabi
    script.run_in_fiber(function (script)
        local is_player_male = (ENTITY.GET_ENTITY_MODEL(PLAYER.PLAYER_PED_ID()) == joaat('mp_m_freemode_01'))
        unlock_packed_bools(110, 113) --Red Check Pajamas, Green Check Pajamas, Black Check Pajamas, I Heart LC T-shirt
        unlock_packed_bools(115, 115) --Roosevelt
        unlock_packed_bools(124, 124) --Sanctus
        unlock_packed_bools(129, 129) --Albany Hermes
        unlock_packed_bools(135, 137) --Vapid Clique, Buzzard Attack Chopper, Insurgent Pick-Up
        unlock_packed_bools(3593, 3599) --'Statue Of Happiness' T-shirt, 'Pisswasser' Beer Hat, 'Benedict' Beer Hat, 'J Lager' Beer Hat, 'Patriot' Beer Hat, 'Blarneys' Beer Hat, 'Supa Wet' Beer Hat
        unlock_packed_bools(3604, 3605) --Liberator, Sovereign
        unlock_packed_bools(3608, 3609) --'Elitas' T-shirt, High Flyer Parachute Bag
        unlock_packed_bools(3616, 3616) --Please Stop Me Mask
        unlock_packed_bools(3750, 3750) --Stocking
        unlock_packed_bools(3765, 3769) --The Fleeca Job, The Prison Break, The Humane Labs Raid, Series A Funding, The Pacific Standard Job (Elite Challenges)
        unlock_packed_bools(3770, 3781) --'Death Defying' T-shirt, 'For Hire' T-shirt, 'Gimme That' T-shirt, 'Asshole' T-shirt, 'Can't Touch This' T-shirt, 'Decorated' T-shirt, 'Psycho Killer' T-shirt, 'One Man Army' T-shirt, 'Shot Caller' T-shirt, 'Showroom' T-shirt, 'Elite Challenge' T-Shirt, 'Elite Lousy' T-Shirt
        unlock_packed_bools(3783, 3802) --Fake Dix White T-Shirt, Fake Dix Gold T-Shirt, Fake Didier Sachs T-Shirt, Fake Enema T-Shirt, Fake Le Chien No2 T-Shirt, Fake Le Chien Crew T-Shirt, Fake Santo Capra T-Shirt, Fake Vapid T-Shirt, Fake Perseus T-Shirt, Fake Sessanta Nove T-Shirt, 'Vinewood Zombie' T-shirt, 'Meltdown' T-shirt, 'I Married My Dad' T-shirt, 'Die Already 4' T-shirt, 'The Shoulder Of Orion II' T-shirt, 'Nelson In Naples' T-shirt, 'The Many Wives of Alfredo Smith' T-shirt, 'An American Divorce' T-shirt, 'The Loneliest Robot' T-shirt, 'Capolavoro' T-shirt
        unlock_packed_bools(4247, 4269) --'Magnetics Script' Hat, 'Magnetics Block' Hat, 'Low Santos' Hat, 'Boars' Hat, 'Benny's' Hat, 'Westside' Hat, 'Eastside' Hat, 'Strawberry' Hat, 'S.A.' Hat, 'Davis' Hat, 'Vinewood Zombie' T-shirt, 'Knife After Dark' T-shirt, 'The Simian' T-shirt, 'Zombie Liberals In The Midwest' T-shirt, 'Twilight Knife' T-shirt, 'Butchery and Other Hobbies' T-shirt, 'Cheerleader Massacre 3' T-shirt, 'Cannibal Clown' T-shirt, 'Hot Serial Killer Stepmom' T-shirt, 'Splatter And Shot' T-shirt, 'Meathook For Mommy' T-shirt, 'Psycho Swingers' T-shirt, 'Vampires On The Beach' T-shirt
        unlock_packed_bools(4300, 4327) --Brown Corpse Bride Bobblehead, White Corpse Bride Bobblehead, Pink Corpse Bride Bobblehead, White Mask Slasher Bobblehead, Red Mask Slasher Bobblehead, Yellow Mask Slasher Bobblehead, Blue Zombie Bobblehead, Green Zombie Bobblehead, Pale Zombie Bobblehead, Possessed Urchin Bobblehead, Demonic Urchin Bobblehead, Gruesome Urchin Bobblehead, Tuxedo Frank Bobblehead, Purple Suit Frank Bobblehead, Stripped Suit Frank Bobblehead, Black Mummy Bobblehead, White Mummy Bobblehead, Brown Mummy Bobblehead, Pale Werewolf Bobblehead, Dark Werewolf Bobblehead, Gray Werewolf Bobblehead, Fleshy Vampire Bobblehead, Bloody Vampire Bobblehead, B&W Vampire Bobblehead, Halloween Loop 1, Halloween Loop 2, Franken Stange, Lurcher
        unlock_packed_bools(4333, 4335) --Naughty Cap, Nice Cap, Abominable Snowman
        unlock_packed_bools(7467, 7495) --'Accountant' T-shirt, 'Bahama Mamas' T-shirt, 'Drone' T-shirt, 'Grotti' T-shirt, 'Golf' T-shirt, 'Maisonette' T-shirt, 'Manopause' T-shirt, 'Marlowe' T-shirt, 'Meltdown' T-shirt, 'Pacific Bluffs' T-shirt, 'Prolaps' T-shirt, 'Tennis' T-shirt, 'Toe Shoes' T-shirt, 'Crest' T-shirt, 'Vanilla Unicorn' T-shirt, Pastel Blue Pajamas, Pastel Yellow Pajamas, Pastel Pink Pajamas, Pastel Green Pajamas, Vibrant Check Pajamas, Blue Check Pajamas, Red Swirl Motif Pajamas, White Graphic Pajamas, Blue Swirl Pajamas, Yellow Swirl Pajamas, Red Swirl Pajamas, Navy Pinstripe Pajamas, Bold Pinstripe Pajamas, Orange Pinstripe Pajamas
        unlock_packed_bools(7515, 7528) --Pastel Blue Smoking Jacket, Pastel Yellow Smoking Jacket, Pastel Pink Smoking Jacket, Pastel Green Smoking Jacket, Vibrant Check Smoking Jacket, Blue Check Smoking Jacket, Red Swirl Motif Smoking Jacket, White Graphic Smoking Jacket, Blue Swirl Smoking Jacket, Yellow Swirl Smoking Jacket, Red Swirl Smoking Jacket, Navy Pinstripe Smoking Jacket, Bold Pinstripe Smoking Jacket, Orange Pinstripe Smoking Jacket
        unlock_packed_bools(7551, 7551) --DCTL T-Shirt
        unlock_packed_bools(7595, 7601) --White Jock Cranley Suit, Red Jock Cranley Suit, Blue Jock Cranley Suit, Black Jock Cranley Suit, Pink Jock Cranley Suit, Gold Jock Cranley Suit, Silver Jock Cranley Suit
        unlock_packed_bools(9362, 9385) --Western Brand White T-Shirt, Western Brand Black T-Shirt, Western Logo White T-Shirt, Western Logo Black T-Shirt, Steel Horse Solid Logo T-Shirt, Steel Horse Logo T-Shirt, Steel Horse Brand White T-Shirt, Steel Horse Brand Black T-Shirt, Nagasaki White T-Shirt, Nagasaki White and Red T-Shirt, Nagasaki Black T-Shirt, Purple Helmets Black T-Shirt, Principe Black T-Shirt, Black Steel Horse Hoodie, Steel Horse Brand White T-Shirt, Western Black Hoodie, Western Logo White T-Shirt, Nagasaki White Hoodie, Nagasaki White and Red Hoodie, Nagasaki Black Hoodie, Purple Helmets Black Hoodie, Principe Logo, Crosswalk T-Shirt, R* Crosswalk T-Shirt
        unlock_packed_bools(9426, 9440) --Base5 T-Shirt, Bitch'n' Dog Food T-Shirt, BOBO T-Shirt, Bounce FM T-Shirt, Crocs Bar T-Shirt, Emotion 98.3 T-Shirt, Fever 105 T-Shirt, Flash T-Shirt, Homies Sharp T-Shirt, K-DST T-Shirt, KJAH Radio T-Shirt, K-ROSE T-Shirt, Victory Fist T-Shirt, Vinyl Countdown T-Shirt, Vivisection T-Shirt
        unlock_packed_bools(9443, 9443) --Unicorn
        unlock_packed_bools(9461, 9481) --Ballistic Equipment, LS UR T-Shirt, Non-Stop-Pop FM T-Shirt, Radio Los Santos T-Shirt, Los Santos Rock Radio T-Shirt, Blonded Los Santos 97.8 FM T-Shirt, West Coast Talk Radio T-Shirt, Radio Mirror Park T-Shirt, Rebel Radio T-Shirt, Channel X T-Shirt, Vinewood Boulevard Radio T-Shirt, FlyLo FM T-Shirt, Space 103.2 T-Shirt, West Coast Classics T-Shirt, East Los FM T-Shirt, The Lab T-Shirt, The Lowdown 91.1 T-Shirt, WorldWide FM T-Shirt, Soulwax FM T-Shirt, Blue Ark T-Shirt, Blaine County Radio T-Shirt
        unlock_packed_bools(15381, 15382) --APC SAM Battery, Ballistic Equipment
        unlock_packed_bools(15388, 15423) --Black Ammu-Nation Cap, Black Ammu-Nation Hoodie, Black Ammu-Nation T-Shirt, Black Coil Cap, Black Coil T-Shirt, Black Hawk & Little Hoodie, Black Hawk & Little Logo T-Shirt, Black Hawk & Little T-Shirt, Black Shrewsbury Hoodie, Black Vom Feuer Cap, Black Warstock Hoodie, Green Vom Feuer T-Shirt, Red Hawk & Little Cap, Warstock Cap, White Ammu-Nation T-Shirt, White Coil Hoodie, White Coil T-Shirt, White Hawk & Little Hoodie, White Hawk & Little T-Shirt, White Shrewsbury T-Shirt, White Shrewsbury Cap, White Shrewsbury Hoodie, White Shrewsbury Logo T-Shirt, White Vom Feuer Cap, White Vom Feuer Hoodie, Wine Coil Cap, Yellow Vom Feuer Logo T-Shirt, Yellow Vom Feuer T-Shirt, Yellow Warstock T-Shirt, Blue R* Class of '98, Red R* Class of '98, Noise Rockstar Logo T-Shirt, Noise T-Shirt, Razor T-Shirt, Black Rockstar Camo, White Rockstar Camo
        unlock_packed_bools(15425, 15439) --Knuckleduster Pocket T-Shirt, Rockstar Logo Blacked Out T-Shirt, Rockstar Logo White Out T-Shirt, Half-track 20mm Quad Autocannon, Weaponized Tampa Dual Remote Minigun, Weaponized Tampa Rear-Firing Mortar, Weaponized Tampa Front Missile Launchers, Dune FAV 40mm Grenade Launcher, Dune FAV 7.62mm Minigun, Insurgent Pick-Up Custom .50 Cal Minigun, Insurgent Pick-Up Custom Heavy Armor Plating, Technical Custom 7.62mm Minigun, Technical Custom Ram-bar, Technical Custom Brute-bar, Technical Custom Heavy Chassis Armor
        unlock_packed_bools(15447, 15474) --Oppressor Missiles, Fractal Livery Set, Digital Livery Set, Geometric Livery Set, Nature Reserve Livery, Naval Battle Livery, Anti-Aircraft Trailer Dual 20mm Flak, Anti-Aircraft Trailer Homing Missile Battery, Mobile Operations Center Rear Turrets, Incendiary Rounds, Hollow Point Rounds, Armor Piercing Rounds, Full Metal Jacket Rounds, Explosive Rounds, Pistol Mk II Mounted Scope, Pistol Mk II Compensator, SMG Mk II Holographic Sight, SMG Mk II Heavy Barrel, Heavy Sniper Mk II Night Vision Scope, Heavy Sniper Mk II Thermal Scope, Heavy Sniper Mk II Heavy Barrel, Combat MG Mk II Holographic Sight, Combat MG Mk II Heavy Barrel, Assault Rifle Mk II Holographic Sight, Assault Rifle Mk II Heavy Barrel, Carbine Rifle Mk II Holographic Sight, Carbine Rifle Mk II Heavy Barrel, Proximity Mines
        unlock_packed_bools(15491, 15499) --Weaponized Tampa Heavy Chassis Armor, Brushstroke Camo Mk II Weapon Livery, Skull Mk II Weapon Livery, Sessanta Nove Mk II Weapon Livery, Perseus Mk II Weapon Livery, Leopard Mk II Weapon Livery, Zebra Mk II Weapon Livery, Geometric Mk II Weapon Livery, Boom! Mk II Weapon Livery
        unlock_packed_bools(15552, 15560) --Bronze Greatest Dancer Trophy, Bronze Number One Nightclub Trophy, Bronze Battler Trophy, Silver Greatest Dancer Trophy, Silver Number One Nightclub Trophy, Silver Battler Trophy, Gold Greatest Dancer Trophy, Gold Number One Nightclub Trophy, Gold Battler Trophy
        unlock_packed_bools(18099, 18099) --The Forest
        unlock_packed_bools(18116, 18118) --The Data Breaches, The Bogdan Problem, The Doomsday Scenario (Elite Challenges)
        unlock_packed_bools(18121, 18125) --Green Wireframe Bodysuit, Orange Wireframe Bodysuit, Blue Wireframe Bodysuit, Pink Wireframe Bodysuit, Yellow Wireframe Bodysuit
        unlock_packed_bools(18134, 18137) --Hideous Krampus Mask, Fearsome Krampus Mask, Odious Krampus Mask, Heinous Krampus Mask
        unlock_packed_bools(22124, 22132) --Maisonette Los Santos T-Shirt, Studio Los Santos T-Shirt, Galaxy T-Shirt, Gefängnis T-Shirt, Omega T-Shirt, Technologie T-Shirt, Paradise T-Shirt, The Palace T-Shirt, Tony's Fun House T-Shirt
        unlock_packed_bools(22137, 22139) --Nightclub Hotspot Trophy
        unlock_packed_bools(24963, 25000) --Apocalypse Cerberus, Future Shock Cerberus, Apocalypse Brutus, Nightmare Cerberus, Apocalypse ZR380, Future Shock Brutus, Impaler, Bolt Burger Hunger T-Shirt, Apocalypse Sasquatch - Livery set, Rat-Truck, Glendale, Slamvan, Dominator, Issi Classic, Spacesuit Alien T-Shirt set, Gargoyle, Future Shock Deathbike - Light Armor w/ Shield, Blue Lights, Electric Blue Lights, Mint Green Lights, Lime Green Lights, Yellow Lights, Golden Shower Lights, Orange Lights, Red Lights, Pony Pink Lights, Hot Pink Lights, Purple Lights, Blacklight Lights, Taxi Custom, Dozer, Clown Van, Trashmaster, Barracks Semi, Mixer, Space Docker, Tractor, Nebula Bodysuit set
        unlock_packed_bools(25002, 25002) --Up-n-Atomizer
        unlock_packed_bools(25005, 25006) --Epsilon Robes, Kifflom T-Shirt
        unlock_packed_bools(25008, 25009) --The Rookie
        unlock_packed_bools(25018, 25099) --Black & White Bones Festive Sweater, Slasher Festive Sweater, Black & Red Bones Festive Sweater, Red Bones Festive Sweater, Burger Shot Festive Sweater, Red Bleeder Festive Sweater, Blue Bleeder Festive Sweater, Blue Cluckin' Festive Sweater, Green Cluckin' Festive Sweater, Blue Slaying Festive Sweater, Green Slaying Festive Sweater, Hail Santa Festive Sweater, Merry Sprunkmas Festive Sweater, Ice Cold Sprunk Festive Sweater, Albany T-Shirt, Albany Vintage T-Shirt, Annis T-Shirt, Benefactor T-Shirt, BF T-Shirt, Bollokan T-Shirt, Bravado T-Shirt, Brute T-Shirt, Buckingham T-Shirt, Canis T-Shirt, Chariot T-Shirt, Cheval T-Shirt, Classique T-Shirt, Coil T-Shirt, Declasse T-Shirt, Dewbauchee T-Shirt, Dilettante T-Shirt, Dinka T-Shirt, Dundreary T-Shirt, Emperor T-Shirt, Enus T-Shirt, Fathom T-Shirt, Gallivanter T-Shirt, Grotti T-Shirt, Hijak T-Shirt, HVY T-Shirt, Imponte T-Shirt, Invetero T-Shirt, Jobuilt T-Shirt, Karin T-Shirt, Lampadati T-Shirt, Maibatsu T-Shirt, Mamba T-Shirt, Mammoth T-Shirt, MTL T-Shirt, Obey T-Shirt, Ocelot T-Shirt, Overflod T-Shirt, Pegassi T-Shirt, Pfister T-Shirt, Progen T-Shirt, Rune T-Shirt, Schyster T-Shirt, Shitzu T-Shirt, Truffade T-Shirt, Ubermacht T-Shirt, Vapid T-Shirt, Vulcar T-Shirt, Weeny T-Shirt, Willard T-Shirt, Albany Nostalgia T-Shirt, Albany USA T-Shirt, Albany Dealership T-Shirt, Annis JPN T-Shirt, BF Surfer T-Shirt, Bollokan Prairie T-Shirt, Bravado Stylized T-Shirt, Brute Impregnable T-Shirt, Brute Heavy Duty T-Shirt, Buckingham Luxe T-Shirt, Canis USA T-Shirt, Canis American Legend T-Shirt, Canis Wolf T-Shirt, Cheval Marshall T-Shirt, Coil USA T-Shirt, Coil Raiden T-Shirt, Declasse Logo T-Shirt, Declasse Girl T-Shirt
        unlock_packed_bools(25101, 25109) --Nightmare Brutus, Apocalypse Scarab, Future Shock Scarab, Nightmare Scarab, Future Shock ZR380, Nightmare ZR380, Apocalypse Imperator, Future Shock Imperator, Nightmare Imperator
        unlock_packed_bools(25111, 25134) --Future Shock Deathbike - Reinforced Armor w/ Shield, Future Shock Deathbike - Heavy Armor w/ Shield, Future Shock Sasquatch - Livery set, Nightmare Sasquatch - Livery set, Apocalypse Cerberus - Livery set, Future Shock Cerberus - Livery set, All variants of Sasquatch - Light Armor, All variants of Sasquatch - Reinforced Armor, All variants of Sasquatch - Heavy Armor, Nightmare Cerberus - Livery set, Apocalypse Bruiser - Livery set, Future Shock Bruiser - Livery set, Nightmare Bruiser - Livery set, Apocalypse Slamvan - Livery set, All variants of Cerberus - Body Spikes, Future Shock Slamvan - Livery set, All variants of Cerberus - Light Armor, All variants of Cerberus - Reinforced Armor, All variants of Cerberus - Heavy Armor, Nightmare Slamvan - Livery set, Apocalypse Brutus - Livery set, Future Shock Brutus - Livery set, Nightmare Brutus - Livery set, Apocalypse Scarab - Livery set
        unlock_packed_bools(25136, 25179) --All variants of Bruiser - Body Spikes, Future Shock Scarab - Livery set, Nightmare Scarab - Livery set, All variants of Bruiser - Light Armor, All variants of Bruiser - Reinforced Armor, All variants of Bruiser - Heavy Armor, Apocalypse Dominator - Livery set, Future Shock Dominator - Livery set, Nightmare Dominator - Livery set, Apocalypse Impaler - Livery set, Future Shock Impaler - Livery set, Nightmare Impaler - Livery set, All variants of Slamvan - Body Spikes, Apocalypse Imperator - Livery set, Future Shock Imperator - Livery set, All variants of Slamvan - Light Armor, All variants of Slamvan - Reinforced Armor, All variants of Slamvan - Heavy Armor, Nightmare Imperator - Livery set, Apocalypse ZR380 - Livery set, Future Shock ZR380 - Livery set, Nightmare ZR380 - Livery set, Apocalypse Issi - Livery set, Future Shock Issi - Livery set, All variants of Brutus - Light Armor, All variants of Brutus - Reinforced Armor, All variants of Brutus - Heavy Armor, Nightmare Issi - Livery set, Apocalypse Deathbike - Livery set, Future Shock Deathbike - Livery set, Nightmare Deathbike - Livery set, All variants of Sasquatch - Heavy Armored Front, Apocalypse Scarab - Body Spikes set, Future Shock Scarab - Body Spikes set, Nightmare Scarab - Body Spikes set, All variants of Sasquatch - Heavy Armored Hood, All variants of Sasquatch - Mohawk Exhausts, All variants of Scarab - Light Armor, All variants of Scarab - Reinforced Armor, All variants of Scarab - Heavy Armor, All variants of Sasquatch - Dual Mohawk Exhausts, Apocalypse & Nightmare Sasquatch - Rear Spears Left, Optics Headset Mask set, All variants of Dominator - Body Spikes
        unlock_packed_bools(25181, 25237) --Apocalypse & Nightmare Sasquatch - Rear Spears Right, Apocalypse & Nightmare Sasquatch - Skull Cross, All variants of Dominator - Light Armor, All variants of Dominator - Reinforced Armor, All variants of Dominator - Heavy Armor, Apocalypse & Nightmare Sasquatch - Ram Skull Cross, Apocalypse & Nightmare Sasquatch - Blonde Doll Cross, All variants of Impaler - Body Spikes, Apocalypse & Nightmare Sasquatch - Brunette Doll Cross, Apocalypse & Nightmare Cerberus - Bastioned Ram-bars, All variants of Impaler - Light Armor, All variants of Impaler - Reinforced Armor, All variants of Impaler - Heavy Armor, All variants of Cerberus - Bolstered Hood Cage, All variants of Cerberus - Reinforced Riot Hood, All variants of Cerberus - Juggernaut Hood, Apocalypse & Nightmare Cerberus - War Spearheads, All variants of Imperator - Body Spikes, Apocalypse & Nightmare Cerberus - War Spear Kit, Apocalypse & Nightmare Cerberus - Nade Spearheads, Apocalypse & Nightmare Cerberus - Nade Spear Kit, All variants of Imperator - Light Armor, All variants of Imperator - Reinforced Armor, All variants of Imperator - Heavy Armor, Apocalypse & Nightmare Cerberus - Skull Spearheads, Apocalypse & Nightmare Cerberus - Skull Spear Kit, Apocalypse & Nightmare Cerberus - Arrow Spearheads, Apocalypse & Nightmare Cerberus - Arrow Spear Kit, All variants of ZR380 - Body Spikes, Apocalypse & Nightmare Cerberus - Tridents, Apocalypse & Nightmare Cerberus - Wasteland Ritual, All variants of ZR380 - Light Armor, All variants of ZR380 - Reinforced Armor, All variants of ZR380 - Heavy Armor, Future Shock Cerberus - Panel Detail, Future Shock Cerberus - Crane Pipes, All variants of Issi - Body Spikes, Future Shock Cerberus - Hedgehog, Future Shock Cerberus - Hedgehog MK2, Future Shock Bruiser - Heavy Plated Armored Grille / Apocalypse & Nightmare Bruiser - Diamond Heavy Armor Grille, All variants of Issi - Light Armor, All variants of Issi - Reinforced Armor, All variants of Issi - Heavy Armor, All variants of Bruiser - Twin Oval Exhaust, Cluckin' Bell Mask, All variants of Bruiser - Long Triple Rear Exhausts, All variants of Bruiser - Front & Rear Triple Exhausts, All variants of Deathbike - Light Armor, All variants of Deathbike - Reinforced Armor, All variants of Deathbike - Heavy Armor, Kinetic Mines, Apocalypse Bruiser - Skull & Cross / Nightmare Bruiser - Painted Skull & Cross, Spike Mines, Slick Mines, Sticky Mines, EMP Mines, RC Bandito
        unlock_packed_bools(25244, 25400) --Robot Bodysuit set, Hero Bodysuit set, Shapes Bodysuit set, Contours Bodysuit set, Martian Bodysuit set, Reptile Bodysuit set, Galaxy Bodysuit set, Space Creature Suits, Space Cyclops Suits, Space Horror Suits, Retro Spacesuits, Astronaut Suits, Space Traveler Suits, Character Suits: Pogo Space Monkey, Character Suits: Republican Space Ranger, Death Bird Mask set, Stalker Mask set, Raider Mask set, Marauder Mask set, Paco the Taco Mask, Burger Shot Mask, Space Rangers T-Shirt set, Space Ranger Logo T-Shirt set, Phases T-Shirt set, Rocket Splash T-Shirt set, Two Moons T-Shirt set, Freedom Isn't Free T-Shirt set, Apocalyptic Raider Top set, Apocalyptic Leather Feather Top set, Apocalyptic Mercenary Vest set, Benedict Light Beer Hoodie, Taco Bomb Hoodie, Cluckin' Bell Logo Bomb Hoodie, Patriot Beer Hoodie, Pisswasser Hoodie, Burger Shot Hoodie, Corn Dog Hoodie, Donut Hoodie, Lucky Plucker Hoodie, Logger Light Hoodie, Pizza Hoodie, Fries Hoodie, Mushrooms Hoodie, Redwood Hoodie, eCola Infectious Hoodie, Cluckin' Bell Logo Hoodie, Lemons Hoodie, Tacos Hoodie, Burger Shot Pattern Sweater, Burger Shot Logo Sweater, Burger Shot Sweater, Sprunk Sweater set, Wigwam Sweater, Taco Bomb Chili Sweater, Taco Bomb Sweater set, Cluckin' Bell Logo Bomb Sweater, Blue Cluckin' Bell Sweater, Black Cluckin' Bell Sweater, eCola Sweater set, MeTV Sweater set, Heat Sweater set, Degenatron Sweater, Pisswasser Sweater set, Bolt Burger Sweater, Lucky Plucker Logo Bomb Sweater, Lucky Plucker Sweater, Burger Shot Hockey Shirt set, Cluckin' Bell Hockey Shirt set, Wigwam Hockey Shirt, Redwood Hockey Shirt, Bean Machine Hockey Shirt, Red eCola Hockey Shirt, Black eCola Hockey Shirt, Phat Chips Hockey Shirt set, Sprunk Hockey Shirt set, Sprunk Classic Hockey Shirt, Burger Shot Black T-Shirt, Burger Shot Logo T-Shirt, Cluckin' Bell Logo T-Shirt, Cluckin' Bell Black T-Shirt, Cluckin' Bell Filled Logo T-Shirt, eCola Black T-Shirt, Lucky Plucker T-Shirt, Pisswasser T-Shirt, Sprunk T-Shirt, Taco Bomb Chili T-Shirt, Taco Bomb Black T-Shirt, Up-n-Atom Hamburgers T-Shirt, Up-n-Atom Logo T-Shirt, Wigwam T-Shirt, Degenatron ROYGBIV T-Shirt, CNT T-Shirt, Qub3d T-Shirt, Righteous Slaughter T-Shirt, Space Monkey Full T-Shirt, Space Monkey Pixel T-Shirt, Space Monkey Enemy T-Shirt, Burger Shot Bleeder T-Shirt, Heat Rises T-Shirt, Space Monkey Logo T-Shirt, Space Monkey Suit T-Shirt, Space Monkey Face T-Shirt, Space Monkey Mosaic T-Shirt, Bolt Burger Logo T-Shirt, Exsorbeo 720 T-Shirt, Heat Ball Logo T-Shirt set, Heat Logo T-Shirt set, Heat Pop Art Logo T-Shirt set, MeTV Logo T-Shirt set, MeTV 90s T-Shirt set, Burger Shot Target T-Shirt, eCola Infectious T-Shirt, Up-n-Atom White T-Shirt, Jock Cranley Patriot T-Shirt, CCC TV T-Shirt, Degenatron Logo T-Shirt, eCola White T-Shirt, eCola Pass It On T-Shirt, Tw@ T-Shirt, Chain Pants set, Chain Shorts set, Leather Stitch Pants set, Raider Pants set, Light Ups Shoes set, Flaming Skull Boots set, Skull Harness Boots set, Plated Boots set, Burger Shot Food Cap set, Apocalypse Bruiser - Double Cross Ram Skull / Nightmare Bruiser - Painted Ram Skull & Cross, Burger Shot Logo Cap, Burger Shot Bullseye Cap, Cluckin' Bell Logo Cap set, Apocalypse Bruiser - Cross & Skull Large Blade Kit / Nightmare Bruiser - Painted Skull Large Blade Kit, Cluckin' Bell Logos Cap, Hotdogs Cap set, Taco Bomb Cap set, Apocalypse Bruiser - Ram Skull Nade Kit / Nightmare Bruiser - Painted Ram Skull Nade Kit, Apocalypse Bruiser - Ram Skull Medieval Kit / Nightmare Bruiser - Painted Skull Medieval Kit, Lucky Plucker Cap set, Lucky Plucker Logos Cap set, Apocalypse Bruiser - Ram Skull Medieval Madness / Nightmare Bruiser - Painted Skull Medieval Madness, Apocalypse Bruiser - Barrels & Junk, Pisswasser Cap set, Apocalypse Bruiser - Skeleton Cage, Future Shock Bruiser - Light Cover, Future Shock Bruiser - Spare Tire, Taco Canvas Hat, Burger Shot Canvas Hat, Cluckin' Bell Canvas Hat, Hotdogs Canvas Hat, Shunt Boost, Boost Upgrade 20%, Boost Upgrade 60%, Boost Upgrade 100%, Jump Upgrade 20%, Jump Upgrade 60%, Jump Upgrade 100%
        unlock_packed_bools(25405, 25405) --Festive tint (Up-n-Atomizer)
        unlock_packed_bools(25407, 25511) --Future Shock Bruiser - Crates, Nightmare Bruiser - Large Burger, Nightmare Bruiser - Large Doughnuts, Nightmare Bruiser - Large eCola Cans, All variants of Slamvan - Rear Bumper Reinforced Armor, All variants of Slamvan - Rear Bumper Heavy Armor, Apocalypse Slamvan - Basic Spears, Apocalypse Slamvan - Battle Cross, Apocalypse Slamvan - War Cross, Apocalypse Slamvan - Battle Spears, Apocalypse Slamvan - War Spears, Nightmare Slamvan - Knife Spears, Nightmare Slamvan - Fork & Knife, Apocalypse & Nightmare Brutus - Gassed Up Bar, Apocalypse & Nightmare Brutus - Roadblock, Apocalypse & Nightmare Brutus - Junk Trunk, Apocalypse & Nightmare Brutus - Fire Spitters, Apocalypse & Nightmare Brutus - Hell Chambers, Apocalypse & Nightmare Brutus - Heavy Armored Arches, Apocalypse & Nightmare Brutus - Toothy, Apocalypse & Nightmare Brutus - Armored Spares, Apocalypse & Nightmare Brutus - Armored Supplies, Apocalypse & Nightmare Brutus - Eternally Chained, Apocalypse & Nightmare Brutus - Speared, Future Shock Scarab - Primary Full Armor, All variants of Scarab - Secondary Full Armor, All variants of Scarab - Carbon Full Armor, Future Shock Scarab - Heavy Duty Cooling / Apocalypse & Nightmare Scarab - Air Filtration Vents & Long Range Equipment, Apocalypse & Nightmare Scarab - Rusty Full Armor, Apocalypse & Nightmare Scarab - Rear War Poles, Apocalypse & Nightmare Scarab - Rear Spears, Apocalypse & Nightmare Scarab - Skull Cross, Apocalypse & Nightmare Scarab - Skull Cross w/ War Poles, Apocalypse & Nightmare Scarab - Skull Cross w/ Spears, Apocalypse & Nightmare Scarab - Load'a War Poles, Apocalypse & Nightmare Scarab - Load'a Spears, Apocalypse & Nightmare Scarab - Scarab Mega Cover set, Apocalypse & Nightmare Scarab - Armored Mega Cover set, Apocalypse & Nightmare Scarab - Cage, Apocalypse & Nightmare Scarab - Plated Cage, Future Shock Scarab - Livery Armor, Future Shock Scarab - Primary Full Armor, Future Shock Scarab - Livery Full Armor, Future Shock Scarab - Carbon Full Armor, Future Shock Scarab - Matte Full Armor, Future Shock Scarab - Futuristic Panel Armor, Future Shock Scarab - Plated Livery Full Armor, All variants of Dominator - Triple Front Exhausts, All variants of Dominator - Horn Exhausts, All variants of Dominator - Triple Rear Exhausts, Apocalypse & Nightmare Dominator - Rear Pointing War Poles, Apocalypse & Nightmare Dominator - Front Facing Axes, Apocalypse & Nightmare Dominator - Front Facing Spears, Apocalypse & Nightmare Dominator - Unholy Cross, Apocalypse & Nightmare Dominator - Brutal Unholy Cross, Apocalypse & Nightmare Dominator - Bunch of War Poles, Apocalypse & Nightmare Dominator - Front Pointing War Poles, Apocalypse & Nightmare Dominator - Skull Hood, Apocalypse & Nightmare Impaler - Got Pole?, Apocalypse & Nightmare Impaler - Getting Medieval, Apocalypse & Nightmare Impaler - Wasteland Peacock, Apocalypse & Nightmare Impaler - Shish-Kebbabed, Apocalypse & Nightmare Impaler - It's A Stick Up, Apocalypse & Nightmare Impaler - The Dark Ages, Apocalypse & Nightmare Impaler - Dolly Spearton, Apocalypse & Nightmare Impaler - War Poles, All variants of Imperator - Shakotan Exhaust, Apocalypse & Nightmare Imperator - Whole Lotta Pole, Apocalypse & Nightmare Imperator - Getting Medieval, Apocalypse & Nightmare Imperator - It's A Stick Up, Apocalypse & Nightmare Imperator - Boom On A Spear, Apocalypse & Nightmare Imperator - Village Justice, Apocalypse & Nightmare Imperator - Wasteland Peacock, Apocalypse & Nightmare Imperator - Shish-Kebbabed, Apocalypse & Nightmare Imperator - Junk Pipes, Apocalypse & Nightmare Imperator - Mega Zorst, Apocalypse & Nightmare Imperator - Ride 'Em Cowboy, Apocalypse & Nightmare Imperator - Cannibal Totem, All variants of ZR380 - Side Exhausts, All variants of ZR380 - Spike Exhausts, Apocalypse & Nightmare ZR380 - Mismatch, Future Shock ZR380 - Ray Gun Exhausts, Future Shock ZR380 - Sprint Car Wing, Future Shock ZR380 - Armor Plating Mk. 3, Future Shock ZR380 - Rear Phantom Covers, All variants of Issi - Heavy Duty Ram Bar, Apocalypse & Nightmare Issi - Spear, Apocalypse & Nightmare Issi - Left War Poles, Apocalypse & Nightmare Issi - Dolly Spearton, Apocalypse & Nightmare Issi - Right War Poles, Apocalypse & Nightmare Issi - Skull Cross, Apocalypse & Nightmare Issi - Dolly Spearton Set, Apocalypse & Nightmare Issi - Dual War Poles, Apocalypse & Nightmare Issi - Dolly Spearton W/ War Pole, Apocalypse & Nightmare Issi - Skull Cross W/ Spear, Apocalypse & Nightmare Issi - Skull Cross W/ War Pole, Apocalypse & Nightmare Issi - Skull Cross W/ Dolly, Apocalypse & Nightmare Issi - Left Spear, Apocalypse & Nightmare Issi - Right Spear, Apocalypse & Nightmare Issi - Left Skull Axe, Apocalypse & Nightmare Issi - Right Axe, Apocalypse & Nightmare Issi - Dual Spears, Apocalypse & Nightmare Issi - Spear & Axe, Apocalypse & Nightmare Issi - Axe & Spear, Apocalypse & Nightmare Issi - Dual Axes
        unlock_packed_bools(25516, 25516) --RC Tank
        unlock_packed_bools(25520, 25521) --Metal Detector
        unlock_packed_bools(26811, 26964) --Action Figures, Playing Cards
        unlock_packed_bools(26968, 27088) --Impotent Rage Outfit, High Roller, Tiger Scuba, Sprunk Racing Suit, Neon Bodysuit, Extreme Strike Vest, The Chimera (Outfit), White Racing Suit, The Reconnaissance (Outfit), Blue Jock Cranley Suit, Italian Biker Suit, The Hazard (Outfit), Mid Strike Vest, Splinter Gorka Suit, The Gunfighter (Outfit), Black Plate Carrier*, Hunter Leather Fur Jacket, Chamois Plate Carrier*, Black Heavy Utility Vest, The Puff (Outfit), Ox Blood Patched Cut, Color Geo PRB Leather, Blue Tactical Blouson, Orange Big Cat*, Color Geo Sweater, Vivid Gradient Puffer, Color Diamond Sweater, Classic SN Print Sweater, Power Motocross, The Buzz (Outfit), Pegassi Racing Jacket, Woodland Camo Parka, Le Chien Print Sweater, The Pincer (Outfit), Vibrant Gradient Shortsleeve, Urban Gradient Shortsleeve, White Chevron SC Track, Slalom Motocross, Blue Savanna Shortsleeve, Green Didier Sachs Field, Candy Motocross, Tutti Frutti Pattern Sweater, The Vespucci (Outfit), Contrast Camo Service Shirt, Tropical Pattern Sweater, Black Service Shirt, SecuroServ 1 (Outfit), Black Sports Blagueurs Hoodie, Gold Shiny T-Shirt, OJ Shortsleeve, Primary Squash Hoodie, Purple Camo Bigness Hoodie, Bold Abstract Bigness Hoodie, Pink SN Hoodie, Red Boating Blazer, Multicolor Leaves Shortsleeve, Neon Leaves Güffy Hoodie, Black Dotted Shortsleeve, Drive Motocross, Red Patterned Shortsleeve, Steel Horse Satin Jacket, Orange Squash Hoodie, Regal Loose Shirt, White Güffy Hoodie, Stealth Utility Vest, Red Floral Sweater, Black & Red Bigness Jersey, The Slick (Outfit), Splat Squash Sweater, Tan Hooded Jacket, Brushstroke Combat Shirt, White & Red Bigness Jersey, Black Combat Top, Lime Longline Hoodie, Red Bold Check, Bold Camo Sand Castle Sweater, Red Combat Shirt, Red Mist XI Dark, Cyan Manor Sweater, Flecktarn Sleeveless Shirt, Forest Camo Battle Vest, LS Jardineros Dark, Liberty Cocks Dark, Angelica T-Shirt, Hinterland Ship Sweater, Wine Sleeveless Shirt, Cobble Sleeveless, Black Dense Logo Sweater*, White Flying Bravo Hoodie, Cat T-Shirt*, Color Geo T-Shirt, Bold Abstract Bigness T-Shirt, Neon Leaves Güffy T-Shirt, Black Baggy Hoodie, White Manor Zigzag T-Shirt, Double P Baseball Shirt, Aqua Camo Rolled Tee, Dark Woodland T-Shirt, White Bigness T-Shirt, Black No Retreat Tank, White Benny's T-Shirt, Red Smuggler Tank, Angels of Death Vivid Tee, Blue Hit & Run Tank, Waves T-Shirt*, Beige Turtleneck, Hinterland Nugget T-Shirt, Mustard Güffy Tank, Nagasaki White and Red Hoodie, Grotti Tee, Western Logo Black Tee, Butchery and other Hobbies, Black Ammu-Nation Hoodie*, Fake Santo Capra T-Shirt, Death Defying T-Shirt, Bahama Mamas, Showroom T-Shirt, LS UR Tee, J Lager Beer Hat, Unicorn, Gingerbread
        unlock_packed_bools(27109, 27115) --The Diamond Classic T-Shirt, The Diamond Vintage T-Shirt, Red The Diamond LS T-Shirt, Blue The Diamond Resort LS T-Shirt, Red The Diamond Resort T-Shirt, Blue D Casino T-Shirt, Red The Diamond Classic T-Shirt
        unlock_packed_bools(27120, 27145) --White The Diamond Hoodie, Black The Diamond Hoodie, Ash The Diamond Hoodie, Gray The Diamond Hoodie, Red The Diamond Hoodie, Orange The Diamond Hoodie, Blue The Diamond Hoodie, Black The Diamond Silk Robe, White The Diamond Cap, Black The Diamond Cap, White LS Diamond Cap, Black LS Diamond Cap, Red The Diamond Cap, Orange The Diamond Cap, Blue LS Diamond Cap, Green The Diamond Cap, Orange LS Diamond Cap, Purple The Diamond Cap, Pink LS Diamond Cap, White The Diamond LS Tee*, Black The Diamond LS Tee, Black The Diamond Resort LS Tee, White The Diamond Resort Tee, Black The Diamond Resort Tee, Black LS Diamond Tee, Black D Casino Tee
        unlock_packed_bools(27147, 27182) --I've Been Shamed Tee, Blue I've Been Shamed Tee, Fame or Shame Stars Tee, Red Fame or Shame Stars Tee, No Talent Required Tee, Red No Talent Required Tee, Team Tracey Tee, Blue Team Tracey Tee, Monkey Business Tee, Red Monkey Business Tee, Fame or Shame Logo Tee, Blue Fame or Shame Logo Tee, Stars Fame or Shame Robe, Black Fame or Shame Robe, Red Stars Fame or Shame Robe, Red Fame or Shame Robe, White Fame or Shame Robe, Black Fame or Shame Shades, Red Fame or Shame Shades, Blue Fame or Shame Shades, White Fame or Shame Shades, Gold Fame or Shame Mics, Silver Fame or Shame Mics, Red Fame or Shame Kronos, Green Fame or Shame Kronos, Blue Fame or Shame Kronos, Black Fame or Shame Kronos, America Loves You Tee, Blue America Loves You Tee, Fame or Shame No Evil Tee, You're So Original! Tee, Red You're So Original! Tee, Oh No He Didn't! Tee, Blue Oh No He Didn't! Tee, You're Awful Tee, Red You're Awful Tee
        unlock_packed_bools(27184, 27213) --Invade and Persuade Enemies T-Shirt, Invade and Persuade Oil T-Shirt, Invade and Persuade Tour T-Shirt, Invade and Persuade Green T-Shirt, Invade and Persuade RON T-Shirt, Street Crimes Hoods T-Shirt, Street Crimes Punks T-Shirt, Street Crimes Yokels T-Shirt, Street Crimes Bikers T-Shirt, Street Crimes Action T-Shirt, Street Crimes Boxart T-Shirt, Street Crimes Logo T-Shirt, Claim What's Yours T-Shirt, Choose Your Side T-Shirt, Street Crimes Color Gangs T-Shirt, Street Crimes Red Gangs T-Shirt, White Street Crimes Icons T-Shirt, Black Street Crimes Icons T-Shirt, Invade and Persuade Logo T-Shirt, Mission I T-Shirt, Mission II T-Shirt, Mission IV T-Shirt, Mission III T-Shirt, Invade and Persuade Boxart T-Shirt, Invade and Persuade Invader T-Shirt, Invade and Persuade Suck T-Shirt, Invade and Persuade Jets T-Shirt, Invade and Persuade Gold T-Shirt, Invade and Persuade Hero T-Shirt, Invade and Persuade Barrels T-Shirt
        unlock_packed_bools(27247, 27247) --Madam Nazar (Arcade Trophy)
        unlock_packed_bools(28099, 28148) --Signal Jammers
        unlock_packed_bools(28158, 28158) --Navy Revolver
        unlock_packed_bools(28171, 28191) --Green Reindeer Lights Bodysuit, Ho-Ho-Ho Sweater, Traditional Festive Lights Bodysuit, Yellow Reindeer Lights Bodysuit, Neon Festive Lights Bodysuit, Plushie Grindy T-Shirt, Plushie Saki T-Shirt , Plushie Humpy T-Shirt, Plushie Smoker T-Shirt, Plushie Poopie T-Shirt, Plushie Muffy T-Shirt, Plushie Wasabi Kitty T-Shirt, Plushie Princess T-Shirt, Plushie Master T-Shirt, Pixel Pete's T-Shirt, Wonderama T-Shirt, Warehouse T-Shirt, Eight Bit T-Shirt, Insert Coin T-Shirt, Videogeddon T-Shirt, Nazar Speaks T-Shirt
        unlock_packed_bools(28194, 28196) --Silent & Sneaky, The Big Con, Aggressive (Elite Challenges)
        unlock_packed_bools(28197, 28222) --Badlands Revenge II Gunshot T-Shirt, Badlands Revenge II Eagle T-Shirt, Badlands Revenge II Pixtro T-Shirt, Badlands Revenge II Romance T-Shirt, Badlands Revenge II Bear T-Shirt, Badlands Revenge II Help Me T-Shirt & Badlands Revenge II Retro T-Shirt, Race and Chase Decor T-Shirt, Race and Chase Vehicles T-Shirt, Race and Chase Finish T-Shirt, Crotch Rockets T-Shirt, Street Legal T-Shirt & Get Truckin' T-Shirt, Wizard's Ruin Loot T-Shirt, The Wizard's Ruin Rescue T-Shirt, The Wizard's Ruin Vow T-Shirt, Thog Mighty Sword T-Shirt, Thog T-Shirt & Thog Bod T-Shirt, Space Monkey 3 T-Shirt, Space Monkey Space Crafts T-Shirt, Space Monkey Pixel T-Shirt, Space Monkey Boss Fights T-Shirt, Radioactive Space Monkey T-Shirt & Space Monkey Art T-Shirt, Monkey's Paradise T-Shirt, Retro Defender of the Faith T-Shirt, Penetrator T-Shirt, Defender of the Faith T-Shirt, Love Professor His T-Shirt & Love Professor Hers T-Shirt, Love Professor Nemesis T-Shirt, Love Professor Friendzoned T-Shirt, Love Professor Secrets T-Shirt & Love Professor Score T-Shirt, Shiny Wasabi Kitty Claw T-Shirt, Pixtro T-Shirt, Akedo T-Shirt & Arcade Trophy T-Shirt
        unlock_packed_bools(28224, 28227) --White Dog With Cone T-Shirt, Yellow Dog With Cone T-Shirt, Dog With Cone Slip-Ons & Dog With Cone Chain, Refuse Collectors Outfit, Undertakers Outfit, Valet Outfit
        unlock_packed_bools(28229, 28249) --Prison Guards, FIB Suits, Black Scuba, Gruppe Sechs Gear, Bugstars Uniforms, Maintenance Outfit, Yung Ancestors Outfit, Firefighter Outfit, Orderly Armor Outfit, Upscale Armor Outfit, Evening Armor Outfit, Reinforced: Padded Combat Outfit, Reinforced: Bulk Combat Outfit, Reinforced: Compact Combat Outfit, Balaclava Crook Outfit, Classic Crook Outfit, High-end Crook Outfit, Infiltration: Upgraded Tech Outfit, Infiltration: Advanced Tech Outfit, Infiltration: Modernized Tech Outfit, Degenatron Glitch T-Shirt
        unlock_packed_bools(28254, 28255) --Get Metal T-Shirt / Axe of Fury T-Shirt, 11 11 T-Shirt / Axe of Fury T-Shirt
        unlock_packed_bools(30230, 30251) --Movie Props, Space Interloper Outfit
        unlock_packed_bools(30254, 30295) --King Of QUB3D T-Shirt, Qubism T-Shirt, God Of QUB3D T-Shirt, QUB3D Boxart T-Shirt, Qub3d Qub3s T-Shirt, Yacht Captain Outfit, BCTR Aged T-Shirt, BCTR T-Shirt, Cultstoppers Aged T-Shirt, Cultstoppers T-Shirt, Daily Globe Aged T-Shirt, Daily Globe T-Shirt, Eyefind Aged T-Shirt, Eyefind T-Shirt, Facade Aged T-Shirt, Facade T-Shirt, Fruit Aged T-Shirt, Fruit T-Shirt, LSHH Aged T-Shirt, LSHH T-Shirt, MyRoom Aged T-Shirt, MyRoom T-Shirt, Rebel Aged T-Shirt, Rebel T-Shirt, Six Figure Aged T-Shirt, Six Figure T-Shirt, Trash Or Treasure Aged T-Shirt, Trash Or Treasure T-Shirt, Tw@ Logo Aged T-Shirt, Tw@ Logo T-Shirt, Vapers Den Aged T-Shirt, Vapers Den T-Shirt, WingIt Aged T-Shirt, WingIt T-Shirt, ZiT Aged T-Shirt, ZiT T-Shirt, Green Dot Tech Mask, Orange Dot Tech Mask, Blue Dot Tech Mask, Pink Dot Tech Mask, Lemon Sports Track Pants, Lemon Sports Track Top
        unlock_packed_bools(30524, 30557) --Grotti Aged T-Shirt, Lampadati Aged T-Shirt, Ocelot Aged T-Shirt, Overflod Aged T-Shirt, Pegassi Aged T-Shirt, Pfister Aged T-Shirt, Vapid Aged T-Shirt, Weeny Aged T-Shirt, Blue The Diamond Resort LS Aged T-Shirt, KJAH Radio Aged T-Shirt, K-Rose Aged T-Shirt, Emotion 98.3 Aged T-Shirt, KDST Aged T-Shirt, Bounce FM Aged T-Shirt, Fake Vapid Aged T-Shirt, I Married My Dad Aged T-Shirt, ToeShoes Aged T-Shirt, Vanilla Unicorn Aged T-Shirt, Steel Horse Solid Logo Aged T-Shirt, Black Western Logo Aged T-Shirt, White Nagasaki Aged T-Shirt, Black Principe Aged T-Shirt, Noise Aged T-Shirt, Noise Rockstar Logo Aged T-Shirt, Razor Aged T-Shirt, White Rockstar Camo Aged T-Shirt, LSUR Aged T-Shirt, Rebel Radio Aged T-Shirt, Channel X Aged T-Shirt, Albany Vintage Aged T-Shirt, Benefactor Aged T-Shirt, Bravado Aged T-Shirt, Declasse Aged T-Shirt, Dinka Aged T-Shirt
        unlock_packed_bools(30563, 30693) --Panther Varsity Jacket Closed, Panther Tour Jacket, Broker Prolaps Basketball Top, Panic Prolaps Basketball Top, Gussét Frog T-Shirt, Warped Still Slipping T-Shirt, Yellow Still Slipping T-Shirt, Black Rockstar T-Shirt, Black Exsorbeo 720 Logo T-Shirt, Manor PRBG T-Shirt, Manor Tie-dye T-Shirt, Open Wheel Sponsor T-Shirt, Rockstar Yellow Pattern T-Shirt, Rockstar Gray Pattern T-Shirt, Rockstar Rolling T-Shirt, Santo Capra Patterns Sweater, Rockstar Studio Colors Sweater, Bigness Jackal Sweater, Bigness Tie-dye Sweater, Bigness Faces Sweater, Broker Prolaps Basketball Shorts, Panic Prolaps Basketball Shorts, Exsorbeo 720 Sports Shorts, Bigness Tie-dye Sports Pants, Enus Yeti Forwards Cap, 720 Forwards Cap, Exsorbeo 720 Forwards Cap, Güffy Double Logo Forwards Cap, Rockstar Forwards Cap, Blue Bangles (L), Red Bangles (L), Pink Bangles (L), Yellow Bangles (L), Orange Bangles (L), Green Bangles (L), Red & Blue Bangles (L), Yellow & Orange Bangles (L), Green & Pink Bangles (L), Rainbow Bangles (L), Sunset Bangles (L), Tropical Bangles (L), Blue & Pink Glow Shades, Red Glow Shades, Orange Glow Shades, Yellow Glow Shades, Green Glow Shades, Blue Glow Shades, Pink Glow Shades, Blue & Magenta Glow Shades, Purple & Yellow Glow Shades, Blue & Yellow Glow Shades, Pink & Yellow Glow Shades, Red & Yellow Glow Shades, Blue Glow Necklace, Red Glow Necklace, Pink Glow Necklace, Yellow Glow Necklace, Orange Glow Necklace, Green Glow Necklace, Festival Glow Necklace, Carnival Glow Necklace, Tropical Glow Necklace, Hot Glow Necklace, Neon Glow Necklace, Party Glow Necklace, Sunset Glow Necklace, Radiant Glow Necklace, Sunrise Glow Necklace, Session Glow Necklace, Combat Shotgun, Perico Pistol, White Keinemusik T-Shirt, Blue Keinemusik T-Shirt, Moodymann T-Shirt, Palms Trax T-Shirt, Midnight Tint Oversize Shades, Sunset Tint Oversize Shades, Black Tint Oversize Shades, Blue Tint Oversize Shades, Gold Tint Oversize Shades, Green Tint Oversize Shades, Orange Tint Oversize Shades, Red Tint Oversize Shades, Pink Tint Oversize Shades, Yellow Tint Oversize Shades, Lemon Tint Oversize Shades, Gold Rimmed Oversize Shades, White Checked Round Shades, Pink Checked Round Shades, Yellow Checked Round Shades, Red Checked Round Shades, White Round Shades, Black Round Shades, Pink Tinted Round Shades, Blue Tinted Round Shades, Green Checked Round Shades, Blue Checked Round Shades, Orange Checked Round Shades, Green Tinted Round Shades, Brown Square Shades, Yellow Square Shades, Black Square Shades, Tortoiseshell Square Shades, Green Square Shades, Red Square Shades, Pink Tinted Square Shades, Blue Tinted Square Shades, White Square Shades, Pink Square Shades, All White Square Shades, Mono Square Shades, Green Calavera Mask, Navy Calavera Mask, Cherry Calavera Mask, Orange Calavera Mask, Purple Calavera Mask, Dark Blue Calavera Mask, Lavender Calavera Mask, Yellow Calavera Mask, Pink Calavera Mask, Neon Stitch Emissive Mask, Vibrant Stitch Emissive Mask, Pink Stitch Emissive Mask, Blue Stitch Emissive Mask, Neon Skull Emissive Mask, Vibrant Skull Emissive Mask, Pink Skull Emissive Mask, Orange Skull Emissive Mask, Dark X-Ray Emissive Mask, Bright X-Ray Emissive Mask, Purple X-Ray Emissive Mask
        unlock_packed_bools(30699, 30704) --Palms Trax LS T-Shirt, Moodymann Whatupdoe T-Shirt, Moodymann Big D T-Shirt, Keinemusik Cayo Perico T-Shirt, Still Slipping Blarneys T-Shirt, Still Slipping Friend T-Shirt
        unlock_packed_bools(31708, 31714) --CircoLoco Records - Blue EP, CircoLoco Records - Green EP, CircoLoco Records - Violet EP, CircoLoco Records - Black EP, Moodymann - Kenny's Backyard Boogie, NEZ - You Wanna?, NEZ ft. Schoolboy Q - Let's Get It
        unlock_packed_bools(31736, 31736) --The Frontier Outfit
        unlock_packed_bools(31755, 31755) --Auto Shop Race 'n Chase
        unlock_packed_bools(31760, 31764) --Faces of Death T-Shirt, Straight to Video T-Shirt, Monkey See Monkey Die T-Shirt, Trained to Kill T-Shirt, The Director T-Shirt
        unlock_packed_bools(31766, 31777) --Sprunk Forwards Cap, eCola Forwards Cap, Black Banshee T-Shirt, Blue Banshee T-Shirt, LS Customs T-Shirt, Rockstar Games Typeface T-Shirt, Wasted! T-Shirt, Baseball Bat T-Shirt, Knuckleduster T-Shirt, Rampage T-Shirt, Penitentiary Coveralls, LS Customs Coveralls
        unlock_packed_bools(31779, 31796) --The Ringleader Outfit, The Knuckles Outfit, The Breaker Outfit, The Dealer Outfit, Bearsy, Banshee Hoodie, eCola Varsity, Sprunk Varsity, LS Customs Varsity, LS Customs Tour Jacket, eCola Bodysuit, Sprunk Bodysuit, Sprunk Chute Bag, eCola Chute Bag, Halloween Chute Bag, Sprunk Chute, eCola Chute, Halloween Chute
        unlock_packed_bools(31805, 31808) --The Old Hand Outfit, The Overworked Outfit, The Longshoreman Outfit, The Underpaid Outfit
        unlock_packed_bools(31810, 31824) --Annis ZR350, Pfister Comet S2, Dinka Jester RR, Emperor Vectre, Ubermacht Cypher, Pfister Growler, Karin Calico GTF, Annis Remus, Vapid Dominator ASP, Karin Futo GTX, Dinka RT3000, Vulcar Warrener HKR, Karin Sultan RS Classic, Vapid Dominator GTT, Karin Previon
        unlock_packed_bools(31826, 31858) --Emperor Forwards Cap / Emperor Backwards Cap, Beige Knit Sneakers, Gray Emperor Classic Hoodie, Pursuit Series (Gameplay), Cyan Check Sleeveless Puffer, Dinka SPL (Wheel Mod), Blue Hayes Retro Racing, White Emperor Motors T-Shirt, Quick Fix (Gameplay), Cyan Check Puffer, Euros - Speed Trail (Livery), Never Barcode Print Hoodie, Hayes Modern Racing, Diversion (Gameplay), Gray Leather Bomber, Futo GTX - Chokusen Dorifuto (Livery), Karin Forwards Cap / Karin Backwards Cap, Cream Knit Sneakers, Private Takeover (Gameplay), Yellow Pfister Hoodie, Retro Turbofan (Wheel Mod), Red Check Sleeveless Puffer, White Hayes Retro Racing, Setup (Gameplay), Navy Emperor Motors T-Shirt, RT3000 - Stance Andreas (Livery), Red Check Puffer, Never Triangle Print Hoodie, Wingman (Gameplay), LTD Modern Racing, Jester RR - 10 Minute Car (Livery), Green Crowex Pro Racing Suit, Mustard Tan Leather Bomber
        unlock_packed_bools(31860, 31863) --Omnis Forwards Cap / Omnis Backwards Cap, Conical Turbofan (Wheel Mod), Black Knit Sneakers, Green Emperor Classic Hoodie
        unlock_packed_bools(31865, 31868) --Green Geo Sleeveless Puffer, ZR350 - Atomic Drift Team (Livery), White Globe Oil Retro Racing, Yellow Annis Rally T-Shirt
        unlock_packed_bools(31870, 31928) --Green Geo Puffer, Warrener HKR - Classic Vulcar (Livery), Life ZigZag Print Hoodie, Blue Dinka Modern Racing, Gray Benefactor Racing Suit, Orange Tan Leather Bomber, Ice Storm (Wheel Mod), Annis Forwards Cap / Annis Backwards Cap, Gray & Purple Knit Sneakers, Black Crowex Pro Racing Suit, Gray Pfister Hoodie, Calico GTF - Fukaru Rally (Livery), Black Geo Sleeveless Puffer, Green Crowex Retro Racing, Blue Xero Gas Racing Suit, Blue Annis Noise T-Shirt, Remus - Blue Lightning (Livery), Black Geo Puffer, Life Static Print Hoodie, Dark Benefactor Racing Suit, Red Dinka Modern Racing, Super Turbine (Wheel Mod), Chestnut Tan Leather Bomber, Vapid Forwards Cap / Vapid Backwards Cap, Red Xero Gas Racing Suit, Gray & Magenta Knit Sneakers, Dominator GTT - Oldschool Oval (Livery), Black Vapid Ellie Hoodie, Cream Bigness Sleeveless Puffer, Wildstyle Racing Suit, Red Globe Oil Retro Racing, Tailgater S - Crevis Race (Livery), Light Dinka T-Shirt, Cream Bigness Puffer, Modern Mesh (Wheel Mod), Never Crosshair Print Hoodie, Euros - Drift Tribe (Livery), Yellow Vapid Modern Racing, Dark Tan Leather Bomber, Forged Star (Wheel Mod), Light Dinka Forwards Cap / Light Dinka Backwards Cap, Futo GTX - Drift King (Livery), Gray & Aqua Knit Sneakers, Gray Karin Hoodie, Showflake (Wheel Mod), Purple Bigness Sleeveless Puffer, RT3000 - Atomic Motorsport (Livery), Black Crowex Retro Racing, Black Annis Noise T-Shirt, Giga Mesh (Wheel Mod), Purple Bigness Puffer, Jester RR - Yogarishima (Livery), Hiding Print Hoodie, Ubermacht Modern Racing, Mesh Meister (Wheel Mod), Ox Blood Leather Bomber, ZR350 - Kisama Chevrons (Livery), Dark Dinka Forwards Cap / Dark Dinka Backwards Cap, White & Pink Knit Sneakers
        unlock_packed_bools(31930, 31933) --Navy Vapid Ellie Hoodie, Warrener HKR - Classic Vulcar Alt (Livery), Green Aztec Sleeveless Puffer, Calico GTF - Disruption Rally (Livery)
        unlock_packed_bools(31935, 31938) --Blue Atomic Retro Racing, Remus - Annis Tech (Livery), Dark Dinka T-Shirt, Dominator GTT - Resto Mod Racer (Livery)
        unlock_packed_bools(31940, 31943) --Green Aztec Puffer, Tailgater S - Redwood (Livery), Life Binary Print Hoodie, Euros - King Scorpion (Livery)
        unlock_packed_bools(31945, 31948) --White Güffy Modern Racing, Futo GTX - Tandem Battle (Livery), Dark Nut Leather Bomber, RT3000 - Dinka Performance (Livery)
        unlock_packed_bools(31950, 31953) --White Güffy Forwards Cap / White Güffy Backwards Cap, Jester RR - Fuque (Livery), Gray & Yellow Knit Sneakers, ZR350 - Winning is Winning (Livery)
        unlock_packed_bools(31955, 31958) --Navy Karin Hoodie, Warrener HKR - Redwood Racing (Livery), Black Aztec Sleeveless Puffer, Calico GTF - Redwood Rally (Livery)
        unlock_packed_bools(31960, 31963) --Yellow Atomic Retro Racing, Remus - Atomic Motorsport (Livery), Light Vapid Ellie T-Shirt, Dominator GTT - Flame On (Livery)
        unlock_packed_bools(31965, 31968) --Black Aztec Puffer, Tailgater S - Disruption Logistics (Livery), Lucky Penny Print Hoodie, Euros - Sprunk Light (Livery)
        unlock_packed_bools(31970, 31973) --Black Güffy Modern Racing, Futo GTX - Itasha Drift (Livery), Navy Blue Leather Bomber, RT3000 - Shiny Wasabi Kitty (Livery)
        unlock_packed_bools(31975, 31978) --Black Güffy Forwards Cap / Black Güffy Backwards Cap, Jester RR - Xero Gas Rally (Livery), Grayscale Knit Sneakers, ZR350 - Annis Racing Tribal (Livery)
        unlock_packed_bools(31980, 31983) --Light Obey Hoodie, Warrener HKR - Vulcar Turbo (Livery), Cream Splinter Sleeveless Puffer, Calico GTF - Prolaps Rally (Livery)
        unlock_packed_bools(31985, 31988) --Blue Redwood Retro Racing, Remus - Shiny Wasabi Kitty (Livery), Dark Vapid Ellie T-Shirt, Dominator GTT - The Patriot (Livery)
        unlock_packed_bools(31990, 31993) --Cream Splinter Puffer, Tailgater S - Colored Camo Livery (Livery), Light Dinka Modern Racing, Euros - Candybox Gold (Livery)
        unlock_packed_bools(31995, 31998) --Dark Green Leather Bomber, Futo GTX - Stance Andreas (Livery), Hellion Forwards Cap / Hellion Backwards Cap, RT3000 - Total Fire (Livery)
        unlock_packed_bools(32000, 32003) --Gray & Cyan Knit Sneakers, Jester RR - Split Siberia (Livery), Black Ubermacht Hoodie, ZR350 - Annis Racing Tribal Alt (Livery)
        unlock_packed_bools(32005, 32008) --Dark Splinter Sleeveless Puffer, Warrener HKR - Vulcar Turbo Alt (Livery), White Logo Ruiner T-Shirt, Calico GTF - Xero Gas Rally (Livery)
        unlock_packed_bools(32010, 32013) --Dark Splinter Puffer, Remus - Fukaru Motorsport (Livery), Dark Dinka Modern Racing, Dominator GTT - 70s Street Machine (Livery)
        unlock_packed_bools(32015, 32018) --White Leather Bomber, Tailgater S - Army Camo Solid (Livery), Lampadati Forwards Cap / Lampadati Backwards Cap, Lilac Knit Sneakers
        unlock_packed_bools(32020, 32023) --Dark Obey Hoodie, Green Latin Sleeveless Puffer, Gray Vapid Truck T-Shirt, Green Latin Puffer
        unlock_packed_bools(32025, 32028) --Blue Bravado Modern Racing, Red Leather Bomber, White Knit Sneakers, Red Ubermacht Hoodie
        unlock_packed_bools(32030, 32033) --Black Latin Sleeveless Puffer, White Obey Omnis T-Shirt, Black Latin Puffer, Black Bravado Modern Racing
        unlock_packed_bools(32035, 32038) --Ice Knit Sneakers, Blue Annis Noise Hoodie, Orange Camo Sleeveless Puffer, Light Blue Vapid Truck T-Shirt
        unlock_packed_bools(32040, 32043) --Orange Camo Puffer, Imponte Modern Racing, Aqua Sole Knit Sneakers, Green Emperor Modern Hoodie
        unlock_packed_bools(32045, 32048) --Aqua Camo Sleeveless Puffer, Black Vapid USA T-Shirt, Aqua Camo Puffer, Xero Modern Racing
        unlock_packed_bools(32050, 32053) --Smoky Knit Sneakers, Gray Annis Noise Hoodie, Gradient Sleeveless Puffer, Red Obey Omnis T-Shirt
        unlock_packed_bools(32055, 32058) --Gradient Puffer, White & Gold Knit Sneakers, Dark Emperor Modern Hoodie, Red Logo Ruiner T-Shirt
        unlock_packed_bools(32060, 32063) --Orange Knit Sneakers, Light Dinka Hoodie, Blue Bravado Gauntlet T-Shirt, Pink Vibrant Knit Sneakers
        unlock_packed_bools(32065, 32074) --Gold Lampadati Hoodie, Black Bravado Gauntlet T-Shirt, Lime Highlight Knit Sneakers, Dark Dinka Hoodie, Pfister Pocket T-Shirt, Purple Fade Knit Sneakers, Karin 90s T-Shirt, Teal Knit Sneakers, Black & Lime Knit Sneakers, Cyan Fade Knit Sneakers
        unlock_packed_bools(32084, 32084) --Red Highlight Knit Sneakers
        unlock_packed_bools(32094, 32094) --Broker Forwards Cap / Broker Backwards Cap
        unlock_packed_bools(32104, 32104) --Annis Hellion 4x4 T-Shirt
        unlock_packed_bools(32114, 32114) --Pink Gradient Sleeveless Puffer
        unlock_packed_bools(32124, 32124) --Fade Broker Modern Racing
        unlock_packed_bools(32134, 32134) --Tricolor Lampadati Hoodie
        unlock_packed_bools(32144, 32144) --Mono Leather Bomber
        unlock_packed_bools(32154, 32154) --Pink Gradient Puffer
        unlock_packed_bools(32164, 32164) --Red Redwood Retro Racing
        unlock_packed_bools(32174, 32174) --Crash Out Print Hoodie
        unlock_packed_bools(32224, 32224) --Tuned For Speed Racing Suit
        unlock_packed_bools(32319, 32323) --police5 trade price
        unlock_packed_bools(34262, 34361) --LD Organics
        unlock_packed_bools(32273, 32273) --White Born x Raised T-Shirt
        unlock_packed_bools(32275, 32275) --Circoloco T-Shirt
        unlock_packed_bools(32287, 32287) --Dr. Dre
        unlock_packed_bools(32295, 32311) --Orange Goldfish, Purple Goldfish, Bronze Goldfish, Clownfish, Juvenile Gull, Sooty Gull, Black-headed Gull, Herring Gull, Brown Sea Lion, Dark Sea Lion, Spotted Sea Lion, Gray Sea Lion, Green Festive T-Shirt, Red Festive T-Shirt, Orange DJ Pooh T-Shirt, White WCC DJ Pooh T-Shirt, Blue WCC DJ Pooh T-Shirt
        unlock_packed_bools(32315, 32316) --Navy Coveralls, Gray Coveralls, Marathon Hoodie
        unlock_packed_bools(32366, 32366) --Declasse Draugur (Trade Price)
        unlock_packed_bools(32407, 32408) --Bottom Dollar Jacket, The Bottom Dollar
        unlock_packed_bools(34372, 34375) --Horror Pumpkin, Dinka Kanjo SJ (Trade Price), Dinka Postlude (Trade Price), Black LD Organics Cap / White LD Organics T-Shirt
        unlock_packed_bools(34378, 34411) --Junk Energy Chute Bag, Junk Energy Chute, Pumpkin T-Shirt, Pacific Standard Varsity, Pacific Standard Sweater, Cliffford Varsity, Cliffford Hoodie, The Diamond Casino Varsity, The Diamond Strike Vest, Strickler Hat, Sinsimito Cuban Shirt, CLO_E1M_O_MUM, Manor Geo Forwards Cap, Apricot Perseus Forwards Cap, Still Slipping Tie-dye Forwards Cap, Lemon Festive Beer Hat, Bigness Hand-drawn Dome, Grimy Stitched, Pale Stitched, Gray Cracked Puppet, Blushed Cracked Puppet, Green Emissive Lady Liberty, President, Gold Beat Off Earphones, White Spiked Gauntlet (L), Manor Geo Hoodie, Pumpkin Hoodie, LS Smoking Jacket, Hand-Drawn Biker Bomber, Have You Seen Me? Sweater, Still Slipping Tie-dye T-Shirt, Manor Geo Track Pants, Apricot Perseus Track Pants, Sasquatch
        unlock_packed_bools(34415, 34510) --Green Vintage Frank, Brown Vintage Frank, Gray Vintage Frank, Pale Vintage Mummy, Green Vintage Mummy, Weathered Vintage Mummy, Conquest, Death, Famine, War, Black Tech Demon, Gray Tech Demon, White Tech Demon, Green Tech Demon, Orange Tech Demon, Purple Tech Demon, Pink Tech Demon, Red Detail Tech Demon, Blue Detail Tech Demon, Yellow Detail Tech Demon, Green Detail Tech Demon, Pink Detail Tech Demon, Orange & Gray Tech Demon, Red Tech Demon, Camo Tech Demon, Aqua Camo Tech Demon, Brown Digital Tech Demon, Gold Tech Demon, Orange & Cream Tech Demon, Green & Yellow Tech Demon, Pink Floral Tech Demon, Black & Green Tech Demon, White & Red Tech Demon, Carbon Tech Demon, Carbon Teal Tech Demon, Black & White Tech Demon, Painted Tiger, Gray Painted Tiger, Gold Painted Tiger, Ornate Painted Tiger, Gray Yeti Flat Cap, Woodland Yeti Flat Cap, Green FB Flat Cap, Blue FB Flat Cap, Gray Lézard Flat Cap, Green Lézard Flat Cap, Light Plaid Lézard Flat Cap, Dark Plaid Lézard Flat Cap, White Striped Lézard Flat Cap, Red Striped Lézard Flat Cap, Brown Crevis Flat Cap, Gray Crevis Flat Cap, Black Broker Flat Cap, Burgundy Broker Flat Cap, White Beat Off Earphones, Yellow Beat Off Earphones, Salmon Beat Off Earphones, Orange Beat Off Earphones, Purple Beat Off Earphones, Pink Beat Off Earphones, Turquoise Beat Off Earphones, Blue Beat Off Earphones, Black Beat Off Earphones, Gray Beat Off Earphones, Teal Beat Off Earphones, Red Beat Off Earphones, Wild Striped Pool Sliders, Neon Striped Pool Sliders, Black SC Coin Pool Sliders, White SC Coin Pool Sliders, Black SC Pattern Pool Sliders, Pink SC Pattern Pool Sliders, Blue SC Pattern Pool Sliders, Camo Yeti Pool Sliders, Gray Camo Yeti Pool Sliders, Black Bigness Pool Sliders, Purple Bigness Pool Sliders, Camo Bigness Pool Sliders, Black Blagueurs Pool Sliders, White Blagueurs Pool Sliders, Pink Blagueurs Pool Sliders, Gray Cimicino Pool Sliders, Rouge Cimicino Pool Sliders, Navy DS Pool Sliders, Red DS Pool Sliders, Floral Güffy Pool Sliders, Green Güffy Pool Sliders, White Güffy Pool Sliders, Blue Heat Pool Sliders, Red ProLaps Pool Sliders, Black LD Organics T-Shirt, Green UFO Boxer Shorts, White UFO Boxer Shorts, Gray Believe Backwards Cap, Black Believe Backwards Cap, Glow Believe Backwards Cap
        unlock_packed_bools(34703, 34705) --White Vintage Vampire, Dark Green Vintage Vampire, Light Green Vintage Vampire
        unlock_packed_bools(34730, 34737) --Green Festive Beer Hat, Red Snowflake Beer Hat, Blue Snowflake Beer Hat, Red Holly Beer Hat, Pisswasser Festive Beer Hat, Blarneys Festive Beer Hat, Red Reindeer Beer Hat, Borfmas Beer Hat
        unlock_packed_bools(34761, 34761) --Gooch Outfit
        unlock_packed_bools(36630, 36654) --Snowman
        unlock_packed_bools(36699, 36770) --Ice Vinyl, Ice Vinyl Cut, Mustard Vinyl, Mustard Vinyl Cut, Dark Blue Vinyl, Dark Blue Vinyl Cut, Yellow SN Rooster Revere Collar, Red SC Dragon Revere Collar, Blue SC Dragon Revere Collar, Camo Roses Slab Denim, Orange Trickster Type Denim, Black VDG Cardigan, Blue DS Panthers Cardigan, Red DS Panthers Cardigan, Pink SC Baroque Cardigan, Downtown Cab Co. Revere Collar, Valentines Blazer, 420 Smoking Jacket, Yeti Year of the Rabbit T-Shirt, Gray Yeti Combat Shirt, Black Sprunk Festive, Dark Logger Festive, White Logger Festive, Green Logger Festive, Red Logger Festive, Blue Patriot Logo Festive, Black Patriot Logo Festive, Blue Patriot Festive, Red Patriot Festive, Red Pisswasser Festive, Gold Pisswasser Festive, Red Pisswasser Logo Festive, Gold Pisswasser Logo Festive, Green Pride Brew Festive, Yellow Pride Brew Festive, Yellow Holly Pride Festive, White Holly Pride Festive, Sprunk Snowflakes Festive, Broker Checkerboard T-Shirt, Yeti Ape Tucked T-Shirt, Black Bigness Ski, White Bigness Ski, Black Enema Flourish Ski, Teal Enema Flourish Ski, Magenta Enema Flourish Ski, Camo Roses Slab Forwards, Lime Leopard Slab Forwards, Red SC Dragon Embroidered, Classic DS Tiger Embroidered, Gray DS Tiger Embroidered, Black VDG Bandana Wide, Orange Trickster Type Wide, Gray Yeti Battle Pants, Broker Checkerboard Cargos, 420 Smoking Pants, Camo Roses Slab Canvas, Lime Leopard Slab Canvas, White Signs Squash Ugglies & Socks, Traditional Painted Rabbit, Twilight Painted Rabbit, Noh Painted Rabbit, Lime SC Coin Wraps, Pink SC Coin Wraps, Tan Bracelet Ensemble, Red Manor Round Brow Shades, Le Chien Whistle Necklace, Heartbreak Pendant, Rabbit, Budonk-adonk!, The Red-nosed, The Nutcracker, The GoPostal
        unlock_packed_bools(36774, 36788) --Johnny On The Spot Polo, The Gooch Mask, Snowman Outfit, Gold New Year Glasses, Silver New Year Glasses, Rainbow New Year Glasses, Yellow Holly Beer Hat, Green Reindeer Beer Hat, Zebra Dome, Purple Snakeskin Spiked, Manor Surano Jacket, Pistol Mk II - Season's Greetings (Livery), Pump Shotgun - Dildodude Camo (Livery), Micro SMG - Dildodude Camo (Livery)
        unlock_packed_bools(36809, 36809) --Nemesis T-Shirts
        unlock_packed_bools(41316, 41325) --Ghosts Exposed
        unlock_packed_bools(41593, 41593) --The Merryweather Outfit
        unlock_packed_bools(41656, 41659) --Squaddie (Trade Price), Suede Bucks Finish, Employee of the Month Finish, Uncle T Finish
        unlock_packed_bools(41671, 41671) --Manchez Scout (Trade Price)
        unlock_packed_bools(41802, 41802) --Johnny On The Spot Polo
        unlock_packed_bools(41894, 41894) --Hinterland Work T-Shirt
        unlock_packed_bools(41897, 41902) --Love Fist T-Shirt, San Andreas Federal Reserve T-Shirt, Los Santos, San Andreas T-Shirt, Heist Mask T-Shirt, Los Santos Map T-Shirt, PRB T-Shirt
        unlock_packed_bools(41915, 41980) --LS Pounders Cap, Vom Feuer Camo Cap, Western MC Cap, Red & White Ammu-Nation Cap, Santo Capra Cap, Alpine Hat, Alien Tracksuit Pants, Scarlet Vintage Devil Mask, Amber Vintage Devil Mask, Green Vintage Devil Mask, Green Vintage Witch Mask, Yellow Vintage Witch Mask, Orange Vintage Witch Mask, Green Vintage Skull Mask, White Vintage Skull Mask, Brown Vintage Skull Mask, Orange Vintage Werewolf Mask, Blue Vintage Werewolf Mask, Brown Vintage Werewolf Mask, Green Vintage Zombie Mask, Brown Vintage Zombie Mask, Teal Vintage Zombie Mask, Turkey Mask, Royal Calacas Mask, Maritime Calacas Mask, Romance Calacas Mask, Floral Calacas Mask, Stanier LE Cruiser (Trade Price), The Homie, The Retired Criminal, The Groupie, Black SC Ornate Mini Dress, Dark Manor Racing Suit, Bright Manor Racing Suit, Hinterland Bomber Jacket, Red Happy Moon T-Shirt, Black Happy Moon T-Shirt, White Happy Moon T-Shirt, Rockstar Says Relax Tucked T-Shirt, Trevor Heist Mask Tucked T-Shirt, Franklin Heist Mask Tucked T-Shirt, Michael Heist Mask Tucked T-Shirt, Bugstars Tucked T-Shirt, STD Contractors Tucked T-Shirt, Black Los Santos Tucked T-Shirt, San Andreas Republic Tucked T-Shirt, Go Go Space Monkey Tucked T-Shirt, Vom Feuer Camo Tucked T-Shirt, Black SC Ornate Tucked T-Shirt, Warstock Tucked T-Shirt, Western San Andreas Tucked T-Shirt, Ride or Die Tucked T-Shirt, Bourgeoix Tucked T-Shirt, Blêuter'd Tucked T-Shirt, Cherenkov Tucked T-Shirt, Moodymann Portrait Tucked T-Shirt, Rockstar Silver Jubilee Tucked T-Shirt, Rockstar NY Hoodie, Dollar Daggers Hoodie, Merryweather Hoodie, Go Go Space Monkey Hoodie, Rockstar Lion Crest T-Shirt, Ammu-Nation Baseball T-Shirt, Alien Hooded Tracksuit Top, Manor Benefactor Surano T-Shirt, LS Smoking Jacket
        unlock_packed_bools(41994, 41994) --Junk Energy Racing Suit
        unlock_packed_bools(41996, 41996) --??? T-Shirt
        unlock_packed_bools(42054, 42054) --Strapz Bandana
        unlock_packed_bools(42063, 42063) --The LS Panic
        unlock_packed_bools(42068, 42069) --Snowman Finish, Santa's Helper Finish
        unlock_packed_bools(42111, 42111) --The Coast Guard
        unlock_packed_bools(42119, 42123) --Yeti Outfit, Snowman Finish, Santa's Helper Finish, Skull Santa Finish, riot unlocked
        unlock_packed_bools(42125, 42125) --riot trade price
        unlock_packed_bools(42128, 42146) --eCola Festive Sweater, Sprunk Festive Sweater, 1 Party Hat, 2 Party Hat, 3 Party Hat, 4 Party Hat, 5 Party Hat, 6 Party Hat, 7 Party Hat, 8 Party Hat, 9 Party Hat, 10 Party Hat, 11 Party Hat, 12 Party Hat, 13 Party Hat, 14 Party Hat, 15 Party Hat, Bronze Party Outfit, Silver Party Outfit
        unlock_packed_bools(42148, 42149) --Snowball Launcher, DâM-FunK - Even the Score
        unlock_packed_bools(42152, 42190) --The LSDS, The McTony Security, Wooden Dragon Mask, Contrast Dragon Mask, Regal Dragon Mask, Midnight Dragon Mask, Pink Heart Shades, Red Heart Shades, Orange Heart Shades, Yellow Heart Shades, Green Heart Shades, Blue Heart Shades, Purple Heart Shades, Black Heart Shades, Fireworks Bucket Hat, Stars and Stripes Bucket Hat, Lady Liberty Bucket Hat, Green Festive Tree Hat, Red Festive Tree Hat, Brown Festive Reindeer Hat, White Festive Reindeer Hat, Bronze New Year's Hat, Gold New Year's Hat, Silver New Year's Hat, Sprunk x eCola Bodysuit, Rockstar Racing Suit, Rockstar Helmet, Coil Earth Day Tee, IR Earth Day Tee, White High Brass Tee, Black High Brass Tee, Black Lunar New Year Tee, Bigness Carnival Sports Tee, Green 420 Dress, Red Lunar New Year Dress, Carnival Sun Dress, Carnival Bandana, Bigness Carnival Bucket Hat, Black 420 Forwards Cap
        unlock_packed_bools(42217, 42217) --Cluckin' Bell Forwards Cap
        unlock_packed_bools(42233, 42234) --BOXVILLE6, BENSON2
        unlock_packed_bools(42239, 42242) --CAVALCADE3, IMPALER5, POLGAUNTLET, DORADO
        unlock_packed_bools(42244, 42247) --BALLER8, TERMINUS, BOXVILLE6, BENSON2
        unlock_packed_bools(42249, 42249) --Candy Cane
        unlock_packed_bools(42280, 42284) --Unlock pizzaboy, poldominator10, poldorado, polimpaler5, polimpaler6 trade price.
        unlock_packed_bools(42257, 42268) --The Street Artist, Ghosts Exposed 2024, Ghosts Exposed Outfit
        unlock_packed_bools(42286, 42287) --Ludendorff Survivor, Pizza This... Forwards Cap, Pizza This... Backwards Cap, Pizza This... Outfit
        unlock_packed_bools(51189, 51189) -- Spray Can
        unlock_packed_bools(51196, 51197) --The Shocker, Bottom Dollar Bail Enforcement tint for Stungun
        unlock_packed_bools(51215, 51258) --Alpine Outfit, Brown Alpine Hat, Pisswasser Good Time Tee, Gold Pisswasser Shorts, Mid Autumn Festival Shirt, Mid Autumn Festival Sundress (female), Día de Muertos Tee, Halloween Spooky Tee, Black Demon Goat Mask, Red Demon Goat Mask, Tan Demon Goat Mask, Black Creepy Cat Mask, Gray Creepy Cat Mask, Brown Creepy Cat Mask, Gray Hooded Skull Mask, Red Hooded Skull Mask, Blue Hooded Skull Mask, Red Flaming Skull Mask, Green Flaming Skull Mask, Orange Flaming Skull Mask, Orange Glow Skeleton Onesie, Purple Glow Skeleton Onesie, Green Glow Skeleton Onesie, Tan Turkey, Brown Turkey, Rockstar Red Logo Sweater, Silver Gun Necklace, Black Gun Necklace, Gold Gun Necklace, Rose Gun Necklace, Bronze Gun Necklace, Black Yeti Fall Sweater, White Yeti Fall Sweater, Red Yeti Fall Sweater, The Diamond Jackpot Tee, Cobalt Jackal Racing Jersey, Cobalt Jackal Racing Pants, Khaki 247 Chino Pants, Demon Biker Jacket, Purple Güffy Cardigan, SA Denim Biker Jacket, Green 247 Shirt, Barbed Wire Shirt, Ride or Die Gaiter, Pizza This... Tee
        if is_player_male then
            unlock_packed_bools(3483, 3492) --Death Defying T-Shirt (Male), For Hire T-Shirt (Male), Gimme That T-Shirt (Male), Asshole T-Shirt (Male), Can't Touch This T-Shirt (Male), Decorated T-Shirt (Male), Psycho Killer T-Shirt (Male), One Man Army T-Shirt (Male), Shot Caller T-Shirt (Male), Showroom T-Shirt (Male)
            unlock_packed_bools(6082, 6083) --Black Benny's T-Shirt, White Benny's T-Shirt
            unlock_packed_bools(6097, 6097) --I Heart LC (T-Shirt) (Male)
            unlock_packed_bools(6169, 6169) --DCTL T-Shirt (Male)
            unlock_packed_bools(6303, 6304) --Crosswalk Tee (Male), R* Crosswalk Tee (Male)
            unlock_packed_bools(15708, 15708) --Black The Black Madonna Emb. Tee (Male)
            unlock_packed_bools(15710, 15710) --The Black Madonna Star Tee (Male)
            unlock_packed_bools(15717, 15717) --White Dixon Repeated Logo Tee (Male)
            unlock_packed_bools(15720, 15720) --Black Dixon Wilderness Tee (Male)
            unlock_packed_bools(15724, 15724) --Tale Of Us Black Box Tee (Male)
            unlock_packed_bools(15728, 15728) --Black Tale Of Us Emb. Tee (Male)
            unlock_packed_bools(15730, 15730) --Black Solomun Yellow Logo Tee (Male)
            unlock_packed_bools(15732, 15732) --White Solomun Tee (Male)
            unlock_packed_bools(15737, 15737) --??? (Tattoo) (Male)
            unlock_packed_bools(15887, 15887) --Lucky 7s (Tattoo) (Male)
            unlock_packed_bools(15894, 15894) --The Royals (Tattoo) (Male)
            unlock_packed_bools(28393, 28416) --Badlands Revenge II Retro Tee (Male), Badlands Revenge II Pixtro Tee (Male), Degenatron Glitch Tee (Male), Degenatron Logo Tee (Male), The Wizard's Ruin Rescue Tee (Male), The Wizard's Ruin Vow Tee (Male), Space Monkey Art Tee (Male), Crotch Rockets Tee (Male), Street Legal Tee (Male), Get Truckin' Tee (Male), Arcade Trophy Tee (Male), Videogeddon Tee (Male), Insert Coin Tee (Male), Plushie Princess Tee (Male), Plushie Wasabi Kitty Tee (Male), Plushie Master Tee (Male), Plushie Muffy Tee (Male), Plushie Humpy Tee (Male), Plushie Saki Tee (Male), Plushie Grindy Tee (Male), Plushie Poopie Tee (Male), Plushie Smoker Tee (Male), Shiny Wasabi Kitty Claw Tee (Male), Nazar Speaks Tee (Male)
            unlock_packed_bools(28447, 28451) --11 11 Tee (Male), King Of QUB3D Tee (Male), Qubism Tee (Male), God Of QUB3D Tee (Male), QUB3D Boxart Tee (Male)
            unlock_packed_bools(28452, 28478) --Channel X Aged Tee (Male), Rebel Radio Aged Tee (Male), LSUR Aged Tee (Male), Steel Horse Solid Logo Aged Tee (Male), Black Western Logo Aged Tee (Male), White Nagasaki Aged Tee (Male), Black Principe Aged Tee (Male), Albany Vintage Aged Tee (Male), Benefactor Aged Tee (Male), Bravado Aged Tee (Male), Declasse Aged Tee (Male), Dinka Aged Tee (Male), Grotti Aged Tee (Male), Lampadati Aged Tee (Male), Ocelot Aged Tee (Male), Overflod Aged Tee (Male), Pegassi Aged Tee (Male), Pfister Aged Tee (Male), Vapid Aged Tee (Male), Weeny Aged Tee (Male), Toe Shoes Aged T-Shirt (Male), Vanilla Unicorn Aged T-Shirt (Male), Fake Vapid Aged T-Shirt (Male), I Married My Dad Aged T-Shirt (Male), White Rockstar Camo Aged Tee (Male), Razor Aged T-Shirt (Male), Noise Rockstar Logo Aged Tee (Male)
            unlock_packed_bools(30355, 30361) --Noise Aged Tee (Male), Emotion 98.3 Aged T-Shirt (Male), KDST Aged T-Shirt (Male), KJAH Radio Aged T-Shirt (Male), Bounce FM Aged T-Shirt (Male), K-Rose Aged T-Shirt (Male), Blue The Diamond Resort LS Aged Tee (Male)
            unlock_packed_bools(30407, 30410) --White Keinemusik Tee (Male), Blue Keinemusik Tee (Male), Moodymann Tee (Male), Palms Trax Tee (Male)
            unlock_packed_bools(30418, 30422) --Faces of Death Tee (Male), Straight to Video Tee (Male), Monkey See Monkey Die Tee (Male), Trained to Kill Tee (Male), The Director Tee (Male)
            unlock_packed_bools(41273, 41284) --Monkey (Tattoo) (Male), Dragon (Tattoo) (Male), Snake (Tattoo) (Male), Goat (Tattoo) (Male), Rat (Tattoo) (Male), Rabbit (Tattoo) (Male), Ox (Tattoo) (Male), Pig (Tattoo) (Male), Rooster (Tattoo) (Male), Dog (Tattoo) (Male), Horse (Tattoo) (Male), Tiger (Tattoo) (Male)
            unlock_packed_bools(41293, 41293) --Hinterland Work T-Shirt (Male)
        else
            unlock_packed_bools(3496, 3505) --Death Defying Top (Female), For Hire Top (Female), Gimme That Top (Female), Asshole Top (Female), Can't Touch This Top (Female), Decorated Top (Female), Psycho Killer Top (Female), One Man Army Top (Female), Shot Caller Top (Female), Showroom Top (Female)
            unlock_packed_bools(6091, 6092) --Black Benny's T-Shirt, White Benny's T-Shirt
            unlock_packed_bools(6106, 6106) --I Heart LC (T-Shirt) (Female)
            unlock_packed_bools(6181, 6181) --DCTL T-Shirt (Female)
            unlock_packed_bools(6316, 6317) --Crosswalk Tee (Female), R* Crosswalk Tee (Female)
            unlock_packed_bools(15719, 15719) --Black The Black Madonna Emb. Tee (Female)
            unlock_packed_bools(15721, 15721) --The Black Madonna Star Tee (Female)
            unlock_packed_bools(15728, 15728) --White Dixon Repeated Logo Tee (Female)
            unlock_packed_bools(15731, 15731) --Black Dixon Wilderness Tee (Female)
            unlock_packed_bools(15735, 15735) --Tale Of Us Black Box Tee (Female)
            unlock_packed_bools(15739, 15739) --Black Tale Of Us Emb. Tee (Female)
            unlock_packed_bools(15741, 15741) --Black Solomun Yellow Logo Tee (Female)
            unlock_packed_bools(15743, 15743) --White Solomun Tee (Female)
            unlock_packed_bools(15748, 15748) --??? (Tattoo) (Female)
            unlock_packed_bools(15898, 15898) --Lucky 7s (Tattoo) (Female)
            unlock_packed_bools(15905, 15905) --The Royals (Tattoo) (Female)
            unlock_packed_bools(28404, 28427) --Badlands Revenge II Retro Tee (Female), Badlands Revenge II Pixtro Tee (Female), Degenatron Glitch Tee (Female), Degenatron Logo Tee (Female), The Wizard's Ruin Rescue Tee (Female), The Wizard's Ruin Vow Tee (Female), Space Monkey Art Tee (Female), Crotch Rockets Tee (Female), Street Legal Tee (Female), Get Truckin' Tee (Female), Arcade Trophy Tee (Female), Videogeddon Tee (Female), Insert Coin Tee (Female), Plushie Princess Tee (Female), Plushie Wasabi Kitty Tee (Female), Plushie Master Tee (Female), Plushie Muffy Tee (Female), Plushie Humpy Tee (Female), Plushie Saki Tee (Female), Plushie Grindy Tee (Female), Plushie Poopie Tee (Female), Plushie Smoker Tee (Female), Shiny Wasabi Kitty Claw Tee (Female), Nazar Speaks Tee (Female)
            unlock_packed_bools(28458, 28462) --11 11 Tee (Female), King Of QUB3D Tee (Female), Qubism Tee (Female), God Of QUB3D Tee (Female), QUB3D Boxart Tee (Female)
            unlock_packed_bools(28463, 28478) --Channel X Aged Tee (Female), Rebel Radio Aged Tee (Female), LSUR Aged Tee (Female), Steel Horse Solid Logo Aged Tee (Female), Black Western Logo Aged Tee (Female), White Nagasaki Aged Tee (Female), Black Principe Aged Tee (Female), Albany Vintage Aged Tee (Female), Benefactor Aged Tee (Female), Bravado Aged Tee (Female), Declasse Aged Tee (Female), Dinka Aged Tee (Female), Grotti Aged Tee (Female), Lampadati Aged Tee (Female), Ocelot Aged Tee (Female), Overflod Aged Tee (Female)
            unlock_packed_bools(30418, 30421) --White Keinemusik Tee (Female), Blue Keinemusik Tee (Female), Moodymann Tee (Female), Palms Trax Tee (Female)
            unlock_packed_bools(30355, 30372) --Pegassi Aged Tee (Female), Pfister Aged Tee (Female), Vapid Aged Tee (Female), Weeny Aged Tee (Female), Toe Shoes Aged T-Shirt (Female), Vanilla Unicorn Aged T-Shirt (Female), Fake Vapid Aged T-Shirt (Female), I Married My Dad Aged T-Shirt (Female), White Rockstar Camo Aged Tee (Female), Razor Aged T-Shirt (Female), Noise Rockstar Logo Aged Tee (Female), Noise Aged Tee (Female), Emotion 98.3 Aged T-Shirt (Female), KDST Aged T-Shirt (Female), KJAH Radio Aged T-Shirt (Female), Bounce FM Aged T-Shirt (Female), K-Rose Aged T-Shirt (Female), Blue The Diamond Resort LS Aged Tee (Female)
            unlock_packed_bools(30429, 30433) --Faces of Death Tee (Female), Straight to Video Tee (Female), Monkey See Monkey Die Tee (Female), Trained to Kill Tee (Female), The Director Tee (Female)
            unlock_packed_bools(41285, 41296) --Monkey (Tattoo) (Female), Dragon (Tattoo) (Female), Snake (Tattoo) (Female), Goat (Tattoo) (Female), Rat (Tattoo) (Female), Rabbit (Tattoo) (Female), Ox (Tattoo) (Female), Pig (Tattoo) (Female), Rooster (Tattoo) (Female), Dog (Tattoo) (Female), Horse (Tattoo) (Female), Tiger (Tattoo) (Female)
            unlock_packed_bools(41304, 41304) --Hinterland Work T-Shirt (Female)
        end
        stats.set_packed_stat_int(7315, 6) --WEAPON_STONE_HATCHET
        stats.set_packed_stat_int(18981, 4) --WEAPON_DOUBLEACTION
        stats.set_packed_stat_int(18982, 3) --Parts of the TM-02 Khanjali (tracks, remote grenade launcher and turret end/muzzle brake)
        stats.set_packed_stat_int(18983, 3) --Parts of the RCV (plow, door and water hose)
        stats.set_packed_stat_int(18984, 3) --Parts of the Chernobog (door, dual headlight set and wheels)
        stats.set_packed_stat_int(18985, 3) --Parts of the Thruster (exhaust, small rotors and handlebars/joysticks)
        stats.set_packed_stat_int(18986, 3) --Parts of the Avenger (wing, nose camera and rotor blade)
        stats.set_packed_stat_int(22050, 5) --Oppressor MK2 Trade Price
        stats.set_packed_stat_int(22051, 50) --Carved Wooden Box (Nightclub)
        stats.set_packed_stat_int(22052, 100) --Ammo Box
        stats.set_packed_stat_int(22053, 20) --Meth
        stats.set_packed_stat_int(22054, 80) --Weed
        stats.set_packed_stat_int(22055, 60) --Passports
        stats.set_packed_stat_int(22056, 40) --Crumpled Cash
        stats.set_packed_stat_int(22057, 10) --Impotent Rage Statue
        stats.set_packed_stat_int(22058, 20) --Gold Business Battle Trophy (Nightclub)
        stats.set_packed_stat_int(22063, 20) --Dinka Go Go Monkey Blista
        stats.set_packed_stat_int(41237, 10) --Taxi Livery
        stats.set_int('MPPLY_CREW_NO_HEISTS_0', 2)
        stats.set_int('MPPLY_CREW_NO_HEISTS_1', 5)
        stats.set_int('MPPLY_CREW_NO_HEISTS_2', 5)
        stats.set_int('MPPLY_CREW_NO_HEISTS_3', 5)
        stats.set_int('MPPLY_CREW_NO_HEISTS_4', 5)
        stats.set_int('MPPLY_GANGOPS_LOYALTY2', -1)
        stats.set_int('MPPLY_GANGOPS_LOYALTY3', -1)
        stats.set_int('MPPLY_GANGOPS_CRIMMASMD2', -1)
        stats.set_int('MPPLY_GANGOPS_CRIMMASMD3', -1)
        stats.set_int('MPPLY_GANGOPS_SUPPORT', -1)
        stats.set_int('MPPLY_GANGOPS_ALLINORDER', -1)
        stats.set_int('MPPLY_GANGOPS_LOYALTY', -1)
        stats.set_int('MPPLY_GANGOPS_CRIMMASMD', -1)
        stats.set_int('MPPLY_XMASLIVERIES0', -1)
        stats.set_int('MPPLY_XMASLIVERIES1', -1)
        stats.set_int('MPPLY_XMASLIVERIES2', -1)
        stats.set_int('MPPLY_XMASLIVERIES3', -1)
        stats.set_int('MPPLY_XMASLIVERIES4', -1)
        stats.set_int('MPPLY_XMASLIVERIES5', -1)
        stats.set_int('MPPLY_XMASLIVERIES6', -1)
        stats.set_int('MPPLY_XMASLIVERIES7', -1)
        stats.set_int('MPPLY_XMASLIVERIES8', -1)
        stats.set_int('MPPLY_XMASLIVERIES9', -1)
        stats.set_int('MPPLY_XMASLIVERIES10', -1)
        stats.set_int('MPPLY_XMASLIVERIES11', -1)
        stats.set_int('MPPLY_XMASLIVERIES12', -1)
        stats.set_int('MPPLY_XMASLIVERIES13', -1)
        stats.set_int('MPPLY_XMASLIVERIES14', -1)
        stats.set_int('MPPLY_XMASLIVERIES15', -1)
        stats.set_int('MPPLY_XMASLIVERIES16', -1)
        stats.set_int('MPPLY_XMASLIVERIES17', -1)
        stats.set_int('MPPLY_XMASLIVERIES18', -1)
        stats.set_int('MPPLY_XMASLIVERIES19', -1)
        stats.set_int('MPPLY_XMASLIVERIES20', -1)
        stats.set_int('MPX_HOLDUPS_BITSET', -1)
        stats.set_int('MPX_CHAR_ABILITY_1_UNLCK', -1)
        stats.set_int('MPX_CHAR_ABILITY_2_UNLCK', -1)
        stats.set_int('MPX_CHAR_ABILITY_3_UNLCK', -1)
        stats.set_int('MPX_CHAR_WEAP_UNLOCKED', -1)
        stats.set_int('MPX_CHAR_WEAP_UNLOCKED2', -1)
        stats.set_int('MPX_CHAR_WEAP_ADDON_1_UNLCK', -1)
        stats.set_int('MPX_CHAR_WEAP_ADDON_2_UNLCK', -1)
        stats.set_int('MPX_CHAR_WEAP_ADDON_3_UNLCK', -1)
        stats.set_int('MPX_CHAR_WEAP_ADDON_4_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_UNLOCKED', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_UNLOCKED2', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_UNLOCKED3', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_UNLOCKED4', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_UNLOCKED5', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_UNLOCKED6', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_ADDON_1_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_ADDON_2_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_ADDON_3_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_ADDON_4_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_ADDON_5_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_ADDON_6_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_ADDON_7_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_ADDON_8_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_ADDON_9_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_ADDON_10_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_ADDON_11_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_ADDON_12_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_ADDON_13_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_ADDON_14_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_ADDON_15_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_ADDON_16_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_ADDON_17_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_ADDON_18_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_ADDON_19_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_WEAP_ADDON_20_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_HAIRCUT_1_UNLCK', -1)
        stats.set_int('MPX_CHAR_HAIR_UNLCK1', -1)
        stats.set_int('MPX_CHAR_HAIR_UNLCK2', -1)
        stats.set_int('MPX_CHAR_HAIR_UNLCK3', -1)
        stats.set_int('MPX_CHAR_HAIR_UNLCK4', -1)
        stats.set_int('MPX_CHAR_HAIR_UNLCK5', -1)
        stats.set_int('MPX_CHAR_HAIR_UNLCK6', -1)
        stats.set_int('MPX_CHAR_HAIR_UNLCK7', -1)
        stats.set_int('MPX_CHAR_HAIR_UNLCK8', -1)
        stats.set_int('MPX_CHAR_HAIR_UNLCK9', -1)
        stats.set_int('MPX_CHAR_HAIR_UNLCK10', -1)
        stats.set_int('MPX_CHAR_HAIR_UNLCK11', -1)
        stats.set_int('MPX_CHAR_HAIR_UNLCK12', -1)
        stats.set_int('MPX_CHAR_HAIR_UNLCK13', -1)
        stats.set_int('MPX_CHAR_HAIR_UNLCK14', -1)
        stats.set_int('MPX_CHAR_HAIR_UNLCK15', -1)
        stats.set_int('MPX_CHAR_HAIR_UNLCK16', -1)
        stats.set_int('MPX_CHAR_HAIR_UNLCK17', -1)
        stats.set_int('MPX_CHAR_FM_HEALTH_1_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_HEALTH_2_UNLCK', -1)
        stats.set_int('MPX_CRDEADLINE', 5)
        stats.set_int('MPX_CHAR_CREWUNLOCK_1_FM_EQUIP', -1)
        stats.set_int('MPX_CHAR_CREWUNLOCK_2_FM_EQUIP', -1)
        stats.set_int('MPX_CHAR_CREWUNLOCK_3_FM_EQUIP', -1)
        stats.set_int('MPX_CHAR_CREWUNLOCK_4_FM_EQUIP', -1)
        stats.set_int('MPX_CHAR_CREWUNLOCK_5_FM_EQUIP', -1)
        stats.set_int('MPX_CHAR_KIT_1_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_2_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_3_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_4_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_5_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_6_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_7_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_8_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_9_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_10_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_11_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_12_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_13_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_14_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_15_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_16_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_17_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_18_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_19_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_20_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_21_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_22_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_23_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_24_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_25_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_26_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_27_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_28_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_29_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_30_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_30_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_31_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_32_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_33_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_34_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_35_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_36_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_37_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_38_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_39_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_40_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_KIT_41_FM_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_ABILITY_1_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_ABILITY_2_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_ABILITY_3_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_CLOTHES_1_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_CLOTHES_2_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_CLOTHES_3_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_CLOTHES_4_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_CLOTHES_5_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_CLOTHES_6_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_CLOTHES_7_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_CLOTHES_8_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_CLOTHES_9_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_CLOTHES_10_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_CLOTHES_11_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_VEHICLE_1_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_VEHICLE_2_UNLCK', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_0', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_1', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_2', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_3', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_4', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_5', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_6', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_7', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_8', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_9', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_10', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_11', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_12', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_13', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_14', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_15', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_16', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_17', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_18', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_19', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_20', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_21', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_22', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_23', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_24', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_25', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_26', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_27', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_28', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_29', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_30', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_31', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_32', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_33', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_34', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_35', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_36', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_37', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_38', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_39', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_40', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_41', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_42', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_43', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_44', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_45', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_46', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_47', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_48', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_49', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_50', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_51', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_52', -1)
        stats.set_int('MPX_TATTOO_FM_UNLOCKS_53', -1)
        stats.set_int('MPX_RANKAP_UNLK_0', -1)
        stats.set_int('MPX_RANKAP_UNLK_1', -1)
        stats.set_int('MPX_RANKAP_UNLK_2', -1)
        stats.set_int('MPX_RANKAP_UNLK_3', -1)
        stats.set_int('MPX_CHAR_CREWUNLOCK_1_UNLCK', -1)
        stats.set_int('MPX_PISTOL_ENEMY_KILLS', 600) -- Weapon Tints for Pistol
        stats.set_int('MPX_CMBTPISTOL_ENEMY_KILLS', 600) -- Weapon Tints for Combat Pistol
        stats.set_int('MPX_APPISTOL_ENEMY_KILLS', 600) -- Weapon Tints for AP Pistol
        stats.set_int('MPX_MICROSMG_ENEMY_KILLS', 600) -- Weapon Tints for Micro SMG
        stats.set_int('MPX_SMG_ENEMY_KILLS', 600) -- Weapon Tints for SMG
        stats.set_int('MPX_ASLTSMG_ENEMY_KILLS', 600) -- Weapon Tints for Assault SMG
        stats.set_int('MPX_ASLTRIFLE_ENEMY_KILLS', 600) -- Weapon Tints for Assault Rifle
        stats.set_int('MPX_CRBNRIFLE_ENEMY_KILLS', 600) -- Weapon Tints for Carbine Rifle
        stats.set_int('MPX_ADVRIFLE_ENEMY_KILLS', 600) -- Weapon Tints for Advanced Rifle
        stats.set_int('MPX_MG_ENEMY_KILLS', 600) -- Weapon Tints for MG
        stats.set_int('MPX_CMBTMG_ENEMY_KILLS', 600) -- Weapon Tints for Combat MG
        stats.set_int('MPX_PUMP_ENEMY_KILLS', 600) -- Weapon Tints for Pump Shotgun
        stats.set_int('MPX_SAWNOFF_ENEMY_KILLS', 600) -- Weapon Tints for Sawed-Off Shotgun
        stats.set_int('MPX_ASLTSHTGN_ENEMY_KILLS', 600) -- Weapon Tints for Assault Shotgun
        stats.set_int('MPX_SNIPERRFL_ENEMY_KILLS', 600) -- Weapon Tints for Sniper Rifle
        stats.set_int('MPX_HVYSNIPER_ENEMY_KILLS', 600) -- Weapon Tints for Heavy Sniper
        stats.set_int('MPX_GRNLAUNCH_ENEMY_KILLS', 600) -- Weapon Tints for Grenade Launcher
        stats.set_int('MPX_RPG_ENEMY_KILLS', 600) -- Weapon Tints for Rocket Launcher
        stats.set_int('MPX_MINIGUNS_ENEMY_KILLS', 600) -- Weapon Tints for Minigun
        stats.set_int('MPX_SR_WEAPON_BIT_SET', 262143)
        stats.set_bool('MPX_SR_TIER_1_REWARD', true)
        stats.set_bool('MPX_SR_INCREASE_THROW_CAP', true)
        stats.set_bool('MPX_SR_TIER_3_REWARD', true)
        stats.set_int('MPX_PILOT_SCHOOL_MEDAL_0', 3)
        stats.set_int('MPX_PILOT_SCHOOL_MEDAL_1', 3)
        stats.set_int('MPX_PILOT_SCHOOL_MEDAL_2', 3)
        stats.set_int('MPX_PILOT_SCHOOL_MEDAL_3', 3)
        stats.set_int('MPX_PILOT_SCHOOL_MEDAL_4', 3)
        stats.set_int('MPX_PILOT_SCHOOL_MEDAL_5', 3)
        stats.set_int('MPX_PILOT_SCHOOL_MEDAL_6', 3)
        stats.set_int('MPX_PILOT_SCHOOL_MEDAL_7', 3)
        stats.set_int('MPX_PILOT_SCHOOL_MEDAL_8', 3)
        stats.set_int('MPX_PILOT_SCHOOL_MEDAL_9', 3)
        stats.set_int('MPX_PILOT_SCHOOL_LASTMEDAL_0', 3)
        stats.set_int('MPX_PILOT_SCHOOL_LASTMEDAL_1', 3)
        stats.set_int('MPX_PILOT_SCHOOL_LASTMEDAL_2', 3)
        stats.set_int('MPX_PILOT_SCHOOL_LASTMEDAL_3', 3)
        stats.set_int('MPX_PILOT_SCHOOL_LASTMEDAL_4', 3)
        stats.set_int('MPX_PILOT_SCHOOL_LASTMEDAL_5', 3)
        stats.set_int('MPX_PILOT_SCHOOL_LASTMEDAL_6', 3)
        stats.set_int('MPX_PILOT_SCHOOL_LASTMEDAL_7', 3)
        stats.set_int('MPX_PILOT_SCHOOL_LASTMEDAL_8', 3)
        stats.set_int('MPX_PILOT_SCHOOL_LASTMEDAL_9', 3)
        stats.set_int('MPX_CRPILOTSCHOOL', 1)
        stats.set_int('MPX_PILOT_CHECKPOINTCOUNT_9', 27)
        stats.set_float('MPX_PILOT_ELAPSEDTIME_0', 58.0)
        stats.set_float('MPX_PILOT_LANDINGDISTANCE_1', 10.0)
        stats.set_float('MPX_PILOT_LANDINGDISTANCE_2', 2.0)
        stats.set_float('MPX_PILOT_LANDINGDISTANCE_3', 10.0)
        stats.set_float('MPX_PILOT_ELAPSEDTIME_4', 19.0)
        stats.set_float('MPX_PILOT_LANDINGDISTANCE_5', 600.0)
        stats.set_float('MPX_PILOT_LANDINGDISTANCE_6', 25.0)
        stats.set_float('MPX_PILOT_LANDINGDISTANCE_7', 1.0)
        stats.set_float('MPX_PILOT_ELAPSEDTIME_8', 160.0)
        stats.set_float('MPX_PILOT_ELAPSEDTIME_9', 145.0)
        stats.set_float('MPX_PILOT_LASTELAPSEDTIME_0', 58.0)
        stats.set_float('MPX_PILOT_LASTLANDDISTANCE_1', 10.0)
        stats.set_float('MPX_PILOT_LASTLANDDISTANCE_2', 2.0)
        stats.set_float('MPX_PILOT_LASTLANDDISTANCE_3', 10.0)
        stats.set_float('MPX_PILOT_LASTELAPSEDTIME_4', 19.0)
        stats.set_float('MPX_PILOT_LASTLANDDISTANCE_5', 600.0)
        stats.set_float('MPX_PILOT_LASTLANDDISTANCE_6', 25.0)
        stats.set_float('MPX_PILOT_LASTLANDDISTANCE_7', 1.0)
        stats.set_float('MPX_PILOT_LASTELAPSEDTIME_8', 160.0)
        stats.set_float('MPX_PILOT_LASTELAPSEDTIME_9', 145.0)
        stats.set_bool('MPX_PILOT_ASPASSEDLESSON_0', true)
        stats.set_bool('MPX_PILOT_ASPASSEDLESSON_1', true)
        stats.set_bool('MPX_PILOT_ASPASSEDLESSON_2', true)
        stats.set_bool('MPX_PILOT_ASPASSEDLESSON_3', true)
        stats.set_bool('MPX_PILOT_ASPASSEDLESSON_4', true)
        stats.set_bool('MPX_PILOT_ASPASSEDLESSON_5', true)
        stats.set_bool('MPX_PILOT_ASPASSEDLESSON_6', true)
        stats.set_bool('MPX_PILOT_ASPASSEDLESSON_7', true)
        stats.set_bool('MPX_PILOT_ASPASSEDLESSON_8', true)
        stats.set_bool('MPX_PILOT_ASPASSEDLESSON_9', true)
        stats.set_int('MPX_CAR_CLUB_REP', 997430)
        stats.set_bool('MPPLY_MELEECHLENGECOMPLETED', true)
        stats.set_bool('MPPLY_HEADSHOTCHLENGECOMPLETED', true)
        stats.set_int('MPX_CHAR_HEIST_1_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_VEHICLE_1_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_VEHICLE_2_UNLCK', -1)
        stats.set_int('MPX_CRHEIST', 50)
        stats.set_int('MPX_CR_BANKHEIST1', 10)
        stats.set_int('MPX_CR_COUNTHEIST1', 10)
        stats.set_int('MPX_HEIST_COMPLETION', 26)
        stats.set_int('MPX_HEIST_TOTAL_TIME', 86400000)
        stats.set_int('MPX_HEISTS_ORGANISED', 50)
        stats.set_int('MPX_RACES_WON', 50)
        stats.set_int('MPX_CHAR_FM_PACKAGE_1_COLLECT', -1)
        stats.set_int('MPX_CHAR_FM_PACKAGE_2_COLLECT', -1)
        stats.set_int('MPX_CHAR_FM_PACKAGE_3_COLLECT', -1)
        stats.set_int('MPX_CHAR_FM_PACKAGE_4_COLLECT', -1)
        stats.set_int('MPX_CHAR_FM_PACKAGE_5_COLLECT', -1)
        stats.set_int('MPX_CHAR_FM_PACKAGE_6_COLLECT', -1)
        stats.set_int('MPX_CHAR_FM_PACKAGE_7_COLLECT', -1)
        stats.set_int('MPX_CHAR_FM_PACKAGE_8_COLLECT', -1)
        stats.set_int('MPX_CHAR_NO_FM_PACKAGES_COL', -1)
        stats.set_int('MPX_CHAR_FM_CARMOD_1_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_CARMOD_2_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_CARMOD_3_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_CARMOD_4_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_CARMOD_5_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_CARMOD_6_UNLCK', -1)
        stats.set_int('MPX_CHAR_FM_CARMOD_7_UNLCK', -1)
        stats.set_int('MPX_NUMBER_SLIPSTREAMS_IN_RACE', 110)
        stats.set_int('MPX_NUMBER_TURBO_STARTS_IN_RACE', 90)
        stats.set_int('MPX_USJS_FOUND', 50)
        stats.set_int('MPX_USJS_COMPLETED', 50)
        stats.set_int('MPPLY_TIMES_RACE_BEST_LAP', 101)
        stats.set_int('MPX_AWD_FMRALLYWONDRIVE', 25)
        stats.set_int('MPX_AWD_FMWINSEARACE', 25)
        stats.set_int('MPX_AWD_FMWINAIRRACE', 25)
        stats.set_int('MPX_AWD_FM_RACES_FASTEST_LAP', 101)
        stats.set_int('MPX_SCRIPT_INCREASE_STAM', 100)
        stats.set_int('MPX_SCRIPT_INCREASE_STRN', 100)
        stats.set_int('MPX_SCRIPT_INCREASE_FLY', 100)
        stats.set_int('MPX_SCRIPT_INCREASE_STL', 100)
        stats.set_int('MPX_SCRIPT_INCREASE_LUNG', 100)
        stats.set_int('MPX_SCRIPT_INCREASE_DRIV', 100)
        stats.set_int('MPX_SCRIPT_INCREASE_SHO', 100)
        stats.set_int('MPX_AWD_DANCE_TO_SOLOMUN', 360)
        stats.set_int('MPX_AWD_DANCE_TO_TALEOFUS', 360)
        stats.set_int('MPX_AWD_DANCE_TO_DIXON', 360)
        stats.set_int('MPX_AWD_DANCE_TO_BLKMAD', 360)
        stats.set_int('MPX_NIGHTCLUB_HOTSPOT_TIME_MS', 40320000)
        stats.set_int('MPX_CASINO_DECORATION_GIFT_1', -1)
        stats.set_bool('MPX_COMPLETE_H4_F_USING_VETIR', true)
        stats.set_bool('MPX_COMPLETE_H4_F_USING_LONGFIN', true)
        stats.set_bool('MPX_COMPLETE_H4_F_USING_ANNIH', true)
        stats.set_bool('MPX_COMPLETE_H4_F_USING_ALKONOS', true)
        stats.set_bool('MPX_COMPLETE_H4_F_USING_PATROLB', true)
        stats.set_int("MPX_ARENAWARS_AP_LIFETIME", 5055000)
        stats.set_int("MPX_ARENAWARS_AP_TIER", 1000)
        stats.set_int("MPX_ARENAWARS_AP", 10040)
        stats.set_int("MPX_ARENAWARS_SKILL_LEVEL", 20)
        stats.set_int("MPX_ARENAWARS_SP", 210)
        stats.set_int("MPX_ARENAWARS_SP_LIFETIME", 210)
        stats.set_int("MPX_ARENAWARS_MATCHES_PLYD", 52500)
        stats.set_int("MPX_ARENAWARS_MATCHES_PLYDT", 52500)
        stats.set_int("MPX_ARENAWARS_CARRER_WINS", 72500)
        stats.set_int("MPX_ARENAWARS_CARRER_WINT", 32500)
        stats.set_int("MPX_ARN_LIFETIME_KILLS", 260000)
        stats.set_int("MPX_ARN_LIFETIME_DEATHS", 20000)
        stats.set_int("MPX_ARN_SPECTATOR_KILLS", 5000)
        stats.set_int("MPX_ARN_W_PASS_THE_BOMB", 11000)
        stats.set_int("MPX_ARN_W_DETONATION", 11000)
        stats.set_int("MPX_ARN_W_ARCADE_RACE", 11000)
        stats.set_int("MPX_ARN_W_CTF", 11000)
        stats.set_int("MPX_ARN_W_TAG_TEAM", 11000)
        stats.set_int("MPX_ARN_W_DESTR_DERBY", 11000)
        stats.set_int("MPX_ARN_W_CARNAGE", 11000)
        stats.set_int("MPX_ARN_W_MONSTER_JAM", 12000)
        stats.set_int("MPX_ARN_W_GAMES_MASTERS", 11000)
        stats.set_int("MPX_ARN_L_PASS_THE_BOMB", 100)
        stats.set_int("MPX_ARN_L_DETONATION", 100)
        stats.set_int("MPX_ARN_L_ARCADE_RACE", 100)
        stats.set_int("MPX_ARN_L_CTF", 100)
        stats.set_int("MPX_ARN_L_TAG_TEAM", 200)
        stats.set_int("MPX_ARN_L_DESTR_DERBY", 100)
        stats.set_int("MPX_ARN_L_CARNAGE", 100)
        stats.set_int("MPX_ARN_L_MONSTER_JAM", 1005)
        stats.set_int("MPX_ARN_L_GAMES_MASTERS", 100)
        stats.set_int("MPX_ARN_VEH_MONSTER3", 90000)
        stats.set_int("MPX_ARN_VEH_MONSTER4", 500)
        stats.set_int("MPX_ARN_VEH_MONSTER5", 500)
        stats.set_int("MPX_ARN_VEH_CERBERUS", 500)
        stats.set_int("MPX_ARN_VEH_CERBERUS2", 500)
        stats.set_int("MPX_ARN_VEH_CERBERUS3", 500)
        stats.set_int("MPX_ARN_VEH_BRUISER", 500)
        stats.set_int("MPX_ARN_VEH_BRUISER2", 500)
        stats.set_int("MPX_ARN_VEH_BRUISER3", 500)
        stats.set_int("MPX_ARN_VEH_SLAMVAN4", 500)
        stats.set_int("MPX_ARN_VEH_SLAMVAN5", 500)
        stats.set_int("MPX_ARN_VEH_SLAMVAN6", 500)
        stats.set_int("MPX_ARN_VEH_BRUTUS", 500)
        stats.set_int("MPX_ARN_VEH_BRUTUS2", 500)
        stats.set_int("MPX_ARN_VEH_BRUTUS3", 500)
        stats.set_int("MPX_ARN_VEH_SCARAB", 500)
        stats.set_int("MPX_ARN_VEH_SCARAB2", 500)
        stats.set_int("MPX_ARN_VEH_SCARAB3", 500)
        stats.set_int("MPX_ARN_VEH_DOMINATOR4", 500)
        stats.set_int("MPX_ARN_VEH_DOMINATOR5", 500)
        stats.set_int("MPX_ARN_VEH_DOMINATOR6", 500)
        stats.set_int("MPX_ARN_VEH_IMPALER2", 500)
        stats.set_int("MPX_ARN_VEH_IMPALER3", 500)
        stats.set_int("MPX_ARN_VEH_IMPALER4", 500)
        stats.set_int("MPX_ARN_VEH_ISSI4", 500)
        stats.set_int("MPX_ARN_VEH_ISSI5", 500)
        stats.set_int("MPX_ARN_VEH_ISSI6", 500)
        stats.set_int("MPX_ARN_VEH_IMPERATOR", 500)
        stats.set_int("MPX_ARN_VEH_IMPERATOR2", 500)
        stats.set_int("MPX_ARN_VEH_IMPERATOR3", 500)
        stats.set_int("MPX_ARN_VEH_ZR380", 500)
        stats.set_int("MPX_ARN_VEH_ZR3802", 500)
        stats.set_int("MPX_ARN_VEH_ZR3803", 500)
        stats.set_int("MPX_ARN_VEH_DEATHBIKE", 500)
        stats.set_int("MPX_ARN_VEH_DEATHBIKE2", 400)
        stats.set_int("MPX_ARN_VEH_DEATHBIKE3", 400)
        stats.set_int("MPX_AWD_WATCH_YOUR_STEP", 20)
        stats.set_int("MPX_AWD_TOWER_OFFENSE", 50)
        stats.set_int("MPX_AWD_THROUGH_A_LENS", 60)
        stats.set_int("MPX_AWD_SPINNER", 80)
        stats.set_int("MPX_AWD_YOUMEANBOOBYTRAPS", 25)
        stats.set_int("MPX_AWD_MASTER_BANDITO", 20)
        stats.set_int("MPX_AWD_SITTING_DUCK", 30)
        stats.set_int("MPX_AWD_CROWDPARTICIPATION", 80)
        stats.set_int("MPX_AWD_KILL_OR_BE_KILLED", 60)
        stats.set_int("MPX_AWD_MASSIVE_SHUNT", 60)
        stats.set_int("MPX_AWD_YOURE_OUTTA_HERE", 220)
        stats.set_int("MPX_AWD_ARENA_WAGEWORKER", 6785341)
        stats.set_int("MPX_AWD_TIME_SERVED", 474020)
        stats.set_int("MPX_AWD_CAREER_WINNER", 36340)
        stats.set_int("MPX_ARN_SPECTATOR_DRONE", 60)
        stats.set_int("MPX_ARN_SPECTATOR_CAMS", 60)
        stats.set_int("MPX_ARN_SMOKE", 50)
        stats.set_int("MPX_ARN_DRINK", 65)
        stats.set_int("MPX_ARN_SPEC_BOX_TIME_MS", 10800000)
        stats.set_int("MPX_AWD_TOP_SCORE", 1045020)
        stats.set_int("MPX_AWD_READY_FOR_WAR", 50)
        stats.set_int("MPX_AWD_WEVE_GOT_ONE", 60)
        stats.set_int("MPX_ARN_W_THEME_SCIFI", 10)
        stats.set_int("MPX_ARN_W_THEME_APOC", 10)
        stats.set_int("MPX_ARN_W_THEME_CONS", 10)
        stats.set_int("MPX_ARN_BS_TRINKET_SAVED", -1) -- Unlock trinket and stickers.
        stats.set_bool("MPX_AWD_UNSTOPPABLE", true)
        stats.set_bool("MPX_AWD_CONTACT_SPORT", true)
        stats.set_bool("MPX_AWD_BEGINNER", true)
        stats.set_bool("MPX_AWD_FIELD_FILLER", true)
        stats.set_bool("MPX_AWD_ARMCHAIR_RACER", true)
        stats.set_bool("MPX_AWD_LEARNER", true)
        stats.set_bool("MPX_AWD_SUNDAY_DRIVER", true)
        stats.set_bool("MPX_AWD_THE_ROOKIE", true)
        stats.set_bool("MPX_AWD_BUMP_AND_RUN", true)
        stats.set_bool("MPX_AWD_GEAR_HEAD", true)
        stats.set_bool("MPX_AWD_DOOR_SLAMMER", true)
        stats.set_bool("MPX_AWD_HOT_LAP", true)
        stats.set_bool("MPX_AWD_ARENA_AMATEUR", true)
        stats.set_bool("MPX_AWD_PAINT_TRADER", true)
        stats.set_bool("MPX_AWD_SHUNTER", true)
        stats.set_bool("MPX_AWD_JOCK", true)
        stats.set_bool("MPX_AWD_WARRIOR", true)
        stats.set_bool("MPX_AWD_T_BONE", true)
        stats.set_bool("MPX_AWD_MAYHEM", true)
        stats.set_bool("MPX_AWD_WRECKER", true)
        stats.set_bool("MPX_AWD_CRASH_COURSE", true)
        stats.set_bool("MPX_AWD_ARENA_LEGEND", true)
        stats.set_bool("MPX_AWD_PEGASUS", true)
        unlock_packed_bools(25010, 25010) -- Skip arena wall help.
        unlock_packed_bools(25014, 25014) -- Skip arena wall tutorial.
        stats.set_bool('MPX_AWD_DEADEYE', true) -- Badlands Revenge II -- Dead Eye
        stats.set_bool('MPX_AWD_PISTOLSATDAWN', true) -- Badlands Revenge II -- Pistols At Dawn
        stats.set_bool('MPX_AWD_TRAFFICAVOI', true) -- Race and Chase -- Beat the Traffic
        stats.set_bool('MPX_AWD_CANTCATCHBRA', true) -- Race and Chase -- All Wheels
        stats.set_bool('MPX_AWD_WIZHARD', true) -- The Wizard's Ruin -- Feelin' Grogy
        stats.set_bool('MPX_AWD_APEESCAPE', true) -- Space Monkey 3: Bananas Gone Bad -- Ape Escape
        stats.set_bool('MPX_AWD_MONKEYKIND', true) -- Space Monkey 3: Bananas Gone Bad -- Monkey Mind
        stats.set_bool('MPX_AWD_AQUAAPE', true) -- Monkey Paradise -- Aquatic Ape
        stats.set_bool('MPX_AWD_KEEPFAITH', true) -- Defender of the Faith -- Keeping The Faith
        stats.set_bool('MPX_AWD_TRUELOVE', true) -- The Love Professor -- True Love
        stats.set_bool('MPX_AWD_NEMESIS', true) -- The Love Professor -- Nemesis
        stats.set_bool('MPX_AWD_FRIENDZONED', true) -- The Love Professor -- Friendzoned
        stats.set_bool('MPX_SCGW_WON_NO_DEATHS', true) -- Street Crimes: Gang Wars Edition -- Win a game without taking any damage
        stats.set_bool('MPX_IAP_CHALLENGE_0', true) -- Invade and Persuade II -- Score over 2,000,000 in a single playthrough
        stats.set_bool('MPX_IAP_CHALLENGE_1', true) -- Invade and Persuade II -- Collect 88 barrels in a single playthrough
        stats.set_bool('MPX_IAP_CHALLENGE_2', true) -- Invade and Persuade II -- Kill 100 animals in a single playthrough
        stats.set_bool('MPX_IAP_CHALLENGE_3', true) -- Invade and Persuade II -- Travel 3,474,000km on the moon
        stats.set_bool('MPX_IAP_CHALLENGE_4', true) -- Invade and Persuade II -- Finish any level of Invade and persuade with over 7 livee
        stats.set_bool('MPX_AWD_KINGOFQUB3D', true) -- QUB3D -- King Of QUB3D
        stats.set_bool('MPX_AWD_QUBISM', true) -- QUB3D -- Qubism
        stats.set_bool('MPX_AWD_GODOFQUB3D', true) -- QUB3D -- God Of QUB3D
        stats.set_bool('MPX_AWD_QUIBITS', true) -- QUB3D -- Qubits
        stats.set_bool('MPX_AWD_ELEVENELEVEN', true) -- Axe Of Fury -- 11 11
        stats.set_bool('MPX_AWD_GOFOR11TH', true) -- Axe Of Fury -- Crank It To 11
        stats.set_bool('MPX_AWD_STRAIGHT_TO_VIDEO', true) -- Camhedz -- Straight To Video
        stats.set_bool('MPX_AWD_MONKEY_C_MONKEY_DO', true) -- Camhedz -- Monkey See Monkey Do
        stats.set_bool('MPX_AWD_TRAINED_TO_KILL', true) -- Camhedz -- Trained to Kill
        stats.set_bool('MPX_AWD_DIRECTOR', true) -- Camhedz -- The Director
        stats.set_int('MPX_AWD_SHARPSHOOTER', 40) -- Badlands Revenge II -- Sharpshooter
        stats.set_int('MPX_AWD_RACECHAMP', 40) -- Race and Chase -- Race Champion
        stats.set_int('MPX_AWD_BATSWORD', 1000000) -- The Wizard's Ruin -- Platinum Sword
        stats.set_int('MPX_AWD_COINPURSE', 950000) -- The Wizard's Ruin -- Platinum Sword -- Coin Purse
        stats.set_int('MPX_AWD_ASTROCHIMP', 3000000) -- Space Monkey 3: Bananas Gone Bad -- Astrochimp
        stats.set_int('MPX_AWD_MASTERFUL', 40000) -- Penetrator -- Masterful
        stats.set_int('MPX_SCGW_NUM_WINS_GANG_0', 55) -- Street Crimes: Gang Wars Edition -- Win 20 games with character 1
        stats.set_int('MPX_SCGW_NUM_WINS_GANG_1', 56) -- Street Crimes: Gang Wars Edition -- Win 20 games with character 2
        stats.set_int('MPX_SCGW_NUM_WINS_GANG_2', 57) -- Street Crimes: Gang Wars Edition -- Win 20 games with character 3
        stats.set_int('MPX_SCGW_NUM_WINS_GANG_3', 58) -- Street Crimes: Gang Wars Edition -- Win 20 games with character 4
        stats.set_int('MPX_IAP_MAX_MOON_DIST', 2147483647) -- Invade and Persuade II -- Travel 3,474,000km on the moon
        stats.set_int('MPX_LAST_ANIMAL', 108) -- Invade and Persuade II -- Kill 100 animals in a single playthrough
        stats.set_int('MPX_CH_ARC_CAB_CLAW_TROPHY', -1) -- Kitty Claw Trophy
        stats.set_int('MPX_CH_ARC_CAB_LOVE_TROPHY', -1) -- The Love Professor Trophy
        stats.set_int('MPX_AWD_FACES_OF_DEATH', 50) -- Camhedz -- Faces Of Death
        stats.set_int("MPX_AWD_COLD_CALLER", 50)
        stats.set_int("MPX_AWD_PRODUCER", 60)
        stats.set_int("MPX_AWD_CONTRACTOR", 50)
        stats.set_int("MPX_FIXER_SC_VEH_RECOVERED", 100)
        stats.set_int("MPX_FIXER_SC_VAL_RECOVERED", 100)
        stats.set_int("MPX_FIXER_SC_GANG_TERMINATED", 100)
        stats.set_int("MPX_FIXER_SC_VIP_RESCUED", 100)
        stats.set_int("MPX_FIXER_SC_ASSETS_PROTECTED", 100)
        stats.set_int("MPX_FIXER_SC_EQ_DESTROYED", 100)
        stats.set_int("MPX_FIXER_COUNT", 600)
        stats.set_int("MPX_FIXER_EARNINGS", 26340756)
        stats.set_int("MPX_PAYPHONE_BONUS_KILL_METHOD", -1)
        stats.set_int("MPX_FIXER_HQ_OWNED", 1) -- Trade Price for buffalo4
        stats.set_int("MPX_FIXER_GENERAL_BS", -8577) -- Trade price for champion/baller7
        stats.set_int("MPX_FIXER_COMPLETED_BS", -1) -- Complete all The Contract missions.
        stats.set_bool("MPX_AWD_TEEING_OFF", true)
        stats.set_bool("MPX_AWD_PARTY_NIGHT", true)
        stats.set_bool("MPX_AWD_BILLIONAIRE_GAMES", true)
        stats.set_bool("MPX_AWD_HOOD_PASS", true)
        stats.set_bool("MPX_AWD_STUDIO_TOUR", true)
        stats.set_bool("MPX_AWD_DONT_MESS_DRE", true)
        stats.set_bool("MPX_AWD_BACKUP", true)
        stats.set_bool("MPX_AWD_SHORTFRANK_1", true)
        stats.set_bool("MPX_AWD_SHORTFRANK_2", true)
        stats.set_bool("MPX_AWD_SHORTFRANK_3", true)
        stats.set_bool("MPX_AWD_CONTR_KILLER", true)
        stats.set_bool("MPX_AWD_DOGS_BEST_FRIEND", true)
        stats.set_bool("MPX_AWD_MUSIC_STUDIO", true)
        stats.set_bool("MPX_AWD_SHORTLAMAR_1", true)
        stats.set_bool("MPX_AWD_SHORTLAMAR_2", true)
        stats.set_bool("MPX_AWD_SHORTLAMAR_3", true)
        stats.set_bool("MPX_BS_IMANI_D_APP_SETUP", true)
        stats.set_bool("MPX_BS_IMANI_D_APP_STRAND", true)
        stats.set_bool("MPX_BS_IMANI_D_APP_PARTY", true)
        stats.set_bool("MPX_BS_IMANI_D_APP_PARTY_2", true)
        stats.set_bool("MPX_BS_IMANI_D_APP_PARTY_F", true)
        stats.set_bool("MPX_BS_IMANI_D_APP_BILL", true)
        stats.set_bool("MPX_BS_IMANI_D_APP_BILL_2", true)
        stats.set_bool("MPX_BS_IMANI_D_APP_BILL_F", true)
        stats.set_bool("MPX_BS_IMANI_D_APP_HOOD", true)
        stats.set_bool("MPX_BS_IMANI_D_APP_HOOD_2", true)
        stats.set_bool("MPX_BS_IMANI_D_APP_HOOD_F", true)
        unlock_packed_bools(32312, 32312)
        stats.set_int('MPX_REV_NV_KILLS', 50) -- Navy Revolver Kills
        stats.set_int("MPX_XM22_FLOW", -1) -- Acid Lab Unlock
        stats.set_int("MPX_XM22_MISSIONS", -1) -- Acid Lab Unlock
        stats.set_int("MPX_AWD_CALLME", tunables.get_int(654710993)) -- Acid Lab Equipment Unlock
        stats.set_int("MPX_H3_VEHICLESUSED", -1) -- Trade Price for Diamond Casino Heist Finale.
        stats.set_int("MPX_H4_H4_DJ_MISSIONS", -1) -- Trade Price for weevil
        stats.set_int("MPX_H4_PROGRESS", -1) -- Trade Price for winky
        stats.set_int("MPX_TUNER_GEN_BS", -1) -- Trade Price for tailgater2
        stats.set_int("MPX_ULP_MISSION_PROGRESS", -1) -- Trade Price greenwood/conada
        stats.set_int("MPX_SUM23_AVOP_PROGRESS", -1) -- Trade Price Raiju
        stats.set_int("MPX_GANGOPS_FLOW_BITSET_MISS0", -1) -- Trade Price for deluxo/akula/riot2/stromberg/chernobog/barrage/khanjali/volatol/thruster
        stats.set_bool("MPX_AWD_TAXISTAR", true) -- Trade Price for taxi
        stats.set_bool("MPPLY_AWD_HST_ORDER", true)
        stats.set_bool("MPPLY_AWD_HST_SAME_TEAM", true)
        stats.set_bool("MPPLY_AWD_HST_ULT_CHAL", true)
        stats.set_int("MPPLY_HEISTFLOWORDERPROGRESS", -1)
        stats.set_int("MPPLY_HEISTNODEATHPROGREITSET", -1)
        stats.set_int("MPPLY_HEISTTEAMPROGRESSBITSET", -1)
        stats.set_int("MPX_AT_FLOW_VEHICLE_BS", -1) -- Trade price for dune4/dune5/wastelander/blazer5/phantom2/voltic2/technical2/boxville5/ruiner2
        stats.set_int("MPX_LFETIME_HANGAR_BUY_COMPLET", 50) -- Trade price for microlight/rogue/alphaz1/havok/starling/molotok/tula/bombushka/howard/mogul/pyro/seabreeze/nokota/hunter
        stats.set_int("MPX_SALV23_GEN_BS", -1) -- polgauntlet trade price
        stats.set_int("MPX_SALV23_SCOPE_BS", -1) -- police5 trade price
        stats.set_int("MPX_MOST_TIME_ON_3_PLUS_STARS", 300000) -- police4 trade price
        stats.set_int("MPX_LOWRIDER_FLOW_COMPLETE", 1)
        stats.set_int("MPX_AT_FLOW_MISSION_PROGRESS", 50)
        stats.set_int("MPX_AT_FLOW_IMPEXP_NUM", 50)
        stats.set_int("MPX_AT_FLOW_BITSET_MISSIONS0", -1)
        stats.set_int("MPX_WVM_FLOW_MISSION_PROGRESS", 50)
        stats.set_int("MPX_WVM_FLOW_IMPEXP_NUM", 50)
        stats.set_int("MPX_WVM_FLOW_BITSET_MISSIONS0", -1)
        stats.set_int("MPX_WVM_FLOW_VEHICLE_BS", -1)
        stats.set_int("MPX_GANGOPS_FLOW_MISSION_PROG", -1)
        stats.set_int("MPX_GANGOPS_FLOW_IMPEXP_NUM", 50)
        stats.set_int("MPX_WAM_FLOW_VEHICLE_BS", -1)
        stats.set_int("MPX_GANGOPS_FLOW_PASSED_BITSET", -1)
        stats.set_int("MPX_VCM_FLOW_PROGRESS", -1)
        stats.set_int("MPX_TUNER_FLOW_BS", -1)
        stats.set_int("MPX_TUNER_MIS_BS", -1)
        stats.set_int("MPX_TUNER_COMP_BS", -1)
        stats.set_int("MPX_GANGOPS_FM_MISSION_PROG", -1)
        stats.set_int("MPX_GANGOPS_FM_BITSET_MISS0", -1)
        stats.set_bool("MPX_UNLOCKED_MESSAGE_FLEECA", true)
        stats.set_bool("MPX_CARMEET_PV_CHLLGE_CMPLT", true)
        --Make it think you've beat all the heists as leader.
        stats.set_int("MPX_HEIST_SAVED_STRAND_0", tunables.get_int('ROOT_ID_HASH_THE_FLECCA_JOB'))
        stats.set_int("MPX_HEIST_SAVED_STRAND_0_L", 5)
        stats.set_int("MPX_HEIST_SAVED_STRAND_1", tunables.get_int('ROOT_ID_HASH_THE_PRISON_BREAK'))
        stats.set_int("MPX_HEIST_SAVED_STRAND_1_L", 5)
        stats.set_int("MPX_HEIST_SAVED_STRAND_2", tunables.get_int('ROOT_ID_HASH_THE_HUMANE_LABS_RAID'))
        stats.set_int("MPX_HEIST_SAVED_STRAND_2_L", 5)
        stats.set_int("MPX_HEIST_SAVED_STRAND_3", tunables.get_int('ROOT_ID_HASH_SERIES_A_FUNDING'))
        stats.set_int("MPX_HEIST_SAVED_STRAND_3_L", 5)
        stats.set_int("MPX_HEIST_SAVED_STRAND_4", tunables.get_int('ROOT_ID_HASH_THE_PACIFIC_STANDARD_JOB'))
        stats.set_int("MPX_HEIST_SAVED_STRAND_4_L", 5)
        stats.set_int("MPX_LIFETIME_BUY_COMPLETE", 1025)
        stats.set_int("MPX_LIFETIME_BUY_UNDERTAKEN", 1025)
        stats.set_int("MPX_LIFETIME_SELL_COMPLETE", 1025)
        stats.set_int("MPX_LIFETIME_SELL_UNDERTAKEN", 1025)
        stats.set_int("MPX_LIFETIME_CONTRA_EARNINGS", 25000000) --Contraband Earnings
        stats.set_int("MPX_LFETIME_BIKER_BUY_COMPLET", 1025)
        stats.set_int("MPX_LFETIME_BIKER_BUY_UNDERTA", 1025)
        stats.set_int("MPX_LFETIME_BIKER_SELL_COMPLET", 1025)
        stats.set_int("MPX_LFETIME_BIKER_SELL_UNDERTA", 1025)
        stats.set_int("MPX_LFETIME_BIKER_BUY_COMPLET1", 1025)
        stats.set_int("MPX_LFETIME_BIKER_BUY_UNDERTA1", 1025)
        stats.set_int("MPX_LFETIME_BIKER_SELL_COMPLET1", 1025)
        stats.set_int("MPX_LFETIME_BIKER_SELL_UNDERTA1", 1025)
        stats.set_int("MPX_LFETIME_BIKER_BUY_COMPLET2", 1025)
        stats.set_int("MPX_LFETIME_BIKER_BUY_UNDERTA2", 1025)
        stats.set_int("MPX_LFETIME_BIKER_SELL_COMPLET2", 1025)
        stats.set_int("MPX_LFETIME_BIKER_SELL_UNDERTA2", 1025)
        stats.set_int("MPX_LFETIME_BIKER_BUY_COMPLET3", 1025)
        stats.set_int("MPX_LFETIME_BIKER_BUY_UNDERTA3", 1025)
        stats.set_int("MPX_LFETIME_BIKER_SELL_COMPLET3", 1025)
        stats.set_int("MPX_LFETIME_BIKER_SELL_UNDERTA3", 1025)
        stats.set_int("MPX_LFETIME_BIKER_BUY_COMPLET4", 1025)
        stats.set_int("MPX_LFETIME_BIKER_BUY_UNDERTA4", 1025)
        stats.set_int("MPX_LFETIME_BIKER_SELL_COMPLET4", 1025)
        stats.set_int("MPX_LFETIME_BIKER_SELL_UNDERTA4", 1025)
        stats.set_int("MPX_LFETIME_BIKER_BUY_COMPLET5", 1025)
        stats.set_int("MPX_LFETIME_BIKER_BUY_UNDERTA5", 1025)
        stats.set_int("MPX_LFETIME_BIKER_SELL_COMPLET5", 1025)
        stats.set_int("MPX_LFETIME_BIKER_SELL_UNDERTA5", 1025)
        stats.set_int("MPX_LIFETIME_BKR_SELL_EARNINGS0", 25000000)
        stats.set_int("MPX_LIFETIME_BKR_SELL_EARNINGS1", 25000000)
        stats.set_int("MPX_LIFETIME_BKR_SELL_EARNINGS2", 25000000)
        stats.set_int("MPX_LIFETIME_BKR_SELL_EARNINGS3", 25000000)
        stats.set_int("MPX_LIFETIME_BKR_SELL_EARNINGS4", 25000000)
        stats.set_int("MPX_LFETIME_BIKER_BUY_COMPLET6", 10) --Allow buying of Stank Breath acid name.
        stats.set_int("MPX_LFETIME_BIKER_SELL_COMPLET6", 10) --Allow buying of Squatch Bait acid name.
        stats.set_packed_stat_int(41241, 5) --Allow buying of Chair Shot acid name.
        stats.set_int("MPX_LIFETIME_BKR_SELL_EARNINGS6", 1000000) --Allow buying of Fck Your Sleep acid name.
        stats.set_packed_stat_int(7666, 25) --Fill CEO office with money
        unlock_packed_bools(7553, 7594) --Fill CEO office with junk
        stats.set_packed_stat_int(9357, 4) --Fill Clubhouse with money
        unlock_packed_bools(9400, 9414) --Fill Clubhouse with junk
        stats.set_int("MPX_XMAS2023_ADV_MODE_WINS", 6) --Unlock Christmas 2023 liveries.
        stats.set_int("MPPLY_XMAS23_PLATES0", 3) -- ECola & Sprunk Plates
        stats.set_int("MPX_COUNT_HOTRING_RACE", 20) -- Liveries for hotring
        stats.set_int("MPX_FINISHED_SASS_RACE_TOP_3", 20) -- Trade price for hotring/everon2
        stats.set_int("MPX_AWD_DISPATCHWORK", 5) --Trade price for polgreenwood.
        stats.set_packed_stat_int(7671, 100) --Plant on Desk, Plaque Trophy, Shield Trophy
        stats.set_int("MPX_PROG_HUB_BOUNTIES_ALIVE_BS", -1) --Cuff Trophy
        for i = 0, 2 do --Unlock all daily rewards.
            local objective = globals.get_int(current_objectives_global + (1 + (0 * 5570)) + 681 + 4244 + (1 + (i * 3)))
            globals.set_int(objectives_state_global + 1 + (1 + (i * 1)), objective)
        end
        globals.set_int(objectives_state_global, 1)
        globals.set_int(weekly_words_global + (1 + (0 * 6)) + 1, globals.get_int(weekly_words_global + (1 + (0 * 6)) + 2)) --Unlock Weekly Objective
        gui.show_message('WasabiWordsTM', 'Clichés Subverted')
    end)
end)
toolTip(Stats, "Unlocks everything in the game, untouched script by ShinyWasabi")

-- Autorun Drops
 Money = Zephyr:add_tab("Money Options")

-- Teleports tab - Credits to LucasAbi69

 Tel = Pla:add_tab("Teleports")

-- Define your array with names and IDs
 properties = {
    {name = "Safehouse", id = 40}, {name = "Office", id = 475}, {name = "Arena", id = 643}, {name = "Bunker", id = 557}, {name = "Arcade", id = 740},
    {name = "Auto Shop", id = 779}, {name = "Agency", id = 826}, {name = "Clubhouse", id = 492}, {name = "Hangar", id = 569}, {name = "Facility", id = 590},
    {name = "Night Club", id = 614}, {name = "Freakshop", id = 847}, {name = "Salvage Yard", id = 867}, {name = "Eclipse Garage", id = 856}, {name = "Yacht", id = 455},
    {name = "Kosatka", id = 760},
    -- Add more properties as needed
    -- Cayo Drainage = 768
}

 function findNearestBlip(propertyId)
     ped = PLAYER.PLAYER_PED_ID()
     minDistanceSquared = math.huge
     nearestBlipId = nil
     iterator = propertyId
     blipId = HUD.GET_FIRST_BLIP_INFO_ID(iterator)
    while blipId ~= 0 do
         blipCoords = HUD.GET_BLIP_COORDS(blipId)
         distanceSquared = MISC.GET_DISTANCE_BETWEEN_COORDS(ped, blipCoords.x, blipCoords.y, blipCoords.z, 1, 0, false)
        if distanceSquared < minDistanceSquared and blipId ~= propertyId then
            minDistanceSquared = distanceSquared
            nearestBlipId = blipId
        end
        blipId = HUD.GET_NEXT_BLIP_INFO_ID(iterator)
    end
    return nearestBlipId
end


 function addBlips(array)
    for k in pairs(array) do
        array[k] = nil
    end
    for _, property in ipairs(properties) do
         ped = PLAYER.PLAYER_PED_ID()
         nearestBlipId = findNearestBlip(property.id)
        if nearestBlipId then
             blipCoords = HUD.GET_BLIP_COORDS(nearestBlipId)
            if property.id == 760 then
                table.insert(array, {property.name, blipCoords.x, blipCoords.y, blipCoords.z + 8})
            elseif property.id == 740 then
                table.insert(array, {property.name, blipCoords.x + 10, blipCoords.y - 5, blipCoords.z})
            else
                table.insert(array, {property.name, blipCoords.x, blipCoords.y, blipCoords.z})
            end
        end
    end
end

 locationIndex = 0
 locationTypeIndex = 0

locationTypes = {"Custom", "Owned"}

customCoords = {
    {"Eclipse Towers Front Door", -774.77, 312.19, 85.70},
    {"Casino", 922.223938, 49.779373, 80.764793},
    {"LS Customs", -370.269958, -129.910370, 38.681633},
    {"Eclipse Towers", -773.640869, 305.234619, 85.705841},
    {"Record A Studios", -835.250427, -226.589691, 37.267345},
    {"Luxury Autos", -796.260986, -245.412369, 37.079193},
    {"Suburban", -1208.171387, -782.429016, 17.157467},
    {"Mask Shop", -1339.069946, -1279.114502, 4.866990},
    {"Poisonby's", -719.559692, -157.998932, 36.998993},
    {"Benny's", -205.040863, -1305.484009, 31.369892},
    {"Maze Bank Top", -75.28475189209, -819.13195800781, 326.17520141602},
    {"Mount Chiliad", 501.7590637207, 5604.4399414062, 797.91009521484},
    {"Grand Senora Desert", 1720.8128662109, 3255.1586914062, 41.146816253662},
    {"LS International Airport", -1749.7110595703, -2910.0192871094, 13.944265365601}
}

ownedCoords = {}

locations = {customCoords, ownedCoords}

Tel:add_imgui(function()
    addBlips(ownedCoords)
    copyLocation = ImGui.Button("Copy Location To Clipboard")
    toolTip("", "Copies your current location to the clipboard for adding custom coordinates to the menu.")
    locationTypeIndex, locationTypeSelected = ImGui.Combo("Location Type", locationTypeIndex, locationTypes, #locationTypes)
    toolTip("", "Select a Location Type (Custom Locations | Owned Properties)")
    locationNames = {}
    for i, location in ipairs(locations[locationTypeIndex + 1]) do
        table.insert(locationNames, location[1])
    end
    locationIndex, locationSelected = ImGui.ListBox("Locations", locationIndex, locationNames, #locationNames)
    if locationSelected then
        if PED.IS_PED_IN_ANY_VEHICLE(PLAYER.PLAYER_PED_ID(), true) then
            PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), locations[locationTypeIndex + 1][locationIndex + 1][2], locations[locationTypeIndex + 1][locationIndex + 1][3], locations[locationTypeIndex + 1][locationIndex + 1][4])
        else
            ENTITY.SET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), locations[locationTypeIndex + 1][locationIndex + 1][2], locations[locationTypeIndex + 1][locationIndex + 1][3], locations[locationTypeIndex + 1][locationIndex + 1][4] - 1, true, false, false, false)
        end
    end
    toolTip("", "Click to teleport to this location")
    if copyLocation then
        coords = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true)
        coordsString = coords.x.. ", ".. coords.y.. ", ".. coords.z
        gui.show_message("Clipboard", "Copied ".. coordsString.. " to clipboard.")
        ImGui.SetClipboardText(coordsString)
    end
end)
 Yim_Actions = Pla:add_tab("Samurai's Yim_Actions")
 anim_index = 0
 scenario_index = 0
 npc_index = 0
 switch = 0
 filteredAnims = {}
 filteredScenarios = {}
 searchQuery = ""
 is_typing = false
 searchBar = true
 x = 0
 counter = 0
 clumsy = false
 rod = false
plyrProps = {}
npcProps = {}
selfPTFX = {}
npcPTFX = {}
spawned_npcs = {}
is_playing_anim = false
is_playing_scenario = false
disableProps = false
npc_godMode = false
 disableTooltips = false
 phoneAnim = false
 sprintInside = false
 lockPick = false
 manualFlags = false
 controllable = false
 looped = false
 upperbody = false
 freeze = false
 usePlayKey = false
script.register_looped("game input", function()
        if is_typing then
            PAD.DISABLE_ALL_CONTROL_ACTIONS(0)
        end
        if PAD.IS_USING_KEYBOARD_AND_MOUSE() then
            stopButton = "[G]"
        else
            stopButton = "[DPAD LEFT]"
        end
end)
 function updatefilteredAnims()
    filteredAnims = {}
    for _, anim in ipairs(animlist) do
        if string.find(string.lower(anim.name), string.lower(searchQuery)) then
            table.insert(filteredAnims, anim)
        end
    end
    table.sort(animlist, function(a, b)
        return a.name < b.name
    end)
end
 function displayFilteredAnims()
    updatefilteredAnims()
     animNames = {}
    for _, anim in ipairs(filteredAnims) do
        table.insert(animNames, anim.name)
    end
    anim_index, used = ImGui.ListBox("##animlistbox", anim_index, animNames, #filteredAnims)
end
 function updateNpcs()
    filteredNpcs = {}
    for _, npc in ipairs(npcList) do
            table.insert(filteredNpcs, npc)
    end
    table.sort(filteredNpcs, function(a, b)
        return a.name < b.name
    end)
end
 function displayNpcs()
    updateNpcs()
     npcNames = {}
    for _, npc in ipairs(filteredNpcs) do
        table.insert(npcNames, npc.name)
    end
    npc_index, used = ImGui.Combo("##npcList", npc_index, npcNames, #filteredNpcs)
end
 function setmanualflag()
    if looped then
        flag_loop = 1
    else
        flag_loop = 0
    end
    if freeze then
        flag_freeze = 2
    else
        flag_freeze = 0
    end
    if upperbody then
        flag_upperbody = 16
    else
        flag_upperbody = 0
    end
    if controllable then
        flag_control = 32
    else
        flag_control = 0
    end
    flag = flag_loop + flag_freeze + flag_upperbody + flag_control
end
 function setdrunk()
    script.run_in_fiber(function()
        while not STREAMING.HAS_CLIP_SET_LOADED("MOVE_M@DRUNK@VERYDRUNK") do
            STREAMING.REQUEST_CLIP_SET("MOVE_M@DRUNK@VERYDRUNK")
            coroutine.yield()
        end
        PED.SET_PED_MOVEMENT_CLIPSET(PLAYER.PLAYER_PED_ID(), "MOVE_M@DRUNK@VERYDRUNK", 1.0)
    end)
end
 function sethoe()
    script.run_in_fiber(function()
        while not STREAMING.HAS_CLIP_SET_LOADED("move_f@maneater") do
            STREAMING.REQUEST_CLIP_SET("move_f@maneater")
            coroutine.yield()
        end
        PED.SET_PED_MOVEMENT_CLIPSET(PLAYER.PLAYER_PED_ID(), "move_f@maneater", 1.0)
    end)
end
 function setcrouched()
    script.run_in_fiber(function()
        while not STREAMING.HAS_CLIP_SET_LOADED("move_ped_crouched") do
            STREAMING.REQUEST_CLIP_SET("move_ped_crouched")
            coroutine.yield()
        end
        PED.SET_PED_MOVEMENT_CLIPSET(PLAYER.PLAYER_PED_ID(), "move_ped_crouched", 0.3)
    end)
end
 function setlester()
    script.run_in_fiber(function()
        while not STREAMING.HAS_CLIP_SET_LOADED("move_heist_lester") do
            STREAMING.REQUEST_CLIP_SET("move_heist_lester")
            coroutine.yield()
        end
        PED.SET_PED_MOVEMENT_CLIPSET(PLAYER.PLAYER_PED_ID(), "move_heist_lester", 0.4)
    end)
end
 function setballistic()
    script.run_in_fiber(function()
        while not STREAMING.HAS_CLIP_SET_LOADED("anim_group_move_ballistic") do
            STREAMING.REQUEST_CLIP_SET("anim_group_move_ballistic")
            coroutine.yield()
        end
        PED.SET_PED_MOVEMENT_CLIPSET(PLAYER.PLAYER_PED_ID(), "anim_group_move_ballistic", 1)
    end)
end
function resetCheckBoxes()
    disableTooltips = false
    phoneAnim = false
    lockPick = false
    sprintInside = false
    clumsy = false
    rod = false
    disableProps = false
    manualFlags = false
    controllable = false
    looped = false
    upperbody = false
    freeze = false
    usePlayKey = false
end
script.register_looped("onlineStatus", function(onlineStatus)
    if NETWORK.NETWORK_IS_SESSION_ACTIVE() then
        is_online = true
    else
        is_online = false
    end
    onlineStatus:yield()
end)
script.register_looped("Ragdoll Loop", function(script)
    script:yield()
    if clumsy then
        if PED.IS_PED_RAGDOLL(PLAYER.PLAYER_PED_ID()) then
            script:sleep(2500)
            return
        end
        PED.SET_PED_RAGDOLL_ON_COLLISION(PLAYER.PLAYER_PED_ID(), true)
    elseif rod then
        if PAD.IS_CONTROL_PRESSED(0, 252) then
            PED.SET_PED_TO_RAGDOLL(PLAYER.PLAYER_PED_ID(), 1500, 0, 0, false)
        end
    end
    script:yield()
end)
script.register_looped("follow ped", function(follow)
    for k, v in ipairs(spawned_npcs) do
        if ENTITY.DOES_ENTITY_EXIST(v) then
            if ENTITY.IS_ENTITY_DEAD(v) then
                follow:sleep(3000)
                PED.DELETE_PED(v)
                table.remove(spawned_npcs, k)
            elseif PED.IS_PED_IN_ANY_VEHICLE(PLAYER.PLAYER_PED_ID(), true) and not PED.IS_PED_SITTING_IN_ANY_VEHICLE(v) then
                veh = PED.GET_VEHICLE_PED_IS_USING(PLAYER.PLAYER_PED_ID())
                if VEHICLE.IS_VEHICLE_SEAT_FREE(veh, 0, 0) then
                    seat = 0
                else
                    seat = tostring(k)
                end
                TASK.CLEAR_PED_TASKS_IMMEDIATELY(v)
                TASK.TASK_ENTER_VEHICLE(v, veh, 20000, seat, 2.0, 16, 0)
                follow:sleep(2000)
            elseif PED.IS_PED_SITTING_IN_ANY_VEHICLE(v) and not PED.IS_PED_IN_ANY_VEHICLE(PLAYER.PLAYER_PED_ID(), false) then
                TASK.CLEAR_PED_TASKS(v)
                TASK.TASK_LEAVE_VEHICLE(v, veh, 0)
                TASK.TASK_FOLLOW_TO_OFFSET_OF_ENTITY(v, PLAYER.PLAYER_PED_ID(), 0.5, 0.5, 0.0, -1, -1, 1.4, true)
                PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(v, true)
            end
        end
        follow:yield()
    end

    if VEHICLE.IS_THIS_MODEL_A_BIKE(ENTITY.GET_ENTITY_MODEL(veh)) then
        PED.SET_PED_CONFIG_FLAG(PLAYER.PLAYER_PED_ID(), 424, true)
    end
end)
Yim_Actions:add_imgui(function()
    if searchBar then
        ImGui.PushItemWidth(270)
        searchQuery, used = ImGui.InputTextWithHint("##searchBar", "Search", searchQuery, 32)
        if ImGui.IsItemActive() then
            is_typing = true
        else
            is_typing = false
        end
    end
    ImGui.BeginTabBar("Samurai's Yim_Actions", ImGuiTabBarFlags.None)
    if ImGui.BeginTabItem("Animations") then
        ImGui.PushItemWidth(345)
        displayFilteredAnims()
        info = filteredAnims[anim_index + 1]
        ImGui.Separator()
        manualFlags, used = ImGui.Checkbox("Edit Flags", manualFlags, true)
        helpmarker(false, "Allows you to customize how the animation plays.\nExample: if an animation is set to loop but you want it to freeze, activate this then choose your desired settings.")
        ImGui.SameLine()
        disableProps, used = ImGui.Checkbox("Disable Props", disableProps, true)
        helpmarker(false, "Choose whether to play animations with props or not. Check or Un-check this before playing the animation.")
        if manualFlags then
            ImGui.Separator()
            controllable, used = ImGui.Checkbox("Allow Control", controllable, true)
            helpmarker(false, "Allows you to keep control of your character and/or vehicle. If paired with 'Upper Body Only', you can play animations and walk/run/drive around.")
            ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine()
            looped, used = ImGui.Checkbox("Loop", looped, true)
            helpmarker(false, "Plays the animation forever until you manually stop it.")
            upperbody, used = ImGui.Checkbox("Upper Body Only", upperbody, true)
            helpmarker(false, "Only plays the animation on you character's upperbody (from the waist up).")
            ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine()
            freeze, used = ImGui.Checkbox("Freeze", freeze, true)
            helpmarker(false, "Freezes the animation at the very last frame. Useful for ragdoll/sleeping/dead animations.")
        end
        function cleanup()
            script.run_in_fiber(function()
                TASK.CLEAR_PED_TASKS(PLAYER.PLAYER_PED_ID())
                STREAMING.REMOVE_ANIM_DICT(info.dict)
                STREAMING.REMOVE_NAMED_PTFX_ASSET(info.ptfxdict)
                if plyrProps[1] ~= nil then
                    for k, v in ipairs(plyrProps) do
                        script.run_in_fiber(function(script)
                            if ENTITY.DOES_ENTITY_EXIST(v) then
                                PED.DELETE_PED(v)
                            end
                            if ENTITY.DOES_ENTITY_EXIST(v) then
                                ENTITY.SET_ENTITY_AS_MISSION_ENTITY(v)
                                script:sleep(100)
                                ENTITY.DELETE_ENTITY(v)
                            end
                        end)
                        table.remove(plyrProps, k)
                    end
                end
                if selfPTFX[1] ~= nil then
                    for k, v in ipairs(selfPTFX) do
                        script.run_in_fiber(function()
                            GRAPHICS.STOP_PARTICLE_FX_LOOPED(v)
                        end)
                        table.remove(selfPTFX, k)
                    end
                end
            end)
        end
        if ImGui.Button("   Play   ") then
             coords = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), false)
             heading = ENTITY.GET_ENTITY_HEADING(PLAYER.PLAYER_PED_ID())
             forwardX = ENTITY.GET_ENTITY_FORWARD_X(PLAYER.PLAYER_PED_ID())
             forwardY = ENTITY.GET_ENTITY_FORWARD_Y(PLAYER.PLAYER_PED_ID())
             boneIndex = PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), info.boneID)
             bonecoords = PED.GET_PED_BONE_COORDS(PLAYER.PLAYER_PED_ID(), info.boneID)
            if manualFlags then
                setmanualflag()
            else
                flag = info.flag
            end
            playSelected(PLAYER.PLAYER_PED_ID(), selfprop1, selfprop2, selfloopedFX, selfSexPed, boneIndex, coords, heading, forwardX, forwardY, bonecoords, "self", plyrProps, selfPTFX)
            is_playing_anim = true
        end
        ImGui.SameLine()
        if ImGui.Button("   Stop   ") then
            if PED.IS_PED_IN_ANY_VEHICLE(PLAYER.PLAYER_PED_ID(), false) then
                cleanup()
                 veh = PED.GET_VEHICLE_PED_IS_USING(PLAYER.PLAYER_PED_ID())
                PED.SET_PED_INTO_VEHICLE(PLAYER.PLAYER_PED_ID(), veh, -1)
            else
                cleanup()
                 current_coords = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
                ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), current_coords.x, current_coords.y, current_coords.z, true, false, false)
            end
            is_playing_anim = false
        end
        widgetToolTip(false, "TIP: You can also stop animations by pressing [G] on keyboard or [DPAD LEFT] on controller.")
        ImGui.SameLine()
         errCol = {}
        if plyrProps[1] ~= nil then
            errCol = {104, 247, 114, 0.2}
        else
            errCol = {225, 0, 0, 0.5}
        end
        if Button("Remove Attachments", {104, 247, 114, 0.6}, {104, 247, 114, 0.5}, errCol) then
            all_objects = entities.get_all_objects_as_handles()
            for _, v in ipairs(all_objects) do
                script.run_in_fiber(function()
                    modelHash = ENTITY.GET_ENTITY_MODEL(v)
                    attachedObject = ENTITY.GET_ENTITY_OF_TYPE_ATTACHED_TO_ENTITY(PLAYER.PLAYER_PED_ID(), modelHash)
                    if ENTITY.DOES_ENTITY_EXIST(attachedObject) then
                        ENTITY.DETACH_ENTITY(attachedObject)
                        ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(attachedObject)
                        TASK.CLEAR_PED_TASKS(PLAYER.PLAYER_PED_ID())
                    end
                end)
            end
            all_peds = entities.get_all_peds_as_handles()
            for _, p in ipairs(all_peds) do
                script.run_in_fiber(function()
                    pedHash = ENTITY.GET_ENTITY_MODEL(p)
                    attachedPed = ENTITY.GET_ENTITY_OF_TYPE_ATTACHED_TO_ENTITY(PLAYER.PLAYER_PED_ID(), pedHash)
                    if ENTITY.DOES_ENTITY_EXIST(attachedPed) then
                        ENTITY.DETACH_ENTITY(attachedPed)
                        TASK.CLEAR_PED_TASKS(PLAYER.PLAYER_PED_ID())
                        TASK.CLEAR_PED_TASKS(attachedPed)
                        ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(attachedPed)
                    end
                end)
            end
            is_playing_anim = false
            if plyrProps[1] ~= nil then
                for k, _ in ipairs(plyrProps) do
                    plyrProps[k] = nil
                end
            else
                gui.show_error("YimActions", "There are no objects or peds attached.")
            end
        end
        widgetToolTip(false, "Detaches all props.")
        ImGui.Separator()
        ImGui.Text("Ragdoll Options:")
        ImGui.Spacing()
        clumsy, used = ImGui.Checkbox("Clumsy", clumsy, true)
        if clumsy then
            rod = false
        end
        widgetToolTip(false, "Makes You Ragdoll When You Collide With Any Object.\n(Doesn't work with Ragdoll On Demand)")
        ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine()
        rod, used = ImGui.Checkbox("Ragdoll On Demand", rod, true)
        if rod then
            clumsy = false
        end
        widgetToolTip(false, "Press [X] On Keyboard or [LT] On Controller To Instantly Ragdoll. The Longer You Hold The Button, The Longer You Stay On The Ground.\n(Doesn't work with Clumsy)")
        ImGui.Spacing()
        ImGui.Text("Movement Options:")
        ImGui.Spacing()
         isChanged = false
        switch, isChanged = ImGui.RadioButton("Normal", switch, 0)
        if isChanged then
            PED.RESET_PED_MOVEMENT_CLIPSET(PLAYER.PLAYER_PED_ID(), 0.0)
            isChanged = false
        end
        ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine()
        switch, isChanged = ImGui.RadioButton("Drunk", switch, 1)
        widgetToolTip(false, "Works Great With Ragdoll Options.")
        if isChanged then setdrunk() end
        ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine()
        switch, isChanged = ImGui.RadioButton("Hoe", switch, 2)
        if isChanged then sethoe() end
        switch, isChanged = ImGui.RadioButton("Crouch", switch, 3)
        widgetToolTip(false, "You can pair this with the default stealth action [LEFT CTRL].")
        if isChanged then setcrouched() end
        ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine()
        switch, isChanged = ImGui.RadioButton("Lester", switch, 4)
        if isChanged then setlester() end
        ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine()
        switch, isChanged = ImGui.RadioButton("Heavy", switch, 5)
        if isChanged then setballistic() end
        ImGui.Separator()
        ImGui.Text("Play Animations On NPCs:")
        ImGui.SameLine()
        coloredText("[Work In Progress]", {247, 185, 104, 0.78})
        ImGui.PushItemWidth(200)
        displayNpcs()
        ImGui.PopItemWidth()
        ImGui.SameLine()
         npcData = filteredNpcs[npc_index + 1]
        function cleanupNPC()
            script.run_in_fiber(function()
                for _, v in ipairs(spawned_npcs) do
                    TASK.CLEAR_PED_TASKS(v)
                    PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(v, true)
                end
                if npcProps[1] ~= nil then
                    for k, v in ipairs(npcProps) do
                        script.run_in_fiber(function(script)
                            if ENTITY.DOES_ENTITY_EXIST(v) then
                                PED.DELETE_PED(v)
                            end
                            if ENTITY.DOES_ENTITY_EXIST(v) then
                                ENTITY.SET_ENTITY_AS_MISSION_ENTITY(v)
                                script:sleep(100)
                                ENTITY.DELETE_ENTITY(v)
                            end
                        end)
                        table.remove(npcProps, k)
                    end
                end
                if ENTITY.DOES_ENTITY_EXIST(npcSexPed) then
                    PED.DELETE_PED(npcSexPed)
                end
                if npcPTFX[1] ~= nil then
                    for key, value in ipairs(npcPTFX) do
                        script.run_in_fiber(function()
                            GRAPHICS.STOP_PARTICLE_FX_LOOPED(value)
                        end)
                        table.remove(npcPTFX, key)
                    end
                end
                STREAMING.REMOVE_ANIM_DICT(info.dict)
                STREAMING.REMOVE_NAMED_PTFX_ASSET(info.ptfxdict)
            end)
        end
        npc_godMode, used = ImGui.Checkbox("Invincible", npc_godMode, true)
        widgetToolTip(false, "Spawn NPCs in godmode.")
        if ImGui.Button("Spawn") then
            script.run_in_fiber(function(script)
                 pedCoords = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), false)
                 pedHeading = ENTITY.GET_ENTITY_HEADING(PLAYER.PLAYER_PED_ID())
                 pedForwardX = ENTITY.GET_ENTITY_FORWARD_X(PLAYER.PLAYER_PED_ID())
                 pedForwardY = ENTITY.GET_ENTITY_FORWARD_Y(PLAYER.PLAYER_PED_ID())
                while not STREAMING.HAS_MODEL_LOADED(npcData.hash) do
                    STREAMING.REQUEST_MODEL(npcData.hash)
                    coroutine.yield()
                end
                npc = PED.CREATE_PED(npcData.group, npcData.hash, 0.0, 0.0, 0.0, 0.0, true, false)
                ENTITY.SET_ENTITY_COORDS_NO_OFFSET(npc, pedCoords.x + pedForwardX * 1.4, pedCoords.y + pedForwardY * 1.4, pedCoords.z, true, false, false)
                ENTITY.SET_ENTITY_HEADING(npc, pedHeading - 180)
                table.insert(spawned_npcs, npc)
                npcNetID2 = NETWORK.NETWORK_GET_NETWORK_ID_FROM_ENTITY(npc)
                controlled = entities.take_control_of(npc, 300)
                script:sleep(500)
                entToNet(npcNetID2)
                TASK.TASK_FOLLOW_TO_OFFSET_OF_ENTITY(npc, PLAYER.PLAYER_PED_ID(), 0.5, 0.5, 0.0, -1, -1, 1.4, true)
                PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(npc, true)
                if npc_godMode then
                    ENTITY.SET_ENTITY_INVINCIBLE(npc, true)
                end
            end)
        end
        ImGui.SameLine()
        if ImGui.Button("Delete") then
            cleanupNPC()
            script.run_in_fiber(function()
                for k, v in ipairs(spawned_npcs) do
                    ENTITY.DELETE_ENTITY(v)
                    table.remove(spawned_npcs, k)
                end
            end)
        end
        ImGui.SameLine()
        if ImGui.Button(" Play On NPC ") then
            if spawned_npcs[1] ~= nil then
                for _, v in ipairs(spawned_npcs) do
                    if ENTITY.DOES_ENTITY_EXIST(v) then
                         npcCoords = ENTITY.GET_ENTITY_COORDS(v, false)
                         npcHeading = ENTITY.GET_ENTITY_HEADING(v)
                         npcForwardX = ENTITY.GET_ENTITY_FORWARD_X(v)
                         npcForwardY = ENTITY.GET_ENTITY_FORWARD_Y(v)
                         npcBoneIndex = PED.GET_PED_BONE_INDEX(v, info.boneID)
                         npcBboneCoords = PED.GET_PED_BONE_COORDS(v, info.boneID)
                        if manualFlags then
                            setmanualflag()
                        else
                            flag = info.flag
                        end
                        playSelected(v, npcprop1, npcprop2, npcloopedFX, npcSexPed, npcBoneIndex, npcCoords, npcHeading, npcForwardX, npcForwardY, npcBboneCoords, "npc", npcProps, npcPTFX)
                    end
                end
            else
                gui.show_error("Yim_Actions", "Spawn an NPC first!")
            end
        end
        ImGui.SameLine()
        if ImGui.Button("Stop NPC") then
            cleanupNPC()
            for _, v in ipairs(spawned_npcs) do
                script.run_in_fiber(function()
                    TASK.TASK_FOLLOW_TO_OFFSET_OF_ENTITY(v, PLAYER.PLAYER_PED_ID(), 0.5, 0.5, 0.0, -1, -1, 1.4, true)
                    PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(v, true)
                    if PED.IS_PED_IN_ANY_VEHICLE(v, false) then
                         veh = PED.GET_VEHICLE_PED_IS_USING(PLAYER.PLAYER_PED_ID())
                        PED.SET_PED_INTO_VEHICLE(v, veh, 0)
                        PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(v, true)
                    end
                end)
            end
        end
        event.register_handler(menu_event.ScriptsReloaded, function()
            PED.RESET_PED_MOVEMENT_CLIPSET(PLAYER.PLAYER_PED_ID(), 0.0)
            PED.SET_PED_RAGDOLL_ON_COLLISION(PLAYER.PLAYER_PED_ID(), false)
            if is_playing_anim then
                TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.PLAYER_PED_ID())
                STREAMING.REMOVE_NAMED_PTFX_ASSET(info.ptfxdict)
                STREAMING.REMOVE_ANIM_DICT(info.dict)
                if selfPTFX ~= nil then
                    for k, v in ipairs(selfPTFX) do
                        GRAPHICS.STOP_PARTICLE_FX_LOOPED(v)
                        table.remove(selfPTFX, k)
                    end
                end
            -- //fix player clipping through the ground after ending low-positioned anims//
                 current_coords = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
                if PED.IS_PED_IN_ANY_VEHICLE(PLAYER.PLAYER_PED_ID(), false) then
                     veh = PED.GET_VEHICLE_PED_IS_USING(PLAYER.PLAYER_PED_ID())
                    PED.SET_PED_INTO_VEHICLE(PLAYER.PLAYER_PED_ID(), veh, -1)
                else
                    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), current_coords.x, current_coords.y, current_coords.z, true, false, false)
                end
                is_playing_anim = false
                if plyrProps[1] ~= nil then
                    for k, v in ipairs(plyrProps) do
                        if ENTITY.DOES_ENTITY_EXIST(v) then
                            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(v)
                            script:sleep(100)
                            ENTITY.DELETE_ENTITY(v)
                        end
                        table.remove(plyrProps, k)
                    end
                end
            end
            if spawned_npcs[1] ~= nil then
                cleanupNPC()
                for k, v in ipairs(spawned_npcs) do
                    if ENTITY.DOES_ENTITY_EXIST(v) then
                        ENTITY.DELETE_ENTITY(v)
                    end
                    table.remove(plyrProps, k)
                end
            end
        end)
        event.register_handler(menu_event.MenuUnloaded, function()
            PED.RESET_PED_MOVEMENT_CLIPSET(PLAYER.PLAYER_PED_ID(), 0.0)
            PED.SET_PED_RAGDOLL_ON_COLLISION(PLAYER.PLAYER_PED_ID(), false)
            if is_playing_anim then
                TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.PLAYER_PED_ID())
                STREAMING.REMOVE_NAMED_PTFX_ASSET(info.ptfxdict)
                STREAMING.REMOVE_ANIM_DICT(info.dict)
                if selfPTFX ~= nil then
                    for k, v in ipairs(selfPTFX) do
                        GRAPHICS.STOP_PARTICLE_FX_LOOPED(v)
                        table.remove(selfPTFX, k)
                    end
                end
            -- //fix player clipping through the ground after ending low-positioned anims//
                 current_coords = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
                if PED.IS_PED_IN_ANY_VEHICLE(PLAYER.PLAYER_PED_ID(), false) then
                     veh = PED.GET_VEHICLE_PED_IS_USING(PLAYER.PLAYER_PED_ID())
                    PED.SET_PED_INTO_VEHICLE(PLAYER.PLAYER_PED_ID(), veh, -1)
                else
                    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), current_coords.x, current_coords.y, current_coords.z, true, false, false)
                end
                is_playing_anim = false
                if plyrProps[1] ~= nil then
                    for k, v in ipairs(plyrProps) do
                        if ENTITY.DOES_ENTITY_EXIST(v) then
                            ENTITY.SET_ENTITY_AS_MISSION_ENTITY(v)
                            script:sleep(100)
                            ENTITY.DELETE_ENTITY(v)
                        end
                        table.remove(plyrProps, k)
                    end
                end
            end
            if spawned_npcs[1] ~= nil then
                for k, v in ipairs(spawned_npcs) do
                    if ENTITY.DOES_ENTITY_EXIST(v) then
                        ENTITY.DELETE_ENTITY(v)
                    end
                    table.remove(spawned_npcs, k)
                end
            end
        end)
        ImGui.EndTabItem()
    end
    if ImGui.BeginTabItem("Scenarios") then
        ImGui.PushItemWidth(335)
         function updatefilteredScenarios()
            filteredScenarios = {}
            for _, scene in ipairs(ped_scenarios) do
                if string.find(string.lower(scene.name), string.lower(searchQuery)) then
                    table.insert(filteredScenarios, scene)
                end
            end
        end
         function displayFilteredScenarios()
            updatefilteredScenarios()
             scenarioNames = {}
            for _, scene in ipairs(filteredScenarios) do
                table.insert(scenarioNames, scene.name)
            end
            scenario_index, used = ImGui.ListBox("##scenarioList", scenario_index, scenarioNames, #filteredScenarios)
        end
        displayFilteredScenarios()
        ImGui.Separator()
        if ImGui.Button("   Play    ") then
            if is_playing_anim then
                script.run_in_fiber(function()
                    TASK.CLEAR_PED_TASKS(PLAYER.PLAYER_PED_ID())
                    ENTITY.DELETE_ENTITY(prop1)
                    ENTITY.DELETE_ENTITY(prop2)
                    GRAPHICS.STOP_PARTICLE_FX_LOOPED(loopedFX)
                    if ENTITY.DOES_ENTITY_EXIST(sexPed) then
                        PED.DELETE_PED(sexPed)
                    end
                end)
            end
             data = filteredScenarios[scenario_index+1]
             coords = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), false)
             heading = ENTITY.GET_ENTITY_HEADING(PLAYER.PLAYER_PED_ID())
             forwardX = ENTITY.GET_ENTITY_FORWARD_X(PLAYER.PLAYER_PED_ID())
             forwardY = ENTITY.GET_ENTITY_FORWARD_Y(PLAYER.PLAYER_PED_ID())
            if data.name == "Cook On BBQ" then
                script.run_in_fiber(function()
                    while not STREAMING.HAS_MODEL_LOADED(286252949) do
                        STREAMING.REQUEST_MODEL(286252949)
                        coroutine.yield()
                    end
                    bbq = OBJECT.CREATE_OBJECT(286252949, coords.x + (forwardX), coords.y + (forwardY), coords.z, true, true, false)
                    ENTITY.SET_ENTITY_HEADING(bbq, heading)
                    OBJECT.PLACE_OBJECT_ON_GROUND_PROPERLY(bbq)
                    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.PLAYER_PED_ID())
                    TASK.TASK_START_SCENARIO_IN_PLACE(PLAYER.PLAYER_PED_ID(), data.scenario, -1, true)
                    is_playing_scenario = true
                end)
            else
                script.run_in_fiber(function()
                    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.PLAYER_PED_ID())
                    TASK.TASK_START_SCENARIO_IN_PLACE(PLAYER.PLAYER_PED_ID(), data.scenario, -1, true)
                    is_playing_scenario = true
                    if ENTITY.DOES_ENTITY_EXIST(bbq) then
                        ENTITY.DELETE_ENTITY(bbq)
                    end
                end)
            end
        end
        ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine()
        ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine()
        if ImGui.Button("   Stop   ") then
            if is_playing_scenario then
                script.run_in_fiber(function(script)
                    busyspinner("Stopping scenario...", 3)
                    TASK.CLEAR_PED_TASKS(PLAYER.PLAYER_PED_ID())
                    is_playing_scenario = false
                    script:sleep(1000)
                    HUD.BUSYSPINNER_OFF()
                    if ENTITY.DOES_ENTITY_EXIST(bbq) then
                        ENTITY.DELETE_ENTITY(bbq)
                    end
                end)
            end
        end
        widgetToolTip(false, "TIP: You can also stop scenarios by pressing [G] on keyboard or [DPAD LEFT] on controller.")
        ImGui.Separator()
        ImGui.Text("Play Scenarios On NPCs:")
        ImGui.SameLine()
        coloredText("[Work In Progress]", {247, 185, 104, 0.78})
        ImGui.PushItemWidth(200)
        displayNpcs()
        ImGui.PopItemWidth()
        ImGui.SameLine()
         npcData = filteredNpcs[npc_index + 1]
        npc_godMode, used = ImGui.Checkbox("Invincible", npc_godMode, true)
        widgetToolTip(false, "Spawn NPCs in godmode.")
        if ImGui.Button("Spawn") then
             pedCoords = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), false)
             pedHeading = ENTITY.GET_ENTITY_HEADING(PLAYER.PLAYER_PED_ID())
             pedForwardX = ENTITY.GET_ENTITY_FORWARD_X(PLAYER.PLAYER_PED_ID())
             pedForwardY = ENTITY.GET_ENTITY_FORWARD_Y(PLAYER.PLAYER_PED_ID())
            script.run_in_fiber(function(script)
                while not STREAMING.HAS_MODEL_LOADED(npcData.hash) do
                    STREAMING.REQUEST_MODEL(npcData.hash)
                    coroutine.yield()
                end
                npc = PED.CREATE_PED(npcData.group, npcData.hash, 0.0, 0.0, 0.0, 0.0, true, false)
                ENTITY.SET_ENTITY_INVINCIBLE(npc, true)
                ENTITY.SET_ENTITY_COORDS_NO_OFFSET(npc, pedCoords.x + pedForwardX * 1.4, pedCoords.y + pedForwardY * 1.4, pedCoords.z, true, false, false)
                ENTITY.SET_ENTITY_HEADING(npc, pedHeading - 180)
                table.insert(spawned_npcs, npc)
                npcNetID2 = NETWORK.NETWORK_GET_NETWORK_ID_FROM_ENTITY(npc)
                controlled = entities.take_control_of(npc, 300)
                entToNet(npcNetID2)
                TASK.TASK_FOLLOW_TO_OFFSET_OF_ENTITY(npc, PLAYER.PLAYER_PED_ID(), 0.5, 0.5, 0.0, -1, -1, 1.4, true)
                PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(npc, true) --keeps them from acting like pussies and running away.
                -- TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(npc, true) --complements the previous native but in this case it stops them from following the player.
            end)
        end
        ImGui.SameLine()
        if ImGui.Button("Delete") then
            script.run_in_fiber(function()
                if ENTITY.DOES_ENTITY_EXIST(npc) then
                    PED.DELETE_PED(npc)
                end
                for k, v in ipairs(spawned_npcs) do
                    if ENTITY.DOES_ENTITY_EXIST(v) then
                        ENTITY.DELETE_ENTITY(v)
                    end
                    table.remove(spawned_npcs, k)
                end
            end)
        end
        ImGui.SameLine()
        if ImGui.Button(" Play On NPC ") then
            if spawned_npcs[1] ~= nil then
                if is_playing_anim then
                    cleanupNPC()
                end
                 data = filteredScenarios[scenario_index+1]
                for _, v in ipairs(spawned_npcs) do
                     npcCoords = ENTITY.GET_ENTITY_COORDS(v, false)
                     npcHeading = ENTITY.GET_ENTITY_HEADING(v)
                     npcForwardX = ENTITY.GET_ENTITY_FORWARD_X(v)
                     npcForwardY = ENTITY.GET_ENTITY_FORWARD_Y(v)
                    if data.name == "Cook On BBQ" then
                        script.run_in_fiber(function()
                            while not STREAMING.HAS_MODEL_LOADED(286252949) do
                                STREAMING.REQUEST_MODEL(286252949)
                                coroutine.yield()
                            end
                            bbq = OBJECT.CREATE_OBJECT(286252949, npcCoords.x + (npcForwardX), npcCoords.y + (npcForwardY), npcCoords.z, true, true, false)
                            ENTITY.SET_ENTITY_HEADING(bbq, npcHeading)
                            OBJECT.PLACE_OBJECT_ON_GROUND_PROPERLY(bbq)
                            TASK.CLEAR_PED_TASKS_IMMEDIATELY(v)
                            TASK.TASK_START_SCENARIO_IN_PLACE(v, data.scenario, -1, true)
                            is_playing_scenario = true
                        end)
                    else
                        script.run_in_fiber(function()
                            TASK.CLEAR_PED_TASKS_IMMEDIATELY(v)
                            TASK.TASK_START_SCENARIO_IN_PLACE(v, data.scenario, -1, true)
                            is_playing_scenario = true
                            if ENTITY.DOES_ENTITY_EXIST(bbq) then
                                ENTITY.DELETE_ENTITY(bbq)
                            end
                        end)
                    end
                end
            else
                gui.show_error("YimActions", "Spawn an NPC first!")
            end
        end
        ImGui.SameLine()
        if ImGui.Button("Stop NPC") then
            if is_playing_scenario then
                script.run_in_fiber(function(script)
                    busyspinner("Stopping scenario...", 3)
                    for _, v in ipairs(spawned_npcs) do
                        TASK.CLEAR_PED_TASKS(v)
                        TASK.TASK_FOLLOW_TO_OFFSET_OF_ENTITY(v, PLAYER.PLAYER_PED_ID(), 0.5, 0.5, 0.0, -1, -1, 1.4, true)
                        PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(v, true)
                    end
                    is_playing_scenario = false
                    if ENTITY.DOES_ENTITY_EXIST(bbq) then
                        ENTITY.DELETE_ENTITY(bbq)
                    end
                    script:sleep(800)
                    HUD.BUSYSPINNER_OFF()
                end)
            end
        end
        event.register_handler(menu_event.ScriptsReloaded, function()
            if is_playing_scenario then
                TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.PLAYER_PED_ID())
                TASK.CLEAR_PED_TASKS_IMMEDIATELY(npc)
                is_playing_scenario = false
                if ENTITY.DOES_ENTITY_EXIST(bbq) then
                    ENTITY.DELETE_ENTITY(bbq)
                end
                if spawned_npcs[1] ~= nil then
                    for k, v in ipairs(spawned_npcs) do
                        if ENTITY.DOES_ENTITY_EXIST(v) then
                            ENTITY.DELETE_ENTITY(v)
                        end
                        table.remove(spawned_npcs, k)
                    end
                end
            end
        end)
        event.register_handler(menu_event.MenuUnloaded, function()
            if is_playing_scenario then
                TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.PLAYER_PED_ID())
                is_playing_scenario = false
                if ENTITY.DOES_ENTITY_EXIST(bbq) then
                    ENTITY.DELETE_ENTITY(bbq)
                end
                if spawned_npcs[1] ~= nil then
                    for k, v in ipairs(spawned_npcs) do
                        if ENTITY.DOES_ENTITY_EXIST(v) then
                            ENTITY.DELETE_ENTITY(v)
                        end
                        table.remove(spawned_npcs, k)
                    end
                end
            end
        end)
        ImGui.EndTabItem()
    end
     function progressBar()
        x = x + 0.01
        if x > 1 then
            x = 1
            progessMessage = "Settings Successfully Reset."
        else
            progessMessage = "Please Wait..."
        end
    end
     function displayProgressBar()
        ImGui.Text(progessMessage)
        progressBar()
        ImGui.ProgressBar(x, 250, 25)
    end
    if ImGui.BeginTabItem("Settings") then
        searchBar = false
        ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.SameLine()
        ImGui.Text("     ")
        disableTooltips, used = ImGui.Checkbox("Disable Tooltips", disableTooltips, true)
        widgetToolTip(false, "Well, it disables this thing.")
        phoneAnim, used = ImGui.Checkbox("Enable Phone Animations", phoneAnim, true)
        helpmarker(false, "Restores the disabled phone animations from Single Player.")
        sprintInside, used = ImGui.Checkbox("Sprint Inside Interiors", sprintInside, true)
        helpmarker(false, "Allows you to sprint at full speed inside interiors that do not allow it like the Casino.")
        lockPick, used = ImGui.Checkbox("Use Lockpick Animation", lockPick, true)
        helpmarker(false, "When stealing vehicles, your character will use the lockpick animation instead of breaking the window.")
        usePlayKey, used = ImGui.Checkbox("Use Hotkeys For Animations", usePlayKey, true)
        if not disableTooltips then
            ImGui.SameLine(); ImGui.TextDisabled("(?)")
            if ImGui.IsItemHovered() then
                ImGui.SetNextWindowBgAlpha(0.75)
                ImGui.BeginTooltip()
                ImGui.PushTextWrapPos(ImGui.GetFontSize() * 20)
                ImGui.TextWrapped("Select an animation from the list then use [DELETE] on Keyboard or [X] on Controller to play it while the menu is closed. You can also select the previous/next animation by pressing [PAGE DOWN] to go down the list and [PAGE UP] to go up.\nNOTE: For these hotkeys to work, you have to open Yim_Actions GUI at least once. Browsing the list while the menu is closed is currently not supported for controller.")
                ImGui.PopTextWrapPos()
                coloredText("EXPERIMENTAL: This is the only way to use hotkeys with YimMenu at the moment. This was annoying to implement and it will likely be buggy. If it causes issues for you, disable it from Settings. The stop animation hotkey won't be affected.", {240, 3, 50, 0.8})
                ImGui.EndTooltip()
            end
        end
        ImGui.Spacing() ImGui.SameLine() ImGui.Spacing() ImGui.Spacing() ImGui.SameLine() ImGui.Spacing()
        ImGui.Separator()
        if Button("Reset Settings", {142, 0, 0, 1}, {142, 0, 0, 0.7}, {142, 0, 0, 0.5}) then
            ImGui.OpenPopup("##Progress Bar")
        end
        widgetToolTip(false, "Revert saved settings and disable all checkboxes.")
        ImGui.SetNextWindowBgAlpha(0)
        if ImGui.BeginPopupModal("##Progress Bar", ImGuiWindowFlags.NoMove | ImGuiWindowFlags.NoScrollbar | ImGuiWindowFlags.NoTitleBar | ImGuiWindowFlags.NoScrollWithMouse | ImGuiWindowFlags.AlwaysAutoResize) then
                displayProgressBar()
                resetConfig(default_config)
                if x == 1 then
                    counter = counter + 1
                    if counter > 100 then
                        ImGui.CloseCurrentPopup()
                        counter = 0
                        x = 0
                        resetCheckBoxes()
                    else return
                    end
                end
            ImGui.EndPopup()
        end
        ImGui.EndTabItem()
    else
        searchBar = true
    end
end)
script.register_looped("side features", function(script)
    script:yield()
    if phoneAnim then
        if is_online then
            if not ENTITY.IS_ENTITY_DEAD(PLAYER.PLAYER_PED_ID()) then
                PED.SET_PED_CONFIG_FLAG(PLAYER.PLAYER_PED_ID(), 242, false)
                PED.SET_PED_CONFIG_FLAG(PLAYER.PLAYER_PED_ID(), 243, false)
                PED.SET_PED_CONFIG_FLAG(PLAYER.PLAYER_PED_ID(), 244, false)
                MOBILE.CELL_SET_INPUT(5)
            end
        end
    else
        PED.SET_PED_CONFIG_FLAG(PLAYER.PLAYER_PED_ID(), 242, true)
        PED.SET_PED_CONFIG_FLAG(PLAYER.PLAYER_PED_ID(), 243, true)
        PED.SET_PED_CONFIG_FLAG(PLAYER.PLAYER_PED_ID(), 244, true)
    end
    if sprintInside then
        PED.SET_PED_CONFIG_FLAG(PLAYER.PLAYER_PED_ID(), 427, true)
    else
        PED.SET_PED_CONFIG_FLAG(PLAYER.PLAYER_PED_ID(), 427, false)
    end
    if lockPick then
        PED.SET_PED_CONFIG_FLAG(PLAYER.PLAYER_PED_ID(), 426, true)
    else
        PED.SET_PED_CONFIG_FLAG(PLAYER.PLAYER_PED_ID(), 426, false)
    end
end)
script.register_looped("scenario hotkey", function(hotkey)
    hotkey:yield()
    if is_playing_scenario then
        if PAD.IS_CONTROL_PRESSED(0, 47) then
            script.run_in_fiber(function(script)
                busyspinner("Stopping scenario...", 3)
                TASK.CLEAR_PED_TASKS(PLAYER.PLAYER_PED_ID())
                TASK.CLEAR_PED_TASKS(npc)
                TASK.TASK_FOLLOW_TO_OFFSET_OF_ENTITY(npc, PLAYER.PLAYER_PED_ID(), 0.5, 0.5, 0.0, -1, -1, 1.4, true)
                script:sleep(1000)
                HUD.BUSYSPINNER_OFF()
                if ENTITY.DOES_ENTITY_EXIST(bbq) then
                    ENTITY.DELETE_ENTITY(bbq)
                end
                is_playing_scenario = false
            end)
        end
    end
end)

script.register_looped("animation hotkey", function(script)
    script:yield()
    if is_playing_anim then
        if spawned_npcs[1] ~= nil then
            if PAD.IS_CONTROL_PRESSED(0, 47) then
                for k, v in ipairs(spawned_npcs) do
                    if PED.IS_PED_IN_ANY_VEHICLE(PLAYER.PLAYER_PED_ID(), false) then
                         veh = PED.GET_VEHICLE_PED_IS_USING(PLAYER.PLAYER_PED_ID())
                        cleanup()
                        PED.SET_PED_INTO_VEHICLE(PLAYER.PLAYER_PED_ID(), veh, -1)
                        cleanupNPC()
                        PED.SET_PED_INTO_VEHICLE(v, veh, 0)
                    else
                        cleanup()
                        cleanupNPC()
                         current_coords = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID())
                         npc_coords = ENTITY.GET_ENTITY_COORDS(v)
                        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PLAYER.PLAYER_PED_ID(), current_coords.x, current_coords.y, current_coords.z, true, false, false)
                        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(v, npc_coords.x, npc_coords.y, npc_coords.z, true, false, false)
                        TASK.TASK_FOLLOW_TO_OFFSET_OF_ENTITY(v, PLAYER.PLAYER_PED_ID(), 0.5, 0.5, 0.0, -1, -1, 1.4, true)
                        PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(v, true)
                    end
                end
                is_playing_anim = false
            end
        else
            if PAD.IS_CONTROL_PRESSED(0, 47) then
                cleanup()
                is_playing_anim = false
            end
        end
    end
    if usePlayKey and info ~= nil then
        if PAD.IS_CONTROL_PRESSED(0, 317) then
            anim_index = anim_index + 1
            info = filteredAnims[anim_index + 1]
            if info == nil then
                anim_index = 0
                info = filteredAnims[anim_index + 1]
                gui.show_message("Current Animation:", info.name)
            end
            if info ~= nil then
                gui.show_message("Current Animation:", info.name)
            end
            script:sleep(200) -- average inter-key interval is about what, 250ms? this should be enough.
        elseif PAD.IS_CONTROL_PRESSED(0, 316) and anim_index > 0 then -- prevent going to index 0 which breaks the script.
            anim_index = anim_index - 1
            info = filteredAnims[anim_index + 1]
            gui.show_message("Current Animation:", info.name)
            script:sleep(200)
        elseif PAD.IS_CONTROL_PRESSED(0, 316) and anim_index == 0 then
                info = filteredAnims[anim_index + 1]
                gui.show_warning("Current Animation:", info.name.."\n\nYou have reached the top of the list.")
                script:sleep(400)
        end
        if PAD.IS_CONTROL_PRESSED(0, 256) then
            if not is_playing_anim then
                if info ~= nil then
                     coords = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), false)
                     heading = ENTITY.GET_ENTITY_HEADING(PLAYER.PLAYER_PED_ID())
                     forwardX = ENTITY.GET_ENTITY_FORWARD_X(PLAYER.PLAYER_PED_ID())
                     forwardY = ENTITY.GET_ENTITY_FORWARD_Y(PLAYER.PLAYER_PED_ID())
                     boneIndex = PED.GET_PED_BONE_INDEX(PLAYER.PLAYER_PED_ID(), info.boneID)
                     bonecoords = PED.GET_PED_BONE_COORDS(PLAYER.PLAYER_PED_ID(), info.boneID)
                    if manualFlags then
                        setmanualflag()
                    else
                        flag = info.flag
                    end
                    playSelected(PLAYER.PLAYER_PED_ID(), sexPed, boneIndex, coords, heading, forwardX, forwardY, bonecoords)
                    script:sleep(200)
                end
            else
                PAD.SET_CONTROL_SHAKE(0, 500, 250)
                gui.show_message("Yim_Actions", "Press "..stopButton.." to stop the current animation before playing the next one.")
                script:sleep(800)
            end
        end
    end
end)
-- CasinoPacino - gir489returns
casino_gui = Money:add_tab("Casino")

local blackjack_cards              = 116
local blackjack_decks              = 846
local blackjack_table_players      = 1776
local blackjack_table_players_size = 8

local three_card_poker_table           = 749
local three_card_poker_table_size      = 9
local three_card_poker_cards           = 116
local three_card_poker_current_deck    = 168
local three_card_poker_anti_cheat      = 1038
local three_card_poker_anti_cheat_deck = 799
local three_card_poker_deck_size       = 55

local roulette_master_table   = 124
local roulette_outcomes_table = 1357
local roulette_ball_table     = 153

local slots_random_results_table = 1348
local slots_slot_machine_state   = 1638

local prize_wheel_win_state   = 280
local prize_wheel_prize       = 14
local prize_wheel_prize_state = 45

local gb_casino_heist_planning            = 1964849
local gb_casino_heist_planning_cut_offset = 1497 + 736 + 92

local fm_mission_controller_cart_grab       = 10255
local fm_mission_controller_cart_grab_speed = 14
local fm_mission_controller_cart_autograb   = true

local casino_heist_approach      = 0
local casino_heist_target        = 0
local casino_heist_last_approach = 0
local casino_heist_hard          = 0
local casino_heist_gunman        = 0
local casino_heist_driver        = 0
local casino_heist_hacker        = 0
local casino_heist_weapons       = 0
local casino_heist_cars          = 0
local casino_heist_masks         = 0

casino_gui:add_text("Lucky Wheel")
casino_gui:add_button("Give Podium Vehicle", function ()
    script.run_in_fiber(function (script)
        if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_lucky_wheel")) ~= 0 then
            locals.set_int("casino_lucky_wheel", (prize_wheel_win_state) + (prize_wheel_prize), 18)
            locals.set_int("casino_lucky_wheel", (prize_wheel_win_state) + (prize_wheel_prize_state), 11)
        end
    end)
end)
casino_gui:add_sameline()
casino_gui:add_button("Give Mystery Prize", function ()
    script.run_in_fiber(function (script)
        if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_lucky_wheel")) ~= 0 then
            locals.set_int("casino_lucky_wheel", (prize_wheel_win_state) + (prize_wheel_prize), 11)
            locals.set_int("casino_lucky_wheel", (prize_wheel_win_state) + (prize_wheel_prize_state), 11)
        end
    end)
end)
casino_gui:add_sameline()
casino_gui:add_button("Give $50,000", function ()
    script.run_in_fiber(function (script)
        if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_lucky_wheel")) ~= 0 then
            locals.set_int("casino_lucky_wheel", (prize_wheel_win_state) + (prize_wheel_prize), 19)
            locals.set_int("casino_lucky_wheel", (prize_wheel_win_state) + (prize_wheel_prize_state), 11)
        end
    end)
end)
casino_gui:add_sameline()
casino_gui:add_button("Give 25,000 Chips", function ()
    script.run_in_fiber(function (script)
        if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_lucky_wheel")) ~= 0 then
            locals.set_int("casino_lucky_wheel", (prize_wheel_win_state) + (prize_wheel_prize), 15)
            locals.set_int("casino_lucky_wheel", (prize_wheel_win_state) + (prize_wheel_prize_state), 11)
        end
    end)
end)
casino_gui:add_button("Give 15,000RP", function ()
    script.run_in_fiber(function (script)
        if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_lucky_wheel")) ~= 0 then
            locals.set_int("casino_lucky_wheel", (prize_wheel_win_state) + (prize_wheel_prize), 17)
            locals.set_int("casino_lucky_wheel", (prize_wheel_win_state) + (prize_wheel_prize_state), 11)
        end
    end)
end)
casino_gui:add_sameline()
casino_gui:add_button("Give Discount", function ()
    script.run_in_fiber(function (script)
        if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_lucky_wheel")) ~= 0 then
            locals.set_int("casino_lucky_wheel", (prize_wheel_win_state) + (prize_wheel_prize), 4)
            locals.set_int("casino_lucky_wheel", (prize_wheel_win_state) + (prize_wheel_prize_state), 11)
        end
    end)
end)
casino_gui:add_sameline()
casino_gui:add_button("Give Clothing", function ()
    script.run_in_fiber(function (script)
        if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_lucky_wheel")) ~= 0 then
            locals.set_int("casino_lucky_wheel", (prize_wheel_win_state) + (prize_wheel_prize), 8)
            locals.set_int("casino_lucky_wheel", (prize_wheel_win_state) + (prize_wheel_prize_state), 11)
        end
    end)
end)

casino_gui:add_separator()
casino_gui:add_text("Slots")
bypass_casino_bans = casino_gui:add_checkbox("Bypass Casino Cooldown")
casino_gui:add_sameline()
rig_slot_machine = casino_gui:add_checkbox("Rig Slot Machines")
casino_gui:add_text("THIS IS DETECTED AND BANNABLE USE IT WITH EXTREME CAUTION!")
casino_gui:add_separator()

casino_gui:add_text("Poker") --If his name is Al Pacino and he said, "It's not Al anymore, it's Dunk!", then his name should now be Dunk Pacino.
force_poker_cards = casino_gui:add_checkbox("Force all Players Hands to Royal Flush")
casino_gui:add_sameline()
set_dealers_poker_cards = casino_gui:add_checkbox("Force Dealer's Hand to Bad Beat")
set_dealers_poker_cards:set_enabled(true)

function set_poker_cards(player_id, players_current_table, card_one, card_two, card_three)
    locals.set_int("three_card_poker", (three_card_poker_cards) + (three_card_poker_current_deck) + (1 + (players_current_table * three_card_poker_deck_size)) + (2) + (1) + (player_id * 3), card_one)
    locals.set_int("three_card_poker", (three_card_poker_anti_cheat) + (three_card_poker_anti_cheat_deck) + (1) + (1 + (players_current_table * three_card_poker_deck_size)) + (1) + (player_id * 3), card_one)
    locals.set_int("three_card_poker", (three_card_poker_cards) + (three_card_poker_current_deck) + (1 + (players_current_table * three_card_poker_deck_size)) + (2) + (2) + (player_id * 3), card_two)
    locals.set_int("three_card_poker", (three_card_poker_anti_cheat) + (three_card_poker_anti_cheat_deck) + (1) + (1 + (players_current_table * three_card_poker_deck_size)) + (2) + (player_id * 3), card_two)
    locals.set_int("three_card_poker", (three_card_poker_cards) + (three_card_poker_current_deck) + (1 + (players_current_table * three_card_poker_deck_size)) + (2) + (3) + (player_id * 3), card_three)
    locals.set_int("three_card_poker", (three_card_poker_anti_cheat) + (three_card_poker_anti_cheat_deck) + (1) + (1 + (players_current_table * three_card_poker_deck_size)) + (3) + (player_id * 3), card_three)
end

function get_cardname_from_index(card_index)
    if card_index == 0 then
        return "Rolling"
    end

     card_number = math.fmod(card_index, 13)
     cardName = ""
     cardSuit = ""

    if card_number == 1 then
        cardName = "Ace"
    elseif card_number == 11 then
        cardName = "Jack"
    elseif card_number == 12 then
        cardName = "Queen"
    elseif card_number == 13 then
        cardName = "King"
    else
        cardName = tostring(card_number)
    end

    if card_index >= 1 and card_index <= 13 then
        cardSuit = "Clubs"
    elseif card_index >= 14 and card_index <= 26 then
        cardSuit = "Diamonds"
    elseif card_index >= 27 and card_index <= 39 then
        cardSuit = "Hearts"
    elseif card_index >= 40 and card_index <= 52 then
        cardSuit = "Spades"
    end

    return cardName .. " of " .. cardSuit
end

casino_gui:add_separator()
casino_gui:add_text("Blackjack")
casino_gui:add_text("Dealer's face down card: ")
casino_gui:add_sameline()
dealers_card_gui_element = casino_gui:add_input_string("##dealers_card_gui_element")

casino_gui:add_button("Set Dealer's Hand To Bust", function()
    script.run_in_fiber(function (script)
         player_id = PLAYER.PLAYER_ID()
        while NETWORK.NETWORK_GET_HOST_OF_SCRIPT("blackjack", -1, 0) ~= player_id and NETWORK.NETWORK_GET_HOST_OF_SCRIPT("blackjack", 0, 0) ~= player_id and NETWORK.NETWORK_GET_HOST_OF_SCRIPT("blackjack", 1, 0) ~= player_id and NETWORK.NETWORK_GET_HOST_OF_SCRIPT("blackjack", 2, 0) ~= player_id and NETWORK.NETWORK_GET_HOST_OF_SCRIPT("blackjack", 3, 0) ~= player_id do
            network.force_script_host("blackjack")
            gui.show_message("CasinoPacino", "Taking control of the blackjack script.") --If you see this spammed, someone if fighting you for control.
            script:yield()
        end
         blackjack_table = locals.get_int("blackjack", blackjack_table_players + 1 + (player_id * 8) + 4) --The Player's current table he is sitting at.
        if blackjack_table ~= -1 then
            locals.set_int("blackjack", blackjack_cards + blackjack_decks + 1 + (blackjack_table * 13) + 1, 11)
            locals.set_int("blackjack", blackjack_cards + blackjack_decks + 1 + (blackjack_table * 13) + 2, 12)
            locals.set_int("blackjack", blackjack_cards + blackjack_decks + 1 + (blackjack_table * 13) + 3, 13)
            locals.set_int("blackjack", blackjack_cards + blackjack_decks + 1 + (blackjack_table * 13) + 12, 3)
        end
    end)
end)

casino_gui:add_separator()
casino_gui:add_text("Roulette")
force_roulette_wheel = casino_gui:add_checkbox("Activate Roulette Rig")

 player_id = PLAYER.PLAYER_ID()

        casVal = 1
        casino_gui:add_imgui(function()
            casVal, used2 = ImGui.SliderInt("Betting Number", casVal, 1, 36)
            if used2 then
                valz = casVal
            end
        end)

casino_gui:add_separator()
casino_gui:add_text("Using these options are risky, especially if you use the cooldown bypass")

script.register_looped("Casino Pacino Thread", function (script)
    if force_poker_cards:is_enabled() then
         player_id = PLAYER.PLAYER_ID()
        if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("three_card_poker")) ~= 0 then
            while NETWORK.NETWORK_GET_HOST_OF_SCRIPT("three_card_poker", -1, 0) ~= player_id and NETWORK.NETWORK_GET_HOST_OF_SCRIPT("three_card_poker", 0, 0) ~= player_id and NETWORK.NETWORK_GET_HOST_OF_SCRIPT("three_card_poker", 1, 0) ~= player_id and NETWORK.NETWORK_GET_HOST_OF_SCRIPT("three_card_poker", 2, 0) ~= player_id and NETWORK.NETWORK_GET_HOST_OF_SCRIPT("three_card_poker", 3, 0) ~= player_id do
                network.force_script_host("three_card_poker")
                gui.show_message("CasinoPacino", "Taking control of the three_card_poker script.") --If you see this spammed, someone if fighting you for control.
                script:sleep(500)
            end
             players_current_table = locals.get_int("three_card_poker", three_card_poker_table + 1 + (player_id * 9) + 2) --The Player's current table he is sitting at.
            if (players_current_table ~= -1) then -- If the player is sitting at a poker table
                 player_0_card_1 = locals.get_int("three_card_poker", (three_card_poker_cards) + (three_card_poker_current_deck) + (1 + (players_current_table * three_card_poker_deck_size)) + (2) + (1) + (0 * 3))
                 player_0_card_2 = locals.get_int("three_card_poker", (three_card_poker_cards) + (three_card_poker_current_deck) + (1 + (players_current_table * three_card_poker_deck_size)) + (2) + (2) + (0 * 3))
                 player_0_card_3 = locals.get_int("three_card_poker", (three_card_poker_cards) + (three_card_poker_current_deck) + (1 + (players_current_table * three_card_poker_deck_size)) + (2) + (3) + (0 * 3))
                if player_0_card_1 ~= 50 or player_0_card_2 ~= 51 or player_0_card_3 ~= 52 then --Check if we need to overwrite the deck.
                     total_players = 0
                    for player_iter = 0, 31, 1 do
                         player_table = locals.get_int("three_card_poker", three_card_poker_table + 1 + (player_iter * 9) + 2)
                        if player_iter ~= player_id and player_table == players_current_table then --An additional player is sitting at the user's table.
                            total_players = total_players + 1
                        end
                    end
                    for playing_player_iter = 0, total_players, 1 do
                        set_poker_cards(playing_player_iter, players_current_table, 50, 51, 52)
                    end
                    if set_dealers_poker_cards:is_enabled() then
                        set_poker_cards(total_players + 1, players_current_table, 1, 8, 22)
                    end
                end
            end
        end
    end
    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("blackjack")) ~= 0 then
         dealers_card = 0
         blackjack_table = locals.get_int("blackjack", blackjack_table_players + 1 + (PLAYER.PLAYER_ID() * 8) + 4) --The Player's current table he is sitting at.
        if blackjack_table ~= -1 then
            dealers_card = locals.get_int("blackjack", blackjack_cards + blackjack_decks + 1 + (blackjack_table * 13) + 1) --Dealer's facedown card.
            dealers_card_gui_element:set_value(get_cardname_from_index(dealers_card))
        else
            dealers_card_gui_element:set_value("Not sitting at a Blackjack table.")
        end
    else
        dealers_card_gui_element:set_value("Not in Casino.")
    end
    if force_roulette_wheel:is_enabled() then
          player_id = PLAYER.PLAYER_ID()
        if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casinoroulette")) ~= 0 then
            while NETWORK.NETWORK_GET_HOST_OF_SCRIPT("casinoroulette", -1, 0) ~= player_id and NETWORK.NETWORK_GET_HOST_OF_SCRIPT("casinoroulette", 0, 0) ~= player_id and NETWORK.NETWORK_GET_HOST_OF_SCRIPT("casinoroulette", 1, 0) ~= player_id and NETWORK.NETWORK_GET_HOST_OF_SCRIPT("casinoroulette", 2, 0) ~= player_id and NETWORK.NETWORK_GET_HOST_OF_SCRIPT("casinoroulette", 3, 0) ~= player_id do
                network.force_script_host("casinoroulette")
                gui.show_message("CasinoPacino", "Taking control of the casinoroulette script.") --If you see this spammed, someone if fighting you for control.
                script:sleep(500)
            end
            for tabler_iter = 0, 6, 1 do
                locals.set_int("casinoroulette", (roulette_master_table) + (roulette_outcomes_table) + (roulette_ball_table) + (tabler_iter), casVal)
                gui.show_message("CasinoPacino Activated!", "Winning Number: "..casVal)
            end
        end
    end

    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("casino_slots")) ~= 0 then
         needs_run = false
        if rig_slot_machine:is_enabled() then
            for slots_iter = 3, 195, 1 do
                if slots_iter ~= 67 and slots_iter ~= 132 then
                    if locals.get_int("casino_slots", (slots_random_results_table) + (slots_iter)) ~= 6 then
                        needs_run = true
                    end
                end
            end
        else
             sum = 0
            for slots_iter = 3, 195, 1 do
                if slots_iter ~= 67 and slots_iter ~= 132 then
                    sum = sum + locals.get_int("casino_slots", (slots_random_results_table) + (slots_iter))
                end
            end
            needs_run = sum == 1146
        end
        if needs_run then
            for slots_iter = 3, 195, 1 do
                if slots_iter ~= 67 and slots_iter ~= 132 then
                     slot_result = 6
                    if rig_slot_machine:is_enabled() == false then
                        math.randomseed(os.time()+slots_iter)
                        slot_result = math.random(0, 7)
                    end
                    locals.set_int("casino_slots", (slots_random_results_table) + (slots_iter), slot_result)
                end
            end
        end
    end
    if bypass_casino_bans:is_enabled() then
        STATS.STAT_SET_INT(joaat("MPPLY_CASINO_CHIPS_WON_GD"), 0, true)
    end
    if gui.is_open() and casino_gui:is_selected() then
        casino_heist_approach = stats.get_int("MPX_H3OPT_APPROACH")
        casino_heist_target = stats.get_int("MPX_H3OPT_TARGET")
        casino_heist_last_approach = stats.get_int("MPX_H3_LAST_APPROACH")
        casino_heist_hard = stats.get_int("MPX_H3_HARD_APPROACH")
        casino_heist_gunman = stats.get_int("MPX_H3OPT_CREWWEAP")
        casino_heist_driver = stats.get_int("MPX_H3OPT_CREWDRIVER")
        casino_heist_hacker = stats.get_int("MPX_H3OPT_CREWHACKER")
        casino_heist_weapons = stats.get_int("MPX_H3OPT_WEAPS")
        casino_heist_cars = stats.get_int("MPX_H3OPT_VEHS")
        casino_heist_masks = stats.get_int("MPX_H3OPT_MASKS")
    end
    if HUD.IS_PAUSE_MENU_ACTIVE() then
        PAD.DISABLE_CONTROL_ACTION(0, 348, true)
        PAD.DISABLE_CONTROL_ACTION(0, 204, true)
    end
    if fm_mission_controller_cart_autograb then
        if locals.get_int("fm_mission_controller", fm_mission_controller_cart_grab) == 3 then
            locals.set_int("fm_mission_controller", fm_mission_controller_cart_grab, 4)
        elseif locals.get_int("fm_mission_controller", fm_mission_controller_cart_grab) == 4 then
            locals.set_float("fm_mission_controller", fm_mission_controller_cart_grab + fm_mission_controller_cart_grab_speed, 2)
        end
    end
end)

casino_gui:add_button("Broadcast Msg", function()
    script.run_in_fiber(function(casMsg)
        if dealers_card_gui_element:get_value() ~= "Not in Casino." then
            if force_roulette_wheel:is_enabled() then
                network.send_chat_message("[Casino Rig]: Make sure you own a Casino Penthouse OR you are in a CEO with someone who does AND that you have 50k+ chips before playing!")
                network.send_chat_message("[Casino Rig]: Roulette tables are rigged at the casino!  Come to the casino for easy money!")
            else
                gui.show_message("Error", "Roulette Rig is not enabled, enable it first!")
            end
        else
            gui.show_message("Error", "You need to be in the casino near the tables to use this")
        end
        sleep(2)
    end)
end)
casino_gui:add_sameline()
casino_gui:add_button("How To Bet", function()
    script.run_in_fiber(function(casMsg2)
        if dealers_card_gui_element:get_value() ~= "Not in Casino." then
            if force_roulette_wheel:is_enabled() then
                if casVal == -1 then
                    casVal = "00"
                end
                network.send_chat_message("[Casino Rig]: Max your bet, put 1 chip on "..casVal.." THEN stack as many chips as you can on the corresponding '2 to 1' in the same row as the "..casVal.." number")
            else
                gui.show_message("Error", "Roulette Rig is not enabled, enable it first!")
            end
        else
            gui.show_message("Error", "You need to be in the casino near the tables to use this")
        end
        sleep(2)
    end)
end)
casino_gui:add_sameline()
casino_gui:add_button("Alt Betting Info", function()
    script.run_in_fiber(function(casMsg2)
        if dealers_card_gui_element:get_value() ~= "Not in Casino." then
            if force_roulette_wheel:is_enabled() then
                network.send_chat_message("[Casino Rig]: You can optionally stack as many chips as you can on the corresponding '1st 12, 2nd 12 or 3rd 12' in the same row as the "..casVal.." number instead of '2 to 1'")
            else
                gui.show_message("Error", "Roulette Rig is not enabled, enable it first!")
            end
        else
            gui.show_message("Error", "You need to be in the casino near the tables to use this")
        end
        sleep(2)
    end)
end)

casino_gui:add_separator()
casino_gui:add_text("Everything except for Slot rig works for everyone.")
-- Instant Money Loops - Pessi v2
local TransactionManager <const> = {};
TransactionManager.__index = TransactionManager

function TransactionManager:New()
     self = setmetatable({}, TransactionManager);
-- hashes for other loops in case you wanted to change the ones I added, or add more options.
    self.m_transactions = {
        {label = "15M (Bend Job Limited)", hash = 0x176D9D54},
        {label = "15M (Bend Bonus Limited)", hash = 0xA174F633},
        {label = "7M (Gang Money Limited)", hash = 0xED97AFC1},
        {label = "3.6M (Casino Heist Money Limited)", hash = 0xB703ED29},
        {label = "2.5M (Gang Money Limited)", hash = 0x46521174},
        {label = "2.5M (Island Heist Money Limited)", hash = 0xDBF39508},
        {label = "2M (Heist Awards Money Limited)", hash = 0x8107BB89},
        {label = "2M (Tuner Robbery Money Limited)", hash = 0x921FCF3C},
        {label = "2M (Business Hub Money Limited)", hash = 0x4B6A869C},
        {label = "1M (Avenger Operations Money Limited)", hash = 0xE9BBC247},
        {label = "1M (Daily Objective Event Money Limited)", hash = 0x314FB8B0},
        {label = "1M (Daily Objective Money Limited)", hash = 0xBFCBE6B6},
        {label = "680K (Betting Money Limited)", hash = 0xACA75AAE},
        {label = "500K (Juggalo Story Money Limited)", hash = 0x05F2B7EE},
        {label = "310K (Vehicle Export Money Limited)", hash = 0xEE884170},
        {label = "200K (DoomsDay Finale Bonus Money Limited)", hash = 0xBA16F44B},
        {label = "200K (Action Figures Money Limited)",  hash = 0x9145F938},
        {label = "200K (Collectibles Money Limited)",    hash = 0xCDCF2380},
        {label = "190K (Vehicle Sales Money Limited)",   hash = 0xFD389995}
    }

    return self;
end

function TransactionManager:GetPrice(hash, category)
    return tonumber(NETSHOPPING.NET_GAMESERVER_GET_PRICE(hash, category, true))
end

function TransactionManager:TriggerTransaction(hash, amount)
    globals.set_int(4537311 + 1, 2147483646)
    globals.set_int(4537311 + 7, 2147483647)
    globals.set_int(4537311 + 6, 0)
    globals.set_int(4537311 + 5, 0)
    globals.set_int(4537311 + 3, hash)
    globals.set_int(4537311 + 2, amount or self:GetPrice(hash, 0x57DE404E))
    globals.set_int(4537311, 1)
end

 millLoop = Money:add_tab("Loops")
millLoop:add_text("Money Loops (SEVERELY RISKY!)")
oneMillLoop = millLoop:add_checkbox("180k Loop")
script.register_looped("onemLoop", function(script)
    script:yield()
    if oneMillLoop:is_enabled() == true then
        onemLoop = not onemLoop
        if onemLoop then
            TransactionManager:TriggerTransaction(0x615762F1)
                script:yield();
            gui.show_message("Money Loop", "180k loop running, enjoy the easy money!")
        end
    end
end)
toolTip(millLoop, "Runs a $180,000 loop, will run until its deactivated, does not add to earned or overall income.")

millLoop:add_sameline()
millLoop:add_button("2.5M (1 time)", function()
    script.run_in_fiber(function(script)
        TransactionManager:TriggerTransaction(0xDBF39508)
        gui.show_message("Money Loop", "Gained 2.5 million (1 time)")
    end)
end)
toolTip(millLoop, "Gives you 2.5 Million")

millLoop:add_sameline()
millLoop:add_button("3.6M (1 time)", function()
    script.run_in_fiber(function(script)
        TransactionManager:TriggerTransaction(0xB703ED29)
        gui.show_message("Money Loop", "Gained 3.6 million (1 time)")
    end)
end)
toolTip(millLoop, "Gives you 3.6 Million (1 time)")

millLoop:add_sameline()
millLoop:add_button("7M (1 time)", function()
    script.run_in_fiber(function(script)
        TransactionManager:TriggerTransaction(0xED97AFC1)
        gui.show_message("Money Loop", "Gained 7 Million (1 time)")
    end)
end)
toolTip(millLoop, "Gives you 7 million (1 time)")

millLoop:add_sameline()
millLoop:add_button("15M (1 time)", function()
    script.run_in_fiber(function(script)
        TransactionManager:TriggerTransaction(0x176D9D54)
        gui.show_message("Money Loop", "Gained 15 million (1 time)")
    end)
end)
toolTip(millLoop, "Gives you 15 Million (1 time)")

moneyRemover = Money:add_tab("Money Remover")

removerInput = moneyRemover:add_input_int("Ballistic Equipment")

moneyRemover:add_button("Set Amount", function()
    if removerInput:get_value() <= 500 then
        gui.show_error("Money Remover", "Amount Must Be Greater Than 500")
    else
        globals.set_int(262145 + 20024, removerInput:get_value())
        gui.show_message("Money Remover", "Amount Successfully Set")
    end
end)
toolTip(moneyRemover, "Sets the Ballistic Equipment price to the value above, once set, purchase the ballistic equipment inside your interaction menu")
toolTip(moneyRemover, "'Health and Ammo -> Ballistic Equipment Services -> Request Ballistic Equipment'")
moneyRemover:add_sameline()
moneyRemover:add_button("Unlock Ballistic Equipment", function()
script.run_in_fiber(function(script)
    unlock_packed_bools(9461, 9481) --Ballistic Equipment, LS UR T-Shirt, Non-Stop-Pop FM T-Shirt, Radio Los Santos T-Shirt, Los Santos Rock Radio T-Shirt, Blonded Los Santos 97.8 FM T-Shirt, West Coast Talk Radio T-Shirt, Radio Mirror Park T-Shirt, Rebel Radio T-Shirt, Channel X T-Shirt, Vinewood Boulevard Radio T-Shirt, FlyLo FM T-Shirt, Space 103.2 T-Shirt, West Coast Classics T-Shirt, East Los FM T-Shirt, The Lab T-Shirt, The Lowdown 91.1 T-Shirt, WorldWide FM T-Shirt, Soulwax FM T-Shirt, Blue Ark T-Shirt, Blaine County Radio T-Shirt
        unlock_packed_bools(15381, 15382) --APC SAM Battery, Ballistic Equipment
    gui.show_message("Ballistic Equipment", "Successfully unlocked, Open your interaction menu and request it to remove your money")
end)
end)
toolTip(moneyRemover, "Unlocks the Ballistic Equipment if its not unlocked through bunker research")
-- Object Spawner (Can be used negatively!) (Originally from Kuter Menu)

-- Function to convert object names to hashes using joaat()
 function getObjectHashes(names)
     hashes = {}
    for _, name in ipairs(names) do
         hash = joaat(name)
        table.insert(hashes, hash)
    end
    return hashes
end

-- Get object hashes
 objectHashes = getObjectHashes(objectNames)

 Obje = Zephyr:add_tab("Object Options")
 Objets = Obje:add_tab("Spawner")

 local orientationPitch = 0
 local orientationYaw = 0
 local orientationRoll = 0
 local spawnDistance = { x = 0, y = 0, z = 0 }
 local defaultOrientationPitch = 0
 local defaultOrientationYaw = 0
 local defaultOrientationRoll = 0
 local defaultSpawnDistance = { x = 0, y = 0, z = 0 }

 local defaultObjSpawnDistance = 3.0  -- Adjust this distance as needed
 local objSpawnDistance = 3.0  -- Adjust this distance as needed

 local previewAlpha = 175
 local defaultPreviewAlpha = 175

-- Function to reset sliders to default values
 function resetSliders()
    orientationPitch = defaultOrientationPitch
    orientationYaw = defaultOrientationYaw
    orientationRoll = defaultOrientationRoll
    spawnDistance.x = defaultSpawnDistance.x
    spawnDistance.y = defaultSpawnDistance.y
    spawnDistance.z = defaultSpawnDistance.z
    objSpawnDistance = defaultObjSpawnDistance
    previewAlpha = defaultPreviewAlpha
end

--[[
---@class Preview
Preview = {handle = 0, modelHash = 0}
Preview.__index = Preview

---@param modelHash Hash
---@return Preview
function Preview.new(modelHash)
     self = setmetatable({}, Preview)
    self.modelHash = modelHash
    return self
end

---@param pos v3
function Preview:create(pos, heading)
    if self:exists() then return end
    self.handle = VEHICLE.CREATE_VEHICLE(self.modelHash, pos.x, pos.y, pos.z, heading, false, false, false)
    ENTITY.SET_ENTITY_ALPHA(self.handle, 153, true)
    ENTITY.SET_ENTITY_COLLISION(self.handle, false, false)
    ENTITY.SET_CAN_CLIMB_ON_ENTITY(self.handle, false)
end--]]


Objets:add_imgui(function()
    orientationPitch, used = ImGui.SliderInt("Pitch", orientationPitch, 0, 360)
    toolTip("", "Change the Pitch of the object (Side to Side Axis)")
    orientationYaw, used = ImGui.SliderInt("Yaw", orientationYaw, 0, 360)
    toolTip("", "Change the Yaw of the object (Vertical Axis)")
    orientationRoll, used = ImGui.SliderInt("Roll", orientationRoll, 0, 360)
    toolTip("", "Change the Roll of the object (Front to Back Axis)")
end)
Objets:add_imgui(function()
    spawnDistance.x, used = ImGui.SliderFloat("Spawn Distance X", spawnDistance.x, -25, 25)
    toolTip("", "Change the X coordinates of where the object spawns (Left/Right depending on direction you are facing)")
    spawnDistance.y, used = ImGui.SliderFloat("Spawn Distance Y", spawnDistance.y, -25, 25)
    toolTip("", "Change the Y coordinates of where the object spawns (Forward/Backwards depending on direction you are facing)")
    spawnDistance.z, used = ImGui.SliderFloat("Spawn Distance Z", spawnDistance.z, -25, 25)
    toolTip("", "Change the Z coordinates of where the object spawns (Up/Down)")
    objSpawnDistance, sdChanged = ImGui.SliderFloat("Distance", objSpawnDistance, 0, 25)
    toolTip("", "Distance between the object and the player.")
end)

Objets:add_imgui(function()
    previewAlpha, alphaChanged = ImGui.SliderInt("Preview Alpha", previewAlpha, 0, 255)
end)

-- Save default values
defaultOrientationPitch = orientationPitch
defaultOrientationYaw = orientationYaw
defaultOrientationRoll = orientationRoll
defaultSpawnDistance.x = spawnDistance.x
defaultSpawnDistance.y = spawnDistance.y
defaultSpawnDistance.z = spawnDistance.z

-- Reset Sliders button
Objets:add_button("Reset Sliders", function()
    resetSliders()
end)
toolTip(Objets, "Resets the positioning sliders to the default values")

Objets:add_separator()
-- Objects hashes/names, add to this list (top of file) to have more objects in your listbox on YimMenu
 adultesItems = {}

for i, hash in ipairs(objectHashes) do
    table.insert(adultesItems, { hash = hash, nom = objectNames[i] })
end

 selectedObjectIndex = 0

Objets:add_text("Object Spawner")

-- Add search input field
 searchQuery = ""
Objets:add_imgui(function()
    if is_typing then
        PAD.DISABLE_ALL_CONTROL_ACTIONS(0)
    end
    searchQuery, used = ImGui.InputText("Search Objects", searchQuery, 128)
     if ImGui.IsItemActive() then
        is_typing = true
    else
        is_typing = false
    end
end)
toolTip(Objets, "Search for an object to spawn (Example: container or cage)")

 filteredItems = {}

-- Function to update filtered items based on search query
 function updateFilteredItems()
    filteredItems = {}
    for _, item in ipairs(adultesItems) do
        if string.find(string.lower(item.nom), string.lower(searchQuery)) then
            table.insert(filteredItems, item)
        end
    end
end

-- Function to display the filtered list
 function displayFilteredList()
    updateFilteredItems()

     itemNames = {}
    for _, item in ipairs(filteredItems) do
        table.insert(itemNames, item.nom)
    end
    selectedObjectIndex, used = ImGui.ListBox("", selectedObjectIndex, itemNames, #filteredItems)
end

Objets:add_imgui(displayFilteredList)

Objets:add_separator()

spawnedObjects = {}
names = {}

previewObjects = Objets:add_checkbox("Preview")
toolTip(Objets, "Show a Preview Of The Object Before Spawning It")

previewSpawned = false

previewObject = nil

previousPreview = nil

script.register_looped("objectsPreview", function()
    if not Objets:is_selected() then
        previewObjects:set_enabled(false)
    end
    if previewObjects:is_enabled() then
         selectedObjectInfo = filteredItems[selectedObjectIndex + 1]
        if selectedObjectInfo then
            -- Get the player's ped handle
             playerPed = PLAYER.GET_PLAYER_PED(network.get_selected_player())

            -- Get the player's current position and orientation
             playerPos = ENTITY.GET_ENTITY_COORDS(playerPed, true)
             playerHeading = ENTITY.GET_ENTITY_HEADING(playerPed)
             forwardVector = ENTITY.GET_ENTITY_FORWARD_VECTOR(playerPed)

            -- Calculate the spawn distance and offset
             spawnOffsetX = objSpawnDistance * forwardVector.x
             spawnOffsetY = objSpawnDistance * forwardVector.y

            -- Calculate the spawn position based on the offset
             spawnX = playerPos.x + spawnOffsetX
             spawnY = playerPos.y + spawnOffsetY
             spawnZ = playerPos.z  -- Adjust the height if needed

            -- Spawn the object at the calculated position
             objectHash = selectedObjectInfo.hash  -- Replace with the object hash or model name
            while not STREAMING.HAS_MODEL_LOADED(objectHash) do
                STREAMING.REQUEST_MODEL(objectHash)
                coroutine.yield()
            end
            if previewObject ~= objectHash and previewObject ~= nil then
                delete_entity(previewObject)
                previewSpawned = false
            end
            if not previewSpawned then
                 spawnedObject = OBJECT.CREATE_OBJECT(objectHash, spawnX, spawnY, spawnZ, true, true, false)
                ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(spawnedObject)
                ENTITY.SET_ENTITY_ROTATION(spawnedObject, 0, 0, playerHeading, 2, true)  -- Adjust rotation if needed
                ENTITY.SET_ENTITY_ALPHA(spawnedObject, 175, true)
                ENTITY.SET_ENTITY_COLLISION(spawnedObject, false, false)
                ENTITY.SET_CAN_CLIMB_ON_ENTITY(spawnedObject, false)
                previewSpawned = true
                previewObject = spawnedObject
            end
            ENTITY.SET_ENTITY_COORDS(previewObject, spawnX + spawnDistance.x, spawnY + spawnDistance.y, spawnZ + spawnDistance.z, true, false, false, false)
            ENTITY.SET_ENTITY_ROTATION(previewObject, orientationRoll, orientationYaw, playerHeading + orientationPitch, 2, true)
            ENTITY.SET_ENTITY_ALPHA(previewObject, previewAlpha, true)
            --gui.show_message("Preview", "Moved ".. selectedObjectInfo.nom.. " to ".. tostring(spawnX).. ", ".. tostring(spawnY))
            previousPreview = objectHash
        else
            gui.show_message("Object Spawner", "Selected object not found.")
        end
    else
        if previewObject ~= nil then if ENTITY.DOES_ENTITY_EXIST(previewObject) then delete_entity(previewObject) end end
        previewSpawned = false
        previewObject = nil
        previousPreview = nil
    end
end)

Objets:add_sameline()

Objets:add_imgui(function()
    --objSpawnDistance, sdChanged = ImGui.SliderFloat("Distance", objSpawnDistance, 0, 25)
end)

Objets:add_button("Spawn Selected", function()
    script.run_in_fiber(function(spawnObj)
        selectedObjectInfo = filteredItems[selectedObjectIndex + 1]
        if selectedObjectInfo then
            -- Get the player's ped handle
             playerPed = PLAYER.GET_PLAYER_PED(network.get_selected_player())
            playerName = PLAYER.GET_PLAYER_NAME(network.get_selected_player())

            -- Get the player's current position and orientation
             playerPos = ENTITY.GET_ENTITY_COORDS(playerPed, true)
             playerHeading = ENTITY.GET_ENTITY_HEADING(playerPed)
             forwardVector = ENTITY.GET_ENTITY_FORWARD_VECTOR(playerPed)

            -- Calculate the spawn distance and offset
             spawnOffsetX = objSpawnDistance * forwardVector.x
             spawnOffsetY = objSpawnDistance * forwardVector.y

            -- Calculate the spawn position based on the offset
             spawnX = playerPos.x + spawnOffsetX
             spawnY = playerPos.y + spawnOffsetY
             spawnZ = playerPos.z - 1.15  -- Adjust the height if needed

            -- Spawn the object at the calculated position
             objectHash = selectedObjectInfo.hash  -- Replace with the object hash or model name
            while not STREAMING.HAS_MODEL_LOADED(objectHash) do
                STREAMING.REQUEST_MODEL(objectHash)
                coroutine.yield()
            end
            spawnedObject = OBJECT.CREATE_OBJECT(objectHash, spawnX + spawnDistance.x, spawnY + spawnDistance.y, spawnZ + spawnDistance.z, true, true, false)
            ENTITY.SET_ENTITY_ROTATION(spawnedObject, orientationRoll, orientationYaw, playerHeading + orientationPitch, 2, true)  -- Adjust rotation if needed

            net_id = NETWORK.OBJ_TO_NET(spawnedObject)
            NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(net_id, true)
            gui.show_message("Object Spawner", "Spawned object "..selectedObjectInfo.nom.." on "..playerName)
            STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(spawnedObject)
            table.insert(spawnedObjects, spawnedObject)
            table.insert(names, selectedObjectInfo.nom)
        else
            gui.show_message("Object Spawner", "Selected object not found.")
        end
        sleep(5)
    end)
end)
toolTip(Objets, "Spawn the selected item on the selected players position, if no player is targeted, it spawns on you")

objects = 0

Objets:add_imgui(function()
    for i, object in ipairs(spawnedObjects) do
        if not ENTITY.DOES_ENTITY_EXIST(object) then
            delete_entity(object)
            table.remove(spawnedObjects, i)
            table.remove(names, i)
        end
    end
    if #names == 0 then
        objects = ImGui.Combo("", 0, {"Empty"}, 1)
        toolTip("", "Spawned Objects Will Be Here")
    else
        objects = ImGui.Combo("", objects, names, #names)
        toolTip("", "List Of Spawned Objects")
        gui.show_message("Spawned Objects", tostring(objects).. " + ".. tostring(names[objects + 1]).. " ".. ENTITY.GET_ENTITY_MODEL(spawnedObjects[objects + 1]))
    end
    ImGui.SameLine()
    if ImGui.Button("Delete") then
        gui.show_message("Delete", "Deleted ".. spawnedObjects[objects + 1])
        delete_entity(spawnedObjects[objects + 1])
        table.remove(spawnedObjects, objects + 1)
        table.remove(names, objects + 1)
        --if names[objects] == nil then objects = objects - 1 end
    end
    if #spawnedObjects ~= 0 then toolTip("", "Delete This Spawned Object") else toolTip("", "Deletes A Spawned Object") end
    if #names > 0 then
        objLoc = ENTITY.GET_ENTITY_COORDS(spawnedObjects[objects + 1], false)
        rot = ENTITY.GET_ENTITY_ROTATION(spawnedObjects[objects + 1], 2)
        objLocX, objLocY, objLocZ = objLoc.x, objLoc.y, objLoc.z
        roll, pitch, yaw = rot.x, rot.y, rot.z
        objLocX, xChanged = ImGui.SliderFloat("X", objLocX, objLocX - 1, objLocX + 1)
        if xChanged then
            ENTITY.SET_ENTITY_COORDS(spawnedObjects[objects + 1], objLocX, objLoc.y, objLoc.z, true, false, false, false)
        end
        objLocY, yChanged = ImGui.SliderFloat("Y", objLocY, objLocY - 1, objLocY + 1)
        if yChanged then
            ENTITY.SET_ENTITY_COORDS(spawnedObjects[objects + 1], objLoc.x, objLocY, objLoc.z, true, false, false, false)
        end
        objLocZ, zChanged = ImGui.SliderFloat("Z", objLocZ, objLocZ - 1, objLocZ + 1)
        if zChanged then
            ENTITY.SET_ENTITY_COORDS(spawnedObjects[objects + 1], objLoc.x, objLoc.y, objLocZ, true, false, false, false)
        end
        pitch, pitchChanged = ImGui.SliderFloat("Pitch ", pitch, -180, 180)
        if pitchChanged then
            ENTITY.SET_ENTITY_ROTATION(spawnedObjects[objects + 1], rot.x, pitch, rot.z, 2, false)
        end
        yaw, yawChanged = ImGui.SliderFloat("Yaw ", yaw, -180, 180)
        if yawChanged then
            ENTITY.SET_ENTITY_ROTATION(spawnedObjects[objects + 1], rot.x, rot.y, yaw, 2, false)
        end
        roll, rollChanged = ImGui.SliderFloat("Roll ", roll, -180, 180)
        if rollChanged then
            ENTITY.SET_ENTITY_ROTATION(spawnedObjects[objects + 1], roll, rot.y, rot.z, 2, false)
        end
    end
end)

-- Vehicle Options Tab
Veh = Zephyr:add_tab("Vehicle Options")

vehTrix = Veh:add_tab("Tricks/Stunts")

vehTrix:add_button('Ollie', function()
    script.run_in_fiber(function(script)
        targ = network.get_selected_player()
        ped = PLAYER.GET_PLAYER_PED(targ)
        veh = PED.GET_VEHICLE_PED_IS_USING(ped)
        if request_control(veh) then
            ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, 0.0, 0.0, 10.0, 0.0, 0.0, 0.0, 1, false, true, true, true, true)
        end
    end)
end)
toolTip(vehTrix, "Makes the targeted players vehicle do an Ollie.")

vehTrix:add_sameline()
vehTrix:add_button('Kickflip', function()
    script.run_in_fiber(function(script)
        targ = network.get_selected_player()
        ped = PLAYER.GET_PLAYER_PED(targ)
        veh = PED.GET_VEHICLE_PED_IS_USING(ped)
        if request_control(veh) then
            ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, 0.0, 0.0, 10.71, 5.0, 0.0, 0.0, 1, false, true, true, true, true)
        end
    end)
end)
toolTip(vehTrix, "Makes the targeted players vehicle do a Kickflip.")

vehTrix:add_sameline()
vehTrix:add_button('Double Kickflip', function()
    script.run_in_fiber(function(script)
        targ = network.get_selected_player()
        ped = PLAYER.GET_PLAYER_PED(targ)
        veh = PED.GET_VEHICLE_PED_IS_USING(ped)
        if request_control(veh) then
            ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, 0.0, 0.0, 21.43, 20.0, 0.0, 0.0, 1, false, true, true, true, true)
        end
    end)
end)
toolTip(vehTrix, "Makes the targeted players vehicle do a Double Kickflip.")

vehTrix:add_sameline()
vehTrix:add_button('Heelflip', function()
    script.run_in_fiber(function(script)
        targ = network.get_selected_player()
        ped = PLAYER.GET_PLAYER_PED(targ)
        veh = PED.GET_VEHICLE_PED_IS_USING(ped)
        if request_control(veh) then
            ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, 0.0, 0.0, 10.71, -5.0, 0.0, 0.0, 1, false, true, true, true, true)
        end
    end)
end)
toolTip(vehTrix, "Makes the targeted players vehicle do a Heelflip.")

vehTrix:add_sameline()
vehTrix:add_button('Backflip', function()
    script.run_in_fiber(function(script)
        targ = network.get_selected_player()
        ped = PLAYER.GET_PLAYER_PED(targ)
        veh = PED.GET_VEHICLE_PED_IS_USING(ped)
        if request_control(veh) then
            ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, 0.0, 0.0, 25.71, 0.0, 7.0, -0.2, 1, false, true, true, true, true)
        end
    end)
end)
toolTip(vehTrix, "Makes the targeted players vehicle do a Backflip.")

vehTrix:add_button('Frontflip', function()
    script.run_in_fiber(function(script)
        targ = network.get_selected_player()
        ped = PLAYER.GET_PLAYER_PED(targ)
        veh = PED.GET_VEHICLE_PED_IS_USING(ped)
        if request_control(veh) then
            ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, 0.0, 0.0, 11.71, 0.0, -5.0, 0.2, 1, false, true, true, true, true)
        end
    end)
end)
toolTip(vehTrix, "Makes the targeted players vehicle do a Frontflip.")

vehTrix:add_sameline()
vehTrix:add_button('Boost Forward', function()
    script.run_in_fiber(function(script)
        local targ = network.get_selected_player()
        local ped = PLAYER.GET_PLAYER_PED(targ)
        local veh = PED.GET_VEHICLE_PED_IS_USING(ped)
        if request_control(veh) then
            -- Get the vehicle's forward vector
            local forwardVector = ENTITY.GET_ENTITY_FORWARD_VECTOR(veh)
            -- Scale the forward vector to the desired boost strength
            local boostStrength = 2500.0
            local forceX = forwardVector.x * boostStrength
            local forceY = forwardVector.y * boostStrength
            local forceZ = forwardVector.z * boostStrength
            -- Apply the force to the vehicle
            model = ENTITY.GET_ENTITY_MODEL(veh)
            if VEHICLE.IS_THIS_MODEL_A_HELI(model) == true then
            gui.show_message("test", "test")
                ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, forceX, forceY, 250.0, 0.0, 0.0, 0.0, 1, false, true, true, true, true)
            else
                ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, forceX, forceY, forceZ, 0.0, 0.0, 0.0, 1, false, true, true, true, true)
            end
        end
    end)
end)
toolTip(vehTrix, "Makes the targeted players vehicle boost forward at a high rate of speed.")

vehTrix:add_sameline()
vehTrix:add_button('Boost Backwards', function()
    script.run_in_fiber(function(script)
        local targ = network.get_selected_player()
        local ped = PLAYER.GET_PLAYER_PED(targ)
        local veh = PED.GET_VEHICLE_PED_IS_USING(ped)
        if request_control(veh) then
            -- Get the vehicle's forward vector
            local forwardVector = ENTITY.GET_ENTITY_FORWARD_VECTOR(veh)
            -- Scale the forward vector to the desired boost strength
            local boostStrength = -2500.0
            local forceX = forwardVector.x * boostStrength
            local forceY = forwardVector.y * boostStrength
            local forceZ = forwardVector.z * boostStrength
            -- Apply the force to the vehicle
            ENTITY.APPLY_FORCE_TO_ENTITY(veh, 1, forceX, forceY, forceZ, 0.0, 0.0, 0.0, 1, false, true, true, true, true)
        end
    end)
end)
toolTip(vehTrix, "Makes the targeted players vehicle boost backwards at a high rate of speed.")

flightSpeedDefault = 120.0
flightSpeedMax = 400.0
flightSpeedIncrement = 0.5
flightSpeed = flightSpeedDefault
yawIncrement = 1.0
vehicle = nil

vehicleFly = vehTrix:add_checkbox("Vehicle Fly") -- Assume this is a toggle or a flag somewhere in your script
toolTip(vehTrix, "Makes YOUR vehicle fly similar to a plane, read the Flight Controls for operation.")

vehTrix:add_imgui(function()
    if (ImGui.TreeNode("Flight Controls")) then
        ImGui.Text("Keyboard")
        ImGui.Text("W - Forward, A - Turn Left, D - Turn right, S - Stop, X - Hover Upwards")
        ImGui.Text("Shift - Tilt Forward, Ctrl - Tilt backwards")
        ImGui.Separator()
        ImGui.Text("Controller")
        ImGui.Text("RT - Forward, LB - Turn Left, RB - Turn right, LT - Stop, X/A - Hover Upwards")
        ImGui.Text("Left Joystick for Tilt")
    end
    toolTip("", "Controls for using Vehicle Fly.")
end)

script.register_looped("vehFlight", function(script)
    if vehicleFly:is_enabled() then
        local playerPed = PLAYER.PLAYER_PED_ID()
        if PED.IS_PED_IN_ANY_VEHICLE(playerPed, false) then
            vehicle = PED.GET_VEHICLE_PED_IS_IN(playerPed, false)
        else
            vehicle = nil
            flightSpeed = flightSpeedDefault
        end

        if PAD.IS_CONTROL_JUST_PRESSED(0, 87) and vehicle ~= nil then
            flightSpeed = ENTITY.GET_ENTITY_SPEED(vehicle)
        end

            

        if vehicle ~= nil then
            -- Yaw right
            if PAD.IS_DISABLED_CONTROL_PRESSED(0, 90) then
                PAD.DISABLE_CONTROL_ACTION(0, 68, true) -- Aim
                WEAPON.SET_CURRENT_PED_VEHICLE_WEAPON(playerPed, 1122011548)
                local currentHeading = ENTITY.GET_ENTITY_HEADING(vehicle)
                ENTITY.SET_ENTITY_HEADING(vehicle, currentHeading - yawIncrement)
            end

            -- Yaw left
            if PAD.IS_CONTROL_PRESSED(0, 89) then
                PAD.DISABLE_CONTROL_ACTION(0, 68, true) -- Aim
                WEAPON.SET_CURRENT_PED_VEHICLE_WEAPON(playerPed, 1122011548)
                local currentHeading = ENTITY.GET_ENTITY_HEADING(vehicle)
                ENTITY.SET_ENTITY_HEADING(vehicle, currentHeading + yawIncrement)
            end

                -- Forward flight
            if PAD.IS_CONTROL_PRESSED(0, 87) then
                if flightSpeed < flightSpeedMax then
                    flightSpeed = flightSpeed + flightSpeedIncrement
                end

                local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(vehicle, 0.0, flightSpeed, 0.0)
                local velocity = { x = coords.x - ENTITY.GET_ENTITY_COORDS(vehicle).x, y = coords.y - ENTITY.GET_ENTITY_COORDS(vehicle).y, z = coords.z - ENTITY.GET_ENTITY_COORDS(vehicle).z}
                ENTITY.SET_ENTITY_VELOCITY(vehicle, velocity.x, velocity.y, velocity.z)
            end

            -- Ascend
            if PAD.IS_CONTROL_PRESSED(0, 73) and vehicleFly then
                ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 1, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0, true, true, true, true, true)
            end
            -- Descend
            PAD.DISABLE_CONTROL_ACTION(0, 80, true) -- Cinematic Camera
            if PAD.IS_DISABLED_CONTROL_PRESSED(0, 80) and vehicleFly then 
                ENTITY.APPLY_FORCE_TO_ENTITY(vehicle, 1, 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 0, true, true, true, true, true)
            end
            -- Stop aka freeze pos
            PAD.DISABLE_CONTROL_ACTION(0, 88)
            if PAD.IS_DISABLED_CONTROL_PRESSED(0, 88) and vehicleFly then
                ENTITY.FREEZE_ENTITY_POSITION(vehicle, true)
            else
                ENTITY.FREEZE_ENTITY_POSITION(vehicle, false)
            end
        end
        script:yield(2)
    end
end)

tokyodrift = Veh:add_tab("Tokyo Drift")
---@diagnostic disable: undefined-global, lowercase-global

tokyodrift = gui.get_tab("GUI_TAB_VEHICLE"):add_tab("Tokyo Drift")
ShiftDrift         = false
DriftTires         = false
is_car             = false
is_quad            = false
is_boat            = false
is_bike            = false
td_validModel      = false
speedBoost         = false
sfx                = false
ptfx               = false
hornLight          = false
nosPurge           = false
rgbLights          = false
has_xenon          = false
purge_started      = false
nos_started        = false
is_typing          = false
loud_radio         = false
open_sounds_window = false
defaultXenon       = 0
DriftIntensity     = 0
vehSound_index     = 0
lightSpeed         = 1
tdBtn              = 21
search_term        = ""
nosptfx_t          = {}
purgePtfx_t        = {}
gta_vehicles       = {"Airbus", "Airtug", "akula", "akuma", "aleutian", "alkonost", "alpha", "alphaz1", "AMBULANCE", "annihilator", "annihilator2", "apc", "ardent", "armytanker", "armytrailer", "armytrailer2", "asbo", "asea", "asea2", "asterope", "asterope2", "astron", "autarch", "avarus", "avenger", "avenger2", "avenger3", "avenger4", "avisa", "bagger", "baletrailer", "Baller", "baller2", "baller3", "baller4", "baller5", "baller6", "baller7", "baller8", "banshee", "banshee2", "BARRACKS", "BARRACKS2", "BARRACKS3", "barrage", "bati", "bati2", "Benson", "benson2", "besra", "bestiagts", "bf400", "BfInjection", "Biff", "bifta", "bison", "Bison2", "Bison3", "BjXL", "blade", "blazer", "blazer2", "blazer3", "blazer4", "blazer5", "BLIMP", "BLIMP2", "blimp3", "blista", "blista2", "blista3", "BMX", "boattrailer", "boattrailer2", "boattrailer3", "bobcatXL", "Bodhi2", "bombushka", "boor", "boxville", "boxville2", "boxville3", "boxville4", "boxville5", "boxville6", "brawler", "brickade", "brickade2", "brigham", "brioso", "brioso2", "brioso3", "broadway", "bruiser", "bruiser2", "bruiser3", "brutus", "brutus2", "brutus3", "btype", "btype2", "btype3", "buccaneer", "buccaneer2", "buffalo", "buffalo2", "buffalo3", "buffalo4", "buffalo5", "bulldozer", "bullet", "Burrito", "burrito2", "burrito3", "Burrito4", "burrito5", "BUS", "buzzard", "Buzzard2", "cablecar", "caddy", "Caddy2", "caddy3", "calico", "CAMPER", "caracara", "caracara2", "carbonizzare", "carbonrs", "Cargobob", "cargobob2", "Cargobob3", "Cargobob4", "cargoplane", "cargoplane2", "casco", "cavalcade", "cavalcade2", "cavalcade3", "cerberus", "cerberus2", "cerberus3", "champion", "cheburek", "cheetah", "cheetah2", "chernobog", "chimera", "chino", "chino2", "cinquemila", "cliffhanger", "clique", "clique2", "club", "coach", "cog55", "cog552", "cogcabrio", "cognoscenti", "cognoscenti2", "comet2", "comet3", "comet4", "comet5", "comet6", "comet7", "conada", "conada2", "contender", "coquette", "coquette2", "coquette3", "coquette4", "corsita", "coureur", "cruiser", "CRUSADER", "cuban800", "cutter", "cyclone", "cypher", "daemon", "daemon2", "deathbike", "deathbike2", "deathbike3", "defiler", "deity", "deluxo", "deveste", "deviant", "diablous", "diablous2", "dilettante", "dilettante2", "Dinghy", "dinghy2", "dinghy3", "dinghy4", "dinghy5", "dloader", "docktrailer", "docktug", "dodo", "Dominator", "dominator2", "dominator3", "dominator4", "dominator5", "dominator6", "dominator7", "dominator8", "dominator9", "dorado", "double", "drafter", "draugur", "drifteuros", "driftfr36", "driftfuto", "driftjester", "driftremus", "drifttampa", "driftyosemite", "driftzr350", "dubsta", "dubsta2", "dubsta3", "dukes", "dukes2", "dukes3", "dump", "dune", "dune2", "dune3", "dune4", "dune5", "duster", "Dynasty", "elegy", "elegy2", "ellie", "emerus", "emperor", "Emperor2", "emperor3", "enduro", "entity2", "entity3", "entityxf", "esskey", "eudora", "Euros", "everon", "everon2", "exemplar", "f620", "faction", "faction2", "faction3", "fagaloa", "faggio", "faggio2", "faggio3", "FBI", "FBI2", "fcr", "fcr2", "felon", "felon2", "feltzer2", "feltzer3", "firetruk", "fixter", "flashgt", "FLATBED", "fmj", "FORKLIFT", "formula", "formula2", "fq2", "fr36", "freecrawler", "freight", "freight2", "freightcar", "freightcar2", "freightcont1", "freightcont2", "freightgrain", "Frogger", "frogger2", "fugitive", "furia", "furoregt", "fusilade", "futo", "futo2", "gargoyle", "Gauntlet", "gauntlet2", "gauntlet3", "gauntlet4", "gauntlet5", "gauntlet6", "gb200", "gburrito", "gburrito2", "glendale", "glendale2", "gp1", "graintrailer", "GRANGER", "granger2", "greenwood", "gresley", "growler", "gt500", "guardian", "habanero", "hakuchou", "hakuchou2", "halftrack", "handler", "Hauler", "Hauler2", "havok", "hellion", "hermes", "hexer", "hotknife", "hotring", "howard", "hunter", "huntley", "hustler", "hydra", "imorgon", "impaler", "impaler2", "impaler3", "impaler4", "impaler5", "impaler6", "imperator", "imperator2", "imperator3", "inductor", "inductor2", "infernus", "infernus2", "ingot", "innovation", "insurgent", "insurgent2", "insurgent3", "intruder", "issi2", "issi3", "issi4", "issi5", "issi6", "issi7", "issi8", "italigtb", "italigtb2", "italigto", "italirsx", "iwagen", "jackal", "jb700", "jb7002", "jester", "jester2", "jester3", "jester4", "jet", "jetmax", "journey", "journey2", "jubilee", "jugular", "kalahari", "kamacho", "kanjo", "kanjosj", "khamelion", "khanjali", "komoda", "kosatka", "krieger", "kuruma", "kuruma2", "l35", "landstalker", "landstalker2", "Lazer", "le7b", "lectro", "lguard", "limo2", "lm87", "locust", "longfin", "lurcher", "luxor", "luxor2", "lynx", "mamba", "mammatus", "manana", "manana2", "manchez", "manchez2", "manchez3", "marquis", "marshall", "massacro", "massacro2", "maverick", "menacer", "MESA", "mesa2", "MESA3", "metrotrain", "michelli", "microlight", "Miljet", "minitank", "minivan", "minivan2", "Mixer", "Mixer2", "mogul", "molotok", "monroe", "monster", "monster3", "monster4", "monster5", "monstrociti", "moonbeam", "moonbeam2", "Mower", "Mule", "Mule2", "Mule3", "mule4", "mule5", "nebula", "nemesis", "neo", "neon", "nero", "nero2", "nightblade", "nightshade", "nightshark", "nimbus", "ninef", "ninef2", "nokota", "Novak", "omnis", "omnisegt", "openwheel1", "openwheel2", "oppressor", "oppressor2", "oracle", "oracle2", "osiris", "outlaw", "Packer", "panthere", "panto", "paradise", "paragon", "paragon2", "pariah", "patriot", "patriot2", "patriot3", "patrolboat", "pbus", "pbus2", "pcj", "penetrator", "penumbra", "penumbra2", "peyote", "peyote2", "peyote3", "pfister811", "Phantom", "phantom2", "phantom3", "Phantom4", "Phoenix", "picador", "pigalle", "polgauntlet", "police", "police2", "police3", "police4", "police5", "policeb", "policeold1", "policeold2", "policet", "polmav", "pony", "pony2", "postlude", "Pounder", "pounder2", "powersurge", "prairie", "pRanger", "Predator", "premier", "previon", "primo", "primo2", "proptrailer", "prototipo", "pyro", "r300", "radi", "raiden", "raiju", "raketrailer", "rallytruck", "RancherXL", "rancherxl2", "RapidGT", "RapidGT2", "rapidgt3", "raptor", "ratbike", "ratel", "ratloader", "ratloader2", "rcbandito", "reaper", "Rebel", "rebel2", "rebla", "reever", "regina", "remus", "Rentalbus", "retinue", "retinue2", "revolter", "rhapsody", "rhinehart", "RHINO", "riata", "RIOT", "riot2", "Ripley", "rocoto", "rogue", "romero", "rrocket", "rt3000", "Rubble", "ruffian", "ruiner", "ruiner2", "ruiner3", "ruiner4", "rumpo", "rumpo2", "rumpo3", "ruston", "s80", "sabregt", "sabregt2", "Sadler", "sadler2", "Sanchez", "sanchez2", "sanctus", "sandking", "sandking2", "savage", "savestra", "sc1", "scarab", "scarab2", "scarab3", "schafter2", "schafter3", "schafter4", "schafter5", "schafter6", "schlagen", "schwarzer", "scorcher", "scramjet", "scrap", "seabreeze", "seashark", "seashark2", "seashark3", "seasparrow", "seasparrow2", "seasparrow3", "Seminole", "seminole2", "sentinel", "sentinel2", "sentinel3", "sentinel4", "serrano", "SEVEN70", "Shamal", "sheava", "SHERIFF", "sheriff2", "shinobi", "shotaro", "skylift", "slamtruck", "slamvan", "slamvan2", "slamvan3", "slamvan4", "slamvan5", "slamvan6", "sm722", "sovereign", "SPECTER", "SPECTER2", "speeder", "speeder2", "speedo", "speedo2", "speedo4", "speedo5", "squaddie", "squalo", "stafford", "stalion", "stalion2", "stanier", "starling", "stinger", "stingergt", "stingertt", "stockade", "stockade3", "stratum", "streamer216", "streiter", "stretch", "strikeforce", "stromberg", "Stryder", "Stunt", "submersible", "submersible2", "Sugoi", "sultan", "sultan2", "sultan3", "sultanrs", "Suntrap", "superd", "supervolito", "supervolito2", "Surano", "SURFER", "Surfer2", "surfer3", "surge", "swift", "swift2", "swinger", "t20", "Taco", "tahoma", "tailgater", "tailgater2", "taipan", "tampa", "tampa2", "tampa3", "tanker", "tanker2", "tankercar", "taxi", "technical", "technical2", "technical3", "tempesta", "tenf", "tenf2", "terbyte", "terminus", "tezeract", "thrax", "thrust", "thruster", "tigon", "TipTruck", "TipTruck2", "titan", "toreador", "torero", "torero2", "tornado", "tornado2", "tornado3", "tornado4", "tornado5", "tornado6", "toro", "toro2", "toros", "TOURBUS", "TOWTRUCK", "Towtruck2", "towtruck3", "towtruck4", "tr2", "tr3", "tr4", "TRACTOR", "tractor2", "tractor3", "trailerlarge", "trailerlogs", "trailers", "trailers2", "trailers3", "trailers4", "trailers5", "trailersmall", "trailersmall2", "Trash", "trash2", "trflat", "tribike", "tribike2", "tribike3", "trophytruck", "trophytruck2", "tropic", "tropic2", "tropos", "tug", "tula", "tulip", "tulip2", "turismo2", "turismo3", "turismor", "tvtrailer", "tvtrailer2", "tyrant", "tyrus", "utillitruck", "utillitruck2", "Utillitruck3", "vacca", "Vader", "vagner", "vagrant", "valkyrie", "valkyrie2", "vamos", "vectre", "velum", "velum2", "verlierer2", "verus", "vestra", "vetir", "veto", "veto2", "vigero", "vigero2", "vigero3", "vigilante", "vindicator", "virgo", "virgo2", "virgo3", "virtue", "viseris", "visione", "vivanite", "volatol", "volatus", "voltic", "voltic2", "voodoo", "voodoo2", "vortex", "vstr", "warrener", "warrener2", "washington", "wastelander", "weevil", "weevil2", "windsor", "windsor2", "winky", "wolfsbane", "xa21", "xls", "xls2", "yosemite", "yosemite2", "yosemite3", "youga", "youga2", "youga3", "youga4", "z190", "zeno", "zentorno", "zhaba", "zion", "zion2", "zion3", "zombiea", "zombieb", "zorrusso", "zr350", "zr380", "zr3802", "zr3803", "Ztype",}
local function resettokyodrift()
    DriftTires        = false
    ShiftDrift        = false
    shiftDriftToggled = false
    speedBoost        = false
    sfx               = false
    ptfx              = false
    purge_started     = false
    nos_started       = false
    hornLight         = false
    nosPurge          = false
    has_xenon         = false
    rgbLights         = false
    loud_radio        = false
    DriftIntensity    = 0
    defaultXenon      = 0
    lightSpeed        = 1
    if nosptfx_t[1] ~= nil then
        for _, n in ipairs(nosptfx_t) do
            if GRAPHICS.DOES_PARTICLE_FX_LOOPED_EXIST(n) then
                GRAPHICS.STOP_PARTICLE_FX_LOOPED(n)
                GRAPHICS.REMOVE_PARTICLE_FX(n)
            end
        end
    end
    if purgePtfx_t[1] ~= nil then
        for _, p in ipairs(purgePtfx_t) do
            if GRAPHICS.DOES_PARTICLE_FX_LOOPED_EXIST(p) then
                GRAPHICS.STOP_PARTICLE_FX_LOOPED(p)
                GRAPHICS.REMOVE_PARTICLE_FX(p)
            end
        end
    end
    nosptfx_t   = {}
    purgePtfx_t = {}
end
local function filterVehNames()
    filteredNames = {}
    for _, veh in ipairs(gta_vehicles) do
        if VEHICLE.IS_THIS_MODEL_A_CAR(joaat(veh)) or VEHICLE.IS_THIS_MODEL_A_BIKE(joaat(veh)) or VEHICLE.IS_THIS_MODEL_A_QUADBIKE(joaat(veh)) then
            valid_veh = veh
            if string.find(string.lower(valid_veh), string.lower(search_term)) then
                table.insert(filteredNames, valid_veh)
            end
        end
    end
end
local function displayVehNames()
    filterVehNames()
    local vehNames = {}
    for _, veh in ipairs(filteredNames) do
        local vehName = vehicles.get_vehicle_display_name(joaat(veh))
        table.insert(vehNames, vehName)
    end
    vehSound_index, used = ImGui.ListBox("##Vehicle Names", vehSound_index, vehNames, #filteredNames)
end
tokyodrift:add_imgui(function()
manufacturer = VEHICLE.GET_MAKE_NAME_FROM_VEHICLE_MODEL(ENTITY.GET_ENTITY_MODEL(current_vehicle))
mfr_name = (manufacturer:lower():gsub("^%l", string.upper))
vehicle_name = vehicles.get_vehicle_display_name(ENTITY.GET_ENTITY_MODEL(current_vehicle))
    if PED.IS_PED_IN_ANY_VEHICLE(PLAYER.PLAYER_PED_ID(), true) then
        if td_validModel then
            ImGui.Text("Vehicle: "..mfr_name.." "..vehicle_name)
            ImGui.Spacing()
            ShiftDrift, shiftDriftToggled = ImGui.Checkbox("Activate Tokyo Drift", ShiftDrift, true)
            helpmarker(false, "Hold [Left Shift] to drift")
            if shiftDriftToggled then
                if not ShiftDrift then
                    DriftTires = false
                end
            end
            DriftTires, driftTyresToggled = ImGui.Checkbox("Use Low Grip Tires", DriftTires, true)
            helpmarker(false, "This will use GTA 5's low grip tires instead.")
            if not DriftTires then
                ImGui.Spacing()
                ImGui.Text("Intensity:")
                ImGui.PushItemWidth(250)
                DriftIntensity, DriftIntensityUsed = ImGui.SliderInt("##Intensity", DriftIntensity, 0, 3)
                widgetToolTip(false, "0: No Grip (very stiff).\n1: Balanced (Recommended).\n2: Weak Drift.\n3: Weakest Drift.")
                ImGui.PopItemWidth()
            end
        else
            ImGui.Text("You can only drift cars, trucks\nand quad bikes.")
        end
        ImGui.Spacing();ImGui.Separator();ImGui.Text("---------------------- Fun Stuff ----------------------");ImGui.Spacing()
        speedBoost, _ = ImGui.Checkbox("Speed Boost", speedBoost, true)
        widgetToolTip(false, "Simulates NOS. Gives you more power and increases your top speed when pressing [Left Shift].")
        if sfx and not speedBoost then
            sfx = false
        end
        if ptfx and not speedBoost then
            ptfx = false
        end
        ImGui.SameLine(); sfx, sfxPressed = ImGui.Checkbox("SFX", sfx, true)
        widgetToolTip(false, "Plays a sound effect when using 'Speed Boost'. Doesn't work on boats and jetskis.")
        if sfxPressed and not speedBoost then
            gui.show_error("TokyoDrift", "This option is unavailable without 'Speed Boost'.")
            sfx = false
        end
        ImGui.SameLine(); ptfx, ptfxPressed = ImGui.Checkbox("PTFX", ptfx, true)
        widgetToolTip(false, "Enables exhaust fire when using 'Speed Boost'.")
        if ptfxPressed and not speedBoost then
            gui.show_error("TokyoDrift", "This option is unavailable without 'Speed Boost'.")
            ptfx = false
        end
        ImGui.Spacing();hornLight, _ = ImGui.Checkbox("High Beams on Horn", hornLight, true)
        widgetToolTip(false, "Flash high beams when honking.")
        ImGui.SameLine();ImGui.Dummy(5, 1);ImGui.SameLine();nosPurge, _ = ImGui.Checkbox("NOS Purge", nosPurge, true)
        widgetToolTip(false, "Press [X] on keyboard or [A] on controller to purge your NOS Fast & Furious style.")
        ImGui.Spacing();rgbLights, rgbToggled = ImGui.Checkbox("RGB Headlights", rgbLights, true)
        if rgbToggled then
            script.run_in_fiber(function()
                if not VEHICLE.IS_TOGGLE_MOD_ON(current_vehicle, 22) then
                    has_xenon = false
                else
                    has_xenon    = true
                    defaultXenon = VEHICLE.GET_VEHICLE_XENON_LIGHT_COLOR_INDEX(current_vehicle)
                end
            end)
        end
        if rgbLights then
            ImGui.SameLine()
            ImGui.PushItemWidth(100)
            lightSpeed, used = ImGui.SliderInt("RGB Speed", lightSpeed, 1, 3)
            ImGui.PopItemWidth()
        end
        ImGui.Spacing()
        if ImGui.Button("Change Engine Sound") then
            open_sounds_window = true
        end
        if open_sounds_window then
            ImGui.SetNextWindowPos(740, 300, ImGuiCond.Appearing)
            ImGui.SetNextWindowSizeConstraints(100, 100, 600, 800)
            ImGui.Begin("Vehicle Sounds",  ImGuiWindowFlags.AlwaysAutoResize | ImGuiWindowFlags.NoTitleBar | ImGuiWindowFlags.NoCollapse)
            if ImGui.Button("Close") then
                open_sounds_window = false
            end
            ImGui.Spacing();ImGui.Spacing()
            ImGui.PushItemWidth(250)
            search_term, used = ImGui.InputTextWithHint("", "Search Vehicle Names", search_term, 32)
            if ImGui.IsItemActive() then
                is_typing = true
            else
                is_typing = false
            end
            ImGui.PushItemWidth(270)
            displayVehNames()
            ImGui.PopItemWidth()
            local selected_name = filteredNames[vehSound_index + 1]
            ImGui.Spacing()
            if ImGui.Button("Use This Sound") then
                script.run_in_fiber(function()
                    AUDIO.FORCE_USE_AUDIO_GAME_OBJECT(current_vehicle, selected_name)
                end)
            end
            ImGui.SameLine()
            if ImGui.Button("Restore Default") then
                script.run_in_fiber(function()
                    AUDIO.FORCE_USE_AUDIO_GAME_OBJECT(current_vehicle, vehicles.get_vehicle_display_name(ENTITY.GET_ENTITY_MODEL(current_vehicle)))
                end)
            end
            ImGui.End()
        end
        ImGui.SameLine();ImGui.Dummy(20, 1);ImGui.SameLine()
        local engineHealth = VEHICLE.GET_VEHICLE_ENGINE_HEALTH(current_vehicle)
        if engineHealth <= 300 then
            engineDestroyed = true
        else
            engineDestroyed = false
        end
        if engineDestroyed then
            engineButton_label = "Fix Engine"
            engine_hp          = 1000
        else
            engineButton_label = "Destroy Engine"
            engine_hp          = -4000
        end
        if ImGui.Button(engineButton_label) then
            script.run_in_fiber(function()
                VEHICLE.SET_VEHICLE_ENGINE_HEALTH(current_vehicle, engine_hp)
            end)
        end
        ImGui.Spacing();loud_radio, used = ImGui.Checkbox("Loud Radio", loud_radio, true)
        widgetToolTip(false, "Makes your vehicle's radio sound louder from the outside. To notice the difference, activate this option then stand close to your car while the engine is running and the radio is on.")
        if loud_radio then
            script.run_in_fiber(function()
                AUDIO.SET_VEHICLE_RADIO_LOUD(current_vehicle, true)
            end)
        else
            script.run_in_fiber(function()
                AUDIO.SET_VEHICLE_RADIO_LOUD(current_vehicle, false)
            end)
        end
        ImGui.SameLine();ImGui.Dummy(20, 1);ImGui.SameLine();ImGui.Text(loud_state)
    else
        ImGui.Text("\nGet in a vehicle before using the script!")
    end
    ImGui.Spacing() ImGui.Spacing() ImGui.Spacing() ImGui.Spacing() ImGui.Spacing() ImGui.Spacing()
    ImGui.Separator()
    if ImGui.Button("-- Credits --") then
        ImGui.OpenPopup("Credits")
    end
    ImGui.SetNextWindowPos(600, 400, ImGuiCond.Appearing)
    ImGui.SetNextWindowBgAlpha(0.6)
    if ImGui.BeginPopupModal("Credits", true, ImGuiWindowFlags.AlwaysAutoResize | ImGuiWindowFlags.NoMove) then
        ImGui.Text("Original script [Shift-Drift], made by charoselling.")
        ImGui.Text("Visit charoselling's profile on Github:")
        ImGui.Indent()
        ImGui.TextColored(0.25, 0.65, 0.96, 0.8, "https://github.com/charoselling")
        ImGui.Unindent()
        if ImGui.IsItemHovered() then
            ImGui.BeginTooltip()
            ImGui.Text("Click to copy link")
            ImGui.EndTooltip()
        end
        if ImGui.IsItemHovered() and ImGui.IsItemClicked(0) then
            ImGui.SetClipboardText("https://github.com/charoselling")
            gui.show_message("Tokyo Drift", "Copied \"https://github.com/charoselling\" to clipboard!")
            log.info("Copied \"https://github.com/charoselling\" to clipboard!")
        end
        -- ImGui.Text("Checkout Harmless-Scripts:")
        -- ImGui.BulletText("https://github.com/charoselling")
        -- if ImGui.IsItemHovered() then
        --     ImGui.BeginTooltip()
        --     ImGui.Text("Click to copy link")
        --     ImGui.EndTooltip()
        -- end
        -- if ImGui.IsItemHovered() and ImGui.IsItemClicked(0) then
        --     ImGui.SetClipboardText("https://github.com/charoselling") <-- Crashes my game for some reason! The profile link is fine but clicking the YimMenu-Lua repo link crashes my game???🤨
        --     gui.show_message("TokyoDrift Credits", "Copied \"https://github.com/charoselling\" to clipboard!")
        -- end
        ImGui.EndPopup()
    end
end)
script.register_looped("game input", function()
    if is_typing then
        PAD.DISABLE_ALL_CONTROL_ACTIONS(0)
    end
    if PED.IS_PED_IN_ANY_VEHICLE(PLAYER.PLAYER_PED_ID()) then
        if td_validModel then
            if nosPurge then
                PAD.DISABLE_CONTROL_ACTION(0, 73, true)
            end
        end
        if speedBoost and PAD.IS_CONTROL_PRESSED(0, 71) then
            if td_validModel or is_boat then
                PAD.DISABLE_CONTROL_ACTION(0, tdBtn, true) -- prevent face planting when using speed boost mid-air (not working as it should)
            end
            if is_bike then
                PAD.DISABLE_CONTROL_ACTION(0, 281, true) -- same as above ^
            end
        end
    end
end)
script.register_looped("Drift Loop", function(script)
    script:yield()
    if PED.IS_PED_IN_ANY_VEHICLE(PLAYER.PLAYER_PED_ID(), true) then
        current_vehicle = PED.GET_VEHICLE_PED_IS_USING(PLAYER.PLAYER_PED_ID())
        is_car  = VEHICLE.IS_THIS_MODEL_A_CAR(ENTITY.GET_ENTITY_MODEL(current_vehicle))
        is_quad = VEHICLE.IS_THIS_MODEL_A_QUADBIKE(ENTITY.GET_ENTITY_MODEL(current_vehicle))
        is_bike = VEHICLE.IS_THIS_MODEL_A_BIKE(ENTITY.GET_ENTITY_MODEL(current_vehicle))
        is_boat = VEHICLE.IS_THIS_MODEL_A_BOAT(ENTITY.GET_ENTITY_MODEL(current_vehicle)) or VEHICLE.IS_THIS_MODEL_A_JETSKI(ENTITY.GET_ENTITY_MODEL(current_vehicle))
        if is_car or is_quad then
            td_validModel = true
        else
            td_validModel = false
        end
        if td_validModel and DriftTires and PAD.IS_CONTROL_PRESSED(0, tdBtn) then
            VEHICLE.SET_DRIFT_TYRES(current_vehicle, true)
            VEHICLE.SET_VEHICLE_CHEAT_POWER_INCREASE(current_vehicle, 5.0)
        else
            VEHICLE.SET_DRIFT_TYRES(current_vehicle, false)
            VEHICLE.SET_VEHICLE_CHEAT_POWER_INCREASE(current_vehicle, 1.0)
        end
        script:yield()
        if td_validModel and ShiftDrift and PAD.IS_CONTROL_PRESSED(0, tdBtn) and not DriftTires then
            VEHICLE.SET_VEHICLE_REDUCE_GRIP(current_vehicle, true)
            VEHICLE.SET_VEHICLE_REDUCE_GRIP_LEVEL(current_vehicle, DriftIntensity)
            VEHICLE.SET_VEHICLE_CHEAT_POWER_INCREASE(current_vehicle, 5.0)
        else
            VEHICLE.SET_VEHICLE_REDUCE_GRIP(current_vehicle, false)
            VEHICLE.SET_VEHICLE_CHEAT_POWER_INCREASE(current_vehicle, 1.0)
        end
        if speedBoost then
            if td_validModel or is_boat or is_bike then
                if VEHICLE.GET_IS_VEHICLE_ENGINE_RUNNING(current_vehicle) then
                    if PAD.IS_DISABLED_CONTROL_PRESSED(0, tdBtn) and PAD.IS_CONTROL_PRESSED(0, 71) then
                        VEHICLE.SET_VEHICLE_CHEAT_POWER_INCREASE(current_vehicle, 5.0)
                        VEHICLE.MODIFY_VEHICLE_TOP_SPEED(current_vehicle, 100.0)
                        if sfx then
                            AUDIO.SET_VEHICLE_BOOST_ACTIVE(current_vehicle, true)
                        else
                            AUDIO.SET_VEHICLE_BOOST_ACTIVE(current_vehicle, false)
                        end
                    else
                        VEHICLE.SET_VEHICLE_CHEAT_POWER_INCREASE(current_vehicle, 1.0)
                        VEHICLE.MODIFY_VEHICLE_TOP_SPEED(current_vehicle, -1)
                        AUDIO.SET_VEHICLE_BOOST_ACTIVE(current_vehicle, false)
                    end
                else
                    if PED.IS_PED_SITTING_IN_ANY_VEHICLE(PLAYER.PLAYER_PED_ID()) then
                        if PAD.IS_DISABLED_CONTROL_PRESSED(0, tdBtn) and PAD.IS_CONTROL_PRESSED(0, 71) then
                            if VEHICLE.GET_VEHICLE_ENGINE_HEALTH(current_vehicle) < 300 then
                                failSound = AUDIO.PLAY_SOUND_FROM_ENTITY(-1, "Engine_fail", current_vehicle, "DLC_PILOT_ENGINE_FAILURE_SOUNDS", true, 0)
                                repeat
                                    script:sleep(50)
                                until
                                    AUDIO.HAS_SOUND_FINISHED(failSound) and PAD.IS_CONTROL_PRESSED(0, tdBtn) == false and PAD.IS_CONTROL_PRESSED(0, 71) == false
                                AUDIO.STOP_SOUND(failSound)
                            end
                        end
                    end
                end
            end
        end
        if hornLight then
            if not VEHICLE.GET_BOTH_VEHICLE_HEADLIGHTS_DAMAGED(current_vehicle) then
                if PAD.IS_CONTROL_PRESSED(0, 86) then
                    VEHICLE.SET_VEHICLE_LIGHTS(current_vehicle, 2)
                    VEHICLE.SET_VEHICLE_FULLBEAM(current_vehicle, true)
                    repeat
                        script:sleep(50)
                    until
                        PAD.IS_CONTROL_PRESSED(0, 86) == false
                    VEHICLE.SET_VEHICLE_FULLBEAM(current_vehicle, false)
                    VEHICLE.SET_VEHICLE_LIGHTS(current_vehicle, 0)
                end
            else
                if PAD.IS_CONTROL_JUST_RELEASED(0, 86) then
                    gui.show_warning("Tokyo Drift", "Your headlights are broken!")
                end
            end
        end
    else
        current_vehicle = 0
    end
end)
script.register_looped("Speed Boost ptfx", function(spbptfx)
    if speedBoost and ptfx then
        if td_validModel or is_boat or is_bike then
            if PAD.IS_DISABLED_CONTROL_PRESSED(0, tdBtn) and PAD.IS_CONTROL_PRESSED(0, 71) then
                if VEHICLE.GET_IS_VEHICLE_ENGINE_RUNNING(current_vehicle) then
                    local effect  = "veh_xs_vehicle_mods"
                    local counter = 0
                    while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(effect) do
                        STREAMING.REQUEST_NAMED_PTFX_ASSET(effect)
                        spbptfx:yield()
                        if counter > 100 then
                            return
                        else
                            counter = counter + 1
                        end
                    end
                    local exhaustCount = VEHICLE.GET_VEHICLE_MAX_EXHAUST_BONE_COUNT_() - 1
                    for i = 0, exhaustCount do
                        local retBool, exhaust_boneIndex = VEHICLE.GET_VEHICLE_EXHAUST_BONE_(current_vehicle, i, retBool, exhaust_boneIndex)
                        if retBool then
                            GRAPHICS.USE_PARTICLE_FX_ASSET(effect)
                            nosPtfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("veh_nitrous", current_vehicle, ptfx_X_axis, ptfx_Y_axis, 0.0, 0.0, 0.0, 0.0, exhaust_boneIndex, 1.0, false, false, false, 0, 0, 0)
                            table.insert(nosptfx_t, nosPtfx)
                            nos_started = true
                        end
                    end
                    if nos_started then
                        repeat
                            spbptfx:sleep(50)
                        until
                            PAD.IS_DISABLED_CONTROL_PRESSED(0, tdBtn) == false or PAD.IS_CONTROL_PRESSED(0, 71) == false
                        for _, nos in ipairs(nosptfx_t) do
                            if GRAPHICS.DOES_PARTICLE_FX_LOOPED_EXIST(nos) then
                                GRAPHICS.STOP_PARTICLE_FX_LOOPED(nos)
                                GRAPHICS.REMOVE_PARTICLE_FX(nos)
                                nos_started = false
                            end
                        end
                    end
                end
            end
        end
    end
end)
script.register_looped("Purge", function(nosprg)
    if nosPurge and td_validModel or nosPurge and is_bike then
        PAD.DISABLE_CONTROL_ACTION(0, 73, 1)
        if PAD.IS_DISABLED_CONTROL_PRESSED(0, 73) then
            local dict       = "core"
            local purgeBones = {"suspension_lf", "suspension_rf"}
            local retry      = 0
            while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(dict) do
                STREAMING.REQUEST_NAMED_PTFX_ASSET(dict)
                nosprg:yield()
                if retry > 100 then
                    return
                else
                    retry = retry + 1
                end
            end
            for _, boneName in ipairs(purgeBones) do
                local purge_exit = ENTITY.GET_ENTITY_BONE_INDEX_BY_NAME(current_vehicle, boneName)
                if boneName == "suspension_lf" then
                    rotZ = -180.0
                    posX = -0.3
                else
                    rotZ = 0.0
                    posX = 0.3
                end
                GRAPHICS.USE_PARTICLE_FX_ASSET(dict)
                purgePtfx = GRAPHICS.START_NETWORKED_PARTICLE_FX_LOOPED_ON_ENTITY_BONE("weap_extinguisher", current_vehicle, posX, -0.33, 0.2, 0.0, -17.5, rotZ, purge_exit, 0.4, false, false, false, 0, 0, 0)
                table.insert(purgePtfx_t, purgePtfx)
                purge_started = true
            end
            if purge_started then
                repeat
                    nosprg:sleep(50)
                until
                    PAD.IS_DISABLED_CONTROL_PRESSED(0, 73) == false
                for _, purge in ipairs(purgePtfx_t) do
                    if GRAPHICS.DOES_PARTICLE_FX_LOOPED_EXIST(purge) then
                        GRAPHICS.STOP_PARTICLE_FX_LOOPED(purge)
                        GRAPHICS.REMOVE_PARTICLE_FX(purge)
                        purge_started = false
                    end
                end
            end
        end
    end
end)
script.register_looped("rgbheadlights", function(rgb)
    if rgbLights then
        for i = 0, 14 do
            if rgbLights and not VEHICLE.GET_BOTH_VEHICLE_HEADLIGHTS_DAMAGED(current_vehicle) then
                if not has_xenon then
                    VEHICLE.TOGGLE_VEHICLE_MOD(current_vehicle, 22, true)
                end
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.9)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.8)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.7)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.6)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.5)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_XENON_LIGHT_COLOR_INDEX(current_vehicle, i)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.4)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.3)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.2)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.1)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_XENON_LIGHT_COLOR_INDEX(current_vehicle, i)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.2)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.3)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.4)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.5)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_XENON_LIGHT_COLOR_INDEX(current_vehicle, i)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.6)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.7)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.8)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 0.9)
                rgb:sleep(100 / lightSpeed)
                VEHICLE.SET_VEHICLE_LIGHT_MULTIPLIER(current_vehicle, 1.0)
                VEHICLE.SET_VEHICLE_XENON_LIGHT_COLOR_INDEX(current_vehicle, i)
                rgb:sleep(100 / lightSpeed)
            else
                if has_xenon then
                    VEHICLE.SET_VEHICLE_XENON_LIGHT_COLOR_INDEX(current_vehicle, defaultXenon)
                    break
                else
                    VEHICLE.TOGGLE_VEHICLE_MOD(current_vehicle, 22, false)
                    break
                end
            end
        end
    end
  end)
event.register_handler(menu_event.MenuUnloaded, function()
    resettokyodrift()
end)
event.register_handler(menu_event.ScriptsReloaded, function()
    resettokyodrift()
end)

flatbedScript = Veh:add_tab("FlatbedScript")
attached_vehicle = {}
 debug = false
--  validModel = false
 modelOverride = false
flatbedScript:add_imgui(function()
     vehicleHandles  = entities.get_all_vehicles_as_handles()
     flatbedModel    = 1353720154
     current_vehicle = PED.GET_VEHICLE_PED_IS_USING(PLAYER.PLAYER_PED_ID())
     vehicle_model   = ENTITY.GET_ENTITY_MODEL(current_vehicle)
     playerPosition  = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), false)
     playerForwardX  = ENTITY.GET_ENTITY_FORWARD_X(PLAYER.PLAYER_PED_ID())
     playerForwardY  = ENTITY.GET_ENTITY_FORWARD_Y(PLAYER.PLAYER_PED_ID())
--  closestVehicle = VEHICLE.GET_CLOSEST_VEHICLE(playerPosition.x, playerPosition.y, playerPosition.z, 10.0, 0, 70) --doesn't return cop cars or occupied PVs.
    for _, veh in ipairs(vehicleHandles) do
        script.run_in_fiber(function(script)
             detectPos = vec3:new(playerPosition.x - (playerForwardX * 10), playerPosition.y - (playerForwardY * 10), playerPosition.z)
             vehPos = ENTITY.GET_ENTITY_COORDS(veh, false)
             vDist = SYSTEM.VDIST(detectPos.x, detectPos.y, detectPos.z, vehPos.x, vehPos.y, vehPos.z)
            if vDist <= 5 then
                closestVehicle = veh
            else
                script:sleep(50)
                closestVehicle = nil
                return
            end
        end)
    end
     closestVehicleModel = ENTITY.GET_ENTITY_MODEL(closestVehicle)
     isCar = VEHICLE.IS_THIS_MODEL_A_CAR(closestVehicleModel)
     isBike = VEHICLE.IS_THIS_MODEL_A_BIKE(closestVehicleModel)
     closestVehicleName = vehicles.get_vehicle_display_name(closestVehicleModel)
    if vehicle_model == flatbedModel then
        is_in_flatbed = true
    else
        is_in_flatbed = false
    end
    if closestVehicleName == "" then
        displayText = "No nearby vehicles found!"
    elseif tostring(closestVehicleName) == "Flatbed" then
        displayText = "You can not tow another flatbed truck."
    else
        displayText = ("Closest Vehicle: "..tostring(closestVehicleName))
    end
    if attached_vehicle[1] ~= nil then
        displayText = "Towing..."
    end
    if modelOverride then
        validModel = true
    else
        validModel = false
    end
    if isCar then
        validModel = true
    end
    if isBike then
        validModel = true
    end
    if closestVehicleModel == 745926877 then --Buzzard
        validModel = true
    end
    if is_in_flatbed then
        ImGui.Text(displayText)
        towPos, used = ImGui.Checkbox("Show Towing Position", towPos, true)
        ImGui.SameLine()
        ImGui.TextDisabled("(?)")
        if ImGui.IsItemHovered() then
            ImGui.BeginTooltip()
            ImGui.Text("Marks the position at which the script\ndetects nearby vehicles.")
            ImGui.EndTooltip()
        end
        towEverything, used = ImGui.Checkbox("Tow Everything", towEverything, true)
        ImGui.SameLine()
        ImGui.TextDisabled("(?)")
        if ImGui.IsItemHovered() then
            ImGui.BeginTooltip()
            ImGui.Text("By default, the script is limited to cars,\ntrucks and bikes only. This option\nremoves that limit.")
            ImGui.EndTooltip()
        end
        if towEverything then
            modelOverride = true
        else
            modelOverride = false
        end
        if ImGui.Button("   Tow    ") then
            if attached_vehicle[1] == nil then
                if validModel and closestVehicleModel ~= flatbedModel then
                    script.run_in_fiber(function()
                        controlled = entities.take_control_of(closestVehicle, 300)
                        if controlled then
                            flatbedHeading = ENTITY.GET_ENTITY_HEADING(current_vehicle)
                            flatbedBone = ENTITY.GET_ENTITY_BONE_INDEX_BY_NAME(current_vehicle, "chassis_dummy")
                             vehicleClass = VEHICLE.GET_VEHICLE_CLASS(closestVehicle)
                            if vehicleClass == 1 then
                                zAxis = 0.9
                                yAxis = -2.3
                            elseif vehicleClass == 2 then
                                zAxis = 0.993
                                yAxis = -2.17046
                            elseif vehicleClass == 6 then
                                zAxis = 1.00069420
                                yAxis = -2.17046
                            elseif vehicleClass == 7 then
                                zAxis = 1.009
                                yAxis = -2.17036
                            elseif vehicleClass == 15 then
                                zAxis = 1.3
                                yAxis = -2.21069
                            elseif vehicleClass == 16 then
                                zAxis = 1.5
                                yAxis = -2.21069
                            else
                                zAxis = 1.1
                                yAxis = -2.0
                            end
                            ENTITY.SET_ENTITY_HEADING(closestVehicleModel, flatbedHeading)
                            ENTITY.ATTACH_ENTITY_TO_ENTITY(closestVehicle, current_vehicle, flatbedBone, 0.0, yAxis, zAxis, 0.0, 0.0, 0.0, true, true, false, false, 1, true, 1)
                            table.insert(attached_vehicle, closestVehicle)
                        else
                            gui.show_error("Flatbed Script", "Failed to take control of the vehicle!")
                        end
                    end)
                end
                if closestVehicle ~= nil and closestVehicleModel ~= flatbedModel and not validModel then
                    gui.show_message("Flatbed Script", "You can only tow cars, trucks and bikes.")
                end
                if closestVehicle ~= nil and closestVehicleModel == flatbedModel then
                    gui.show_message("Flatbed Script", "Sorry but you can not tow another flatbed truck.")
                end
            else
                gui.show_error("Flatbed Script", "You are already towing a vehicle.")
            end
        end
        ImGui.SameLine()
        if ImGui.Button(" Detach ") then
            for _, v in ipairs(vehicleHandles) do
                script.run_in_fiber(function()
                     modelHash = ENTITY.GET_ENTITY_MODEL(v)
                     attachedVehicle = ENTITY.GET_ENTITY_OF_TYPE_ATTACHED_TO_ENTITY(PED.GET_VEHICLE_PED_IS_USING(PLAYER.PLAYER_PED_ID()), modelHash)
                    controlled = entities.take_control_of(attachedVehicle, 300)
                    if ENTITY.DOES_ENTITY_EXIST(attachedVehicle) then
                        if controlled then
                            ENTITY.DETACH_ENTITY(attachedVehicle)
                            ENTITY.SET_ENTITY_COORDS(attachedVehicle, playerPosition.x - (playerForwardX * 10), playerPosition.y - (playerForwardY * 10), playerPosition.z, false, false, false, false)
                            VEHICLE.SET_VEHICLE_ON_GROUND_PROPERLY(attached_vehicle, 5.0)
                        end
                    end
                end)
            end
            for key, value in ipairs(attached_vehicle) do
                script.run_in_fiber(function()
                     modelHash = ENTITY.GET_ENTITY_MODEL(value)
                     attachedVehicle = ENTITY.GET_ENTITY_OF_TYPE_ATTACHED_TO_ENTITY(PED.GET_VEHICLE_PED_IS_USING(PLAYER.PLAYER_PED_ID()), modelHash)
                    if ENTITY.DOES_ENTITY_EXIST(attachedVehicle) then
                        ENTITY.DETACH_ENTITY(attachedVehicle)
                        ENTITY.SET_ENTITY_COORDS(attachedVehicle, playerPosition.x - (playerForwardX * 10), playerPosition.y - (playerForwardY * 10), playerPosition.z, false, false, false, false)
                        VEHICLE.SET_VEHICLE_ON_GROUND_PROPERLY(attached_vehicle, 5.0)
                    end
                end)
                table.remove(attached_vehicle, key)
            end
        end
    else
        ImGui.Text("Get inside a flatbed truck to use the script.")
        if ImGui.Button("Spawn Flatbed Truck") then
            script.run_in_fiber(function(script)
                 try = 0
                while not STREAMING.HAS_MODEL_LOADED(flatbedModel) do
                    STREAMING.REQUEST_MODEL(flatbedModel)
                    script:yield()
                    if try > 100 then
                        return
                    else
                        try = try + 1
                    end
                end
                fltbd = VEHICLE.CREATE_VEHICLE(flatbedModel, playerPosition.x, playerPosition.y, playerPosition.z, ENTITY.GET_ENTITY_HEADING(PLAYER.PLAYER_PED_ID()), true, false, false)
                -- script:sleep(200)
                PED.SET_PED_INTO_VEHICLE(PLAYER.PLAYER_PED_ID(), fltbd, -1)
                ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(fltbd)
            end)
        end
    end
    ImGui.TextDisabled("_")
    if ImGui.IsItemHovered() and ImGui.IsItemClicked(0) then
        debug = not debug
    end
    if debug then
        ImGui.Separator()
        if ImGui.Button("debug") then
            for _, veh in ipairs(vehicleHandles) do
                script.run_in_fiber(function(script)
                     detectPos = vec3:new(playerPosition.x - (playerForwardX * 10), playerPosition.y - (playerForwardY * 10), playerPosition.z)
                     vehPos = ENTITY.GET_ENTITY_COORDS(veh, false)
                     vDist = SYSTEM.VDIST(detectPos.x, detectPos.y, detectPos.z, vehPos.x, vehPos.y, vehPos.z)
                     vHash =  ENTITY.GET_ENTITY_MODEL(veh)
                    vehicleClass = VEHICLE.GET_VEHICLE_CLASS(closestVehicle)
                end)
            end
            log.debug(tostring(closestVehicle))
            -- log.debug(tostring(vDist))
            log.debug(tostring(vehicleClass))
        end
    end
end)
script.register_looped("flatbed script", function(script)
    -- script:yield()
     vehicleHandles = entities.get_all_vehicles_as_handles()
     current_vehicle = PED.GET_VEHICLE_PED_IS_USING(PLAYER.PLAYER_PED_ID())
     vehicle_model = ENTITY.GET_ENTITY_MODEL(current_vehicle)
     flatbedHeading = ENTITY.GET_ENTITY_HEADING(current_vehicle)
     flatbedBone = ENTITY.GET_ENTITY_BONE_INDEX_BY_NAME(current_vehicle, "chassis")
     playerPosition = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), false)
     playerForwardX = ENTITY.GET_ENTITY_FORWARD_X(PLAYER.PLAYER_PED_ID())
     playerForwardY = ENTITY.GET_ENTITY_FORWARD_Y(PLAYER.PLAYER_PED_ID())
    for _, veh in ipairs(vehicleHandles) do
         detectPos = vec3:new(playerPosition.x - (playerForwardX * 10), playerPosition.y - (playerForwardY * 10), playerPosition.z)
         vehPos = ENTITY.GET_ENTITY_COORDS(veh, false)
         vDist = SYSTEM.VDIST(detectPos.x, detectPos.y, detectPos.z, vehPos.x, vehPos.y, vehPos.z)
        if vDist <= 5 then
            closestVehicle = veh
        end
    end
     closestVehicleModel = ENTITY.GET_ENTITY_MODEL(closestVehicle)
     isCar = VEHICLE.IS_THIS_MODEL_A_CAR(closestVehicleModel)
     isBike = VEHICLE.IS_THIS_MODEL_A_BIKE(closestVehicleModel)
     validModel = false
    if modelOverride then
        validModel = true
    else
        validModel = false
    end
    if isCar then
        validModel = true
    end
    if isBike then
        validModel = true
    end
    if closestVehicleModel == 745926877 then --Buzzard
        validModel = true
    end
    if closestVehicleModel == 1353720154 then
        validModel = false
    end
    if vehicle_model == 1353720154 then
        is_in_flatbed = true
    else
        is_in_flatbed = false
    end
    if is_in_flatbed and attached_vehicle[1] == nil then
        if PAD.IS_CONTROL_PRESSED(0, 73) and validModel and closestVehicleModel ~= flatbedModel then
            script:sleep(200)
            controlled = entities.take_control_of(closestVehicle, 350)
            if controlled then
                 vehicleClass = VEHICLE.GET_VEHICLE_CLASS(closestVehicle)
                if vehicleClass == 1 then
                    zAxis = 0.9
                    yAxis = -2.3
                elseif vehicleClass == 2 then
                    zAxis = 0.993
                    yAxis = -2.17046
                elseif vehicleClass == 6 then
                    zAxis = 1.00069420
                    yAxis = -2.17046
                elseif vehicleClass == 7 then
                    zAxis = 1.009
                    yAxis = -2.17036
                elseif vehicleClass == 15 then
                    zAxis = 1.3
                    yAxis = -2.21069
                elseif vehicleClass == 16 then
                    zAxis = 1.5
                    yAxis = -2.21069
                else
                    zAxis = 1.1
                    yAxis = -2.0
                end
                ENTITY.SET_ENTITY_HEADING(closestVehicleModel, flatbedHeading)
                ENTITY.ATTACH_ENTITY_TO_ENTITY(closestVehicle, current_vehicle, flatbedBone, 0.0, yAxis, zAxis, 0.0, 0.0, 0.0, false, true, true, false, 1, true, 1)
                table.insert(attached_vehicle, closestVehicle)
                script:sleep(200)
            else
                gui.show_error("Flatbed Script", "Failed to take control of the vehicle!")
            end
        end
        if PAD.IS_CONTROL_PRESSED(0, 73) and closestVehicle ~= nil and not validModel then
            gui.show_message("Flatbed Script", "You can only tow cars, trucks and bikes.")
            script:sleep(400)
        end
        if PAD.IS_CONTROL_PRESSED(0, 73) and closestVehicleModel == flatbedModel then
            script:sleep(400)
            gui.show_message("Flatbed Script", "Sorry but you can not tow another flatbed truck.")
        end
    elseif is_in_flatbed and attached_vehicle[1] ~= nil then
        if PAD.IS_CONTROL_PRESSED(0, 73) then
            script:sleep(200)
             vehicleHandles = entities.get_all_vehicles_as_handles()
            for _, v in ipairs(vehicleHandles) do
                 modelHash = ENTITY.GET_ENTITY_MODEL(v)
                 attachedVehicle = ENTITY.GET_ENTITY_OF_TYPE_ATTACHED_TO_ENTITY(current_vehicle, modelHash)
                controlled = entities.take_control_of(attachedVehicle, 350)
                if ENTITY.DOES_ENTITY_EXIST(attachedVehicle) then
                    if controlled then
                        ENTITY.DETACH_ENTITY(attachedVehicle)
                        ENTITY.SET_ENTITY_COORDS(attachedVehicle, playerPosition.x - (playerForwardX * 10), playerPosition.y - (playerForwardY * 10), playerPosition.z, 0, 0, 0, 0)
                        VEHICLE.SET_VEHICLE_ON_GROUND_PROPERLY(attached_vehicle, 5.0)
                    end
                end
            end
            for key, value in ipairs(attached_vehicle) do
                 modelHash = ENTITY.GET_ENTITY_MODEL(value)
                 attachedVehicle = ENTITY.GET_ENTITY_OF_TYPE_ATTACHED_TO_ENTITY(PED.GET_VEHICLE_PED_IS_USING(PLAYER.PLAYER_PED_ID()), modelHash)
                    if ENTITY.DOES_ENTITY_EXIST(attachedVehicle) then
                        ENTITY.DETACH_ENTITY(attachedVehicle)
                        ENTITY.SET_ENTITY_COORDS(attachedVehicle, playerPosition.x - (playerForwardX * 10), playerPosition.y - (playerForwardY * 10), playerPosition.z, 0, 0, 0, 0)
                        VEHICLE.SET_VEHICLE_ON_GROUND_PROPERLY(attached_vehicle, 5.0)
                    end
                table.remove(attached_vehicle, key)
            end
            script:sleep(200)
        end
    end
end)
script.register_looped("TowPos Marker", function(tow)
    if towPos then
        if is_in_flatbed and attached_vehicle[1] == nil then
             playerPosition = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), false)
             playerForwardX = ENTITY.GET_ENTITY_FORWARD_X(PLAYER.PLAYER_PED_ID())
             playerForwardY = ENTITY.GET_ENTITY_FORWARD_Y(PLAYER.PLAYER_PED_ID())
             detectPos = vec3:new(playerPosition.x - (playerForwardX * 10), playerPosition.y - (playerForwardY * 10), playerPosition.z)
            GRAPHICS.DRAW_MARKER_SPHERE(detectPos.x, detectPos.y, detectPos.z, 2.5, 180, 128, 0, 0.115)
        end
    end
end)
 -- Global Player Options

  Global = Zephyr:add_tab("Global")

 -- Global RP Loop Options
  PRGBGLoop = false
 Global:add_text("Global Friendly Options")
 rpLoop = Global:add_checkbox("Drop RP (On/Off)")

     script.register_looped("PRGBGLoop", function()
     if rpLoop:is_enabled() == true then
          model = joaat("vw_prop_vw_colle_prbubble")
          pickup = joaat("PICKUP_CUSTOM_SCRIPT")
          money_value = 0
         gui.show_message("WARNING", "15 or more players may cause lag or RP to not drop.")
         STREAMING.REQUEST_MODEL(model)
         while STREAMING.HAS_MODEL_LOADED(model) == false do
             coroutine.yield()
         end

         if STREAMING.HAS_MODEL_LOADED(model) then
              PlayerId = PLAYER.PLAYER_ID()
              player_count = PLAYER.GET_NUMBER_OF_PLAYERS() - 1 -- Minus 1 player (yourself) from the drop count.
             gui.show_message("Global", "Dropping figurines to ".. player_count.." Players in the session.")

             for i = 0, 31 do
                 if i ~= PlayerId then
                      player_id = i

                      coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(player_id), true)
                      objectIdSpawned = OBJECT.CREATE_AMBIENT_PICKUP(
                         pickup,
                         coords.x - 0,
                         coords.y + 0,
                         coords.z + 0.4,
                         3,
                         money_value,
                         model,
                         true,
                         false
                     )
                     ENTITY.SET_ENTITY_VISIBLE(objectIdSpawned, true, false)
                     net_id = NETWORK.OBJ_TO_NET(objectIdSpawned)
                     NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(net_id, true)

                     ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(objectIdSpawned)
                 end
             end
         end
         --sleep(0.2) -- Sets the timer in seconds for how long this should pause before sending another figure
     end
     end)
toolTip(Global, "Drops Princess Robot Figurines for the entire session (Slightly glitchy)")
Global:add_sameline()
 goodRP = Global:add_checkbox("Fast RP")
script.register_looped("goodRP", function()
    if goodRP:is_enabled() == true then
        for p = 0, 31 do
            if p ~= PLAYER.PLAYER_ID() then
                for i = 20, 24 do
                    network.trigger_script_event(1 << p, {968269233 , p, 1, 4, i, 1, 1, 1, 1})
                     player_count = PLAYER.GET_NUMBER_OF_PLAYERS()
                    gui.show_message("Fast RP", "Giving massive amounts of RP to "..player_count.." players in the session")
                end
            end
        end
    end
end)
toolTip(Global, "Floods the entire session with RP (about 1-3 levels per second)")
Global:add_sameline()
 goodMoney = Global:add_checkbox("Money")
    script.register_looped("goodMoney", function()
        if goodMoney:is_enabled() == true then
            for i = 0, 31 do
                pid = i
                 PlayerId = PLAYER.PLAYER_ID()
                if pid ~= PlayerId then
                    for n = 0, 10 do
                        for l = -10, 10 do
                            network.trigger_script_event(1 << pid, {968269233 , pid, 1, l, l, n, 1, 1, 1})
                            gui.show_message("Money", "Giving money (max 225k) to "..player_count.." players in the session")
                        end
                    end
                end
            end
        end
        sleep(0.2)
    end)
toolTip(Global, "Supposed to give the entire session money and rp")
--[[ Global Sound Spam Options -- Temporarily Disabled as it causes you to crash on use
Global:add_separator()
Global:add_text("Sound Spams")
 soundIndex = 0
 isPlaying = false

useLoopedG = false
 useLoopedG = Global:add_checkbox("Loop?")
 searchQuery = ""
 filteredSoundNames = {}
 selectedFilteredSoundIndex = 0

 function updateFilteredSoundNames()
    filteredSoundNames = {}
    for _, sound in ipairs(sounds) do
        if string.find(string.lower(sound.SoundName), string.lower(searchQuery)) then
            table.insert(filteredSoundNames, sound.SoundName)
        end
    end
end

-- Function to display the list of sound names
 function displaySoundNamesList()
    updateFilteredSoundNames()
    if selectedFilteredSoundIndex > #filteredSoundNames then
        selectedFilteredSoundIndex = 0
    end
    selectedFilteredSoundIndex, _ = ImGui.Combo("Select Sound", selectedFilteredSoundIndex, filteredSoundNames, #filteredSoundNames)
end

-- Add search input field and sound selection
Global:add_imgui(function()
    if is_typing then
        PAD.DISABLE_ALL_CONTROL_ACTIONS(0)
    end
    searchQuery, _ = ImGui.InputText("Search Sounds", searchQuery, 128)
    if ImGui.IsItemActive() then
        is_typing = true
    else
        is_typing = false
    end

    displaySoundNamesList()

    if ImGui.Button("Play") then
        isPlaying = true
         selectedSoundName = filteredSoundNames[selectedFilteredSoundIndex + 1]
        for i = 0, 31 do
             playerIndex = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(i)
                 selectedSound = sounds[1]
                for _, sound in ipairs(sounds) do
                    if sound.SoundName == selectedSoundName then
                        selectedSound = sound
                        break
                    end
                end
                AUDIO.PLAY_SOUND_FROM_ENTITY(AUDIO.GET_SOUND_ID(), selectedSound.AudioName, playerIndex, selectedSound.AudioRef, true, 999999999)
                gui.show_message("Sound Spam", "Playing "..selectedSound.SoundName.." on the entire session.")
        end
    end
end)


Global:add_sameline()
Global:add_button("Stop  Sounds", function()
    isPlaying = false
    --for i=-1,100 do
    -- soundId = AUDIO.PLAY_SOUND_FROM_ENTITY(AUDIO.GET_SOUND_ID(), selectedSound.AudioName, playerIndex, selectedSound.AudioRef, true, 999999999)
        AUDIO.STOP_SOUND(soundId)
        AUDIO.RELEASE_SOUND_ID(soundId)
    --end
end)]]

-- Global Particle Effects
Global:add_separator()
Global:add_text("PTFX")
 fireworkLoop = Global:add_checkbox("Fireworks (On/Off)")

function load_fireworks()

    STREAMING.REQUEST_NAMED_PTFX_ASSET("proj_indep_firework")

    if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("proj_indep_firework") then
        return false
    end

    STREAMING.REQUEST_NAMED_PTFX_ASSET("scr_indep_fireworks")

    if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("scr_indep_fireworks") then
        return false
    end

    return true
end

function random_color()
    return math.random(0, 200), math.random(0, 255), math.random(0, 255)
end

script.register_looped("FireworkLoop", function()
    if fireworkLoop:is_enabled() == true then
        if load_fireworks() then
             PlayerId = PLAYER.PLAYER_ID()
            for i = 0, 31 do
                if i ~= PlayerId then
                     player_id = i
                     player_coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(player_id), true)

                    -- Get random color values
                     colorR, colorG, colorB = random_color()
                    player_coords.z = player_coords.z - 1
                    setExp1 = player_coords.z + 25
                    setExp2 = player_coords.z + 35
                    -- Play the explosion particle effect with random color
                    GRAPHICS.USE_PARTICLE_FX_ASSET("scr_indep_fireworks")
                    GRAPHICS.SET_PARTICLE_FX_NON_LOOPED_COLOUR(colorR, colorG, colorB)
                    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_indep_firework_trailburst", player_coords.x, player_coords.y, player_coords.z, 0, 0, 0, math.random(1, 5), false, false, false, false)
                    sleep(0.05)
                    GRAPHICS.USE_PARTICLE_FX_ASSET("proj_indep_firework")
                    GRAPHICS.SET_PARTICLE_FX_NON_LOOPED_COLOUR(colorR, colorG, colorB)
                    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_indep_firework_grd_burst", player_coords.x, player_coords.y, setExp1, 0, 0, 0, math.random(1, 5), false, false, false, false)

                    GRAPHICS.USE_PARTICLE_FX_ASSET("proj_indep_firework_v2")
                    GRAPHICS.SET_PARTICLE_FX_NON_LOOPED_COLOUR(colorR, colorG, colorB)
                    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_xmas_firework_burst_fizzle", player_coords.x, player_coords.y, setExp2, 0, 0, 0, math.random(1, 5), false, false, false, false)
                end
            end
        end
    end
end)
toolTip(Global, "Shoots a sequence of firework effects from every player in the session")
Global:add_sameline()
 flameLoopGlobal = Global:add_checkbox("Flames (On/Off)")
function load_flame()

    STREAMING.REQUEST_NAMED_PTFX_ASSET("scr_bike_adversary")

    if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("scr_bike_adversary") then
        return false
    end

    return true
end

function random_color()
    return math.random(0, 255), math.random(0, 255), math.random(0, 255)
end

script.register_looped("FlameLoopGlobal", function()
    if flameLoopGlobal:is_enabled() == true then
        if load_flame() then
             PlayerId = PLAYER.PLAYER_ID()
            for i = 0, 31 do
                if i ~= PlayerId then
                     player_id = i
                     player_coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(player_id), true)

                    -- Get random color values
                     colorR, colorG, colorB = random_color()
                    test = player_coords.z - 1
                    GRAPHICS.USE_PARTICLE_FX_ASSET("scr_bike_adversary")
                    GRAPHICS.SET_PARTICLE_FX_NON_LOOPED_COLOUR(colorR, colorG, colorB)
                    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_adversary_foot_flames", player_coords.x, player_coords.y, test, 0, 0, 0, 5, false, false, false, false)
                end
            end
            sleep(0.2)
        end
    end
end)
toolTip(Global, "Gives every player in the session the 'Ghost Rider' flame effect")
Global:add_sameline()
 lightningLoopGlobal = Global:add_checkbox("Lightning (On/Off)")
function load_lightning()

    STREAMING.REQUEST_NAMED_PTFX_ASSET("des_tv_smash")

    if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("des_tv_smash") then
        return false
    end

    return true
end

function random_color()
    return math.random(0, 255), math.random(0, 255), math.random(0, 255)
end

script.register_looped("lightningLoopGlobal", function()
    if lightningLoopGlobal:is_enabled() == true then
        if load_lightning() then
             PlayerId = PLAYER.PLAYER_ID()
            for i = 0, 31 do
                if i ~= PlayerId then
                     player_id = i
                     player_coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(player_id), true)

                    -- Get random color values
                     colorR, colorG, colorB = random_color()
                    test = player_coords.z
                    GRAPHICS.USE_PARTICLE_FX_ASSET("des_tv_smash")
                    GRAPHICS.SET_PARTICLE_FX_NON_LOOPED_COLOUR(colorR, colorG, colorB)
                    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD("ent_sht_electrical_box_sp", player_coords.x, player_coords.y, test, 0, 0, 0, 5, false, false, false, false)
                end
            end
            sleep(0.2)
        end
    end
end)
toolTip(Global, "Gives the entire session a Lightning/Electricity effect")
Global:add_sameline()
 snowLoopGlobal = Global:add_checkbox("Snow (On/Off)")
function load_snow()

    STREAMING.REQUEST_NAMED_PTFX_ASSET("proj_xmas_snowball")

    if not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED("proj_xmas_snowball") then
        return false
    end

    return true
end

function random_color()
    return math.random(0, 255), math.random(0, 255), math.random(0, 255)
end

script.register_looped("snowLoopGlobal", function()
    if snowLoopGlobal:is_enabled() == true then
        if load_snow() then
             PlayerId = PLAYER.PLAYER_ID()
            for i = 0, 32 do
                if i ~= PlayerId then
                     player_id = i
                     player_coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(player_id), true)

                    -- Get random color values
                     colorR, colorG, colorB = random_color()
                    test = player_coords.z
                    GRAPHICS.USE_PARTICLE_FX_ASSET("proj_xmas_snowball")
                    GRAPHICS.SET_PARTICLE_FX_NON_LOOPED_COLOUR(colorR, colorG, colorB)
                    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD("exp_grd_snowball", player_coords.x, player_coords.y, test, 0, 0, 0, 5, false, false, false, false)
                end
            end
            sleep(0.2)
        end
    end
end)
toolTip(Global, "Gives the entire session the effect of being hit with snowballs")
-- Global Explode
Global:add_separator()
Global:add_text("Troll Options")
 hornsCB = Global:add_checkbox("Horns")
script.register_looped("horns", function(hornsTest)
    if hornsCB:is_enabled() then
         vehicles = entities.get_all_vehicles_as_handles()
        for i, vehicle in ipairs(vehicles) do
            if request_control(vehicle) then
                VEHICLE.START_VEHICLE_HORN(vehicle, 1000, 0, true)
                AUDIO.USE_SIREN_AS_HORN(vehicle, true)
            end
        end
        hornsTest:yield()
    end
    sleep(0.2)
end)
toolTip(Global, "Makes all vehicle horns go off constantly.")
Global:add_separator()
Global:add_text("Toxic Options")
Global:add_button("Boat Skin Crash", function()
    script.run_in_fiber(function (pedpacrash)
        gui.show_message("Boat Skin", "Giving everyone the boat skin.")
        PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), -74.94, -818.58, 327)
         spped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(PLAYER.PLAYER_ID())
         ppos = ENTITY.GET_ENTITY_COORDS(spped, true)
        for n = 0 , 5 do
             object_hash = joaat("prop_byard_rowboat4")
            STREAMING.REQUEST_MODEL(object_hash)
              while not STREAMING.HAS_MODEL_LOADED(object_hash) do
                pedpacrash:yield()
            end
            PLAYER.SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(PLAYER.PLAYER_ID(),object_hash)
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(spped, 0,0,500, false, true, true)
            WEAPON.GIVE_DELAYED_WEAPON_TO_PED(spped, 0xFBAB5776, 1000, false)
            pedpacrash:sleep(1000)
            for i = 0 , 20 do
                PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 144, 1.0)
                PED.FORCE_PED_TO_OPEN_PARACHUTE(spped)
            end
            pedpacrash:sleep(1000)
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(spped, ppos.x, ppos.y, ppos.z, false, true, true)

             object_hash2 = joaat("prop_byard_rowboat4")
            STREAMING.REQUEST_MODEL(object_hash2)
            while not STREAMING.HAS_MODEL_LOADED(object_hash2) do
                pedpacrash:yield()
            end
            PLAYER.SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(PLAYER.PLAYER_ID(),object_hash2)
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(spped, 0,0,500, false, false, true)
            WEAPON.GIVE_DELAYED_WEAPON_TO_PED(spped, 0xFBAB5776, 1000, false)
            pedpacrash:sleep(1000)
            for i = 0 , 20 do
                PED.FORCE_PED_TO_OPEN_PARACHUTE(spped)
                PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 144, 1.0)
            end
            pedpacrash:sleep(1000)
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(spped, ppos.x, ppos.y, ppos.z, false, true, true)
        end
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(spped, ppos.x, ppos.y, ppos.z, false, true, true)
    end)
end)
toolTip(Global, "Give everyone the boat skin! (Parachute Crash w/ Boat as a parachute, fairly effective) will crash the entire session, does not work on some modders.")
Global:add_sameline()
Global:add_button("Fragment crash", function()
    script.run_in_fiber(function (fragcrash)
     PlayerId = PLAYER.PLAYER_PED_ID()
        for i = 0, 31 do
            if i ~= PlayerId then
                 players = i
                fraghash = joaat("prop_fragtest_cnst_04")
                STREAMING.REQUEST_MODEL(fraghash)
                 TargetCrds = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(selPlayer), false)
                 crashstaff1 = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
                    OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(crashstaff1, 1, false)
                 crashstaff2 = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
                    OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(crashstaff2, 1, false)
                 crashstaff3 = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
                    OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(crashstaff3, 1, false)
                 crashstaff4 = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
                    OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(crashstaff4, 1, false)
                for v = 0, 100 do
                     TargetPlayerPos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(network.get_selected_player()), false)
                    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(crashstaff1, TargetPlayerPos.x, TargetPlayerPos.y, TargetPlayerPos.z, false, true, true)
                    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(crashstaff2, TargetPlayerPos.x, TargetPlayerPos.y, TargetPlayerPos.z, false, true, true)
                    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(crashstaff3, TargetPlayerPos.x, TargetPlayerPos.y, TargetPlayerPos.z, false, true, true)
                    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(crashstaff4, TargetPlayerPos.x, TargetPlayerPos.y, TargetPlayerPos.z, false, true, true)
                    fragcrash:sleep(10)
                    delete_entity(crashstaff1)
                    delete_entity(crashstaff2)
                    delete_entity(crashstaff3)
                    delete_entity(crashstaff4)
                end
            end
        end
    end)
    script.run_in_fiber(function (fragcrash2)
     PlayerId = PLAYER.PLAYER_ID()
        for i = 0, 31 do
            if i ~= PlayerId then
                 players = i
                 TargetCrds = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(players), false)
                fraghash = joaat("prop_fragtest_cnst_04")
                STREAMING.REQUEST_MODEL(fraghash)
                for v=1,10 do

                     object = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
                    OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
                    delete_entity(object)
                     object = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
                    OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
                    delete_entity(object)
                     object = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
                    OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
                    delete_entity(object)
                     object = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
                    OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
                    delete_entity(object)
                     object = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
                    OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
                    delete_entity(object)
                     object = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
                    OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
                    delete_entity(object)
                     object = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
                    OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
                    delete_entity(object)
                     object = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
                    OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
                    delete_entity(object)
                     object = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
                    OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
                    delete_entity(object)
                     object = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
                    OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
                    fragcrash2:sleep(100)
                    delete_entity(object)
                end
            end
        end
    end)
end)
toolTip(Global, "Fragment crash the entire session")
Global:add_sameline()
Global:add_button("HUD Breaker", function()
    script.run_in_fiber(function(hudBreak)
        for p = 0, 31 do
             pid = p
            if p ~= PLAYER.PLAYER_ID() then
                for i = -1, 1 do
                    network.trigger_script_event(1 << pid, {1450115979, pid, i})
                end
            end
        end
            gui.show_message("HUD Breaker", "You have broken the entire sessions HUD and Interiors.")
            gui.show_message("HUD Breaker", "This causes them to have no HUD and also cannot see interior entry points, they can't pause or switch weapons either.")
    end)
end)
toolTip(Global, "Breaks the HUD for every player in the session, causes their missions to break in freemode, removes their HUD, prevents pausing and prevents entering properties as it removes the entrace markers")
Global:add_sameline()
clownJetAttack = Global:add_checkbox("Clown Jet Attack")
    script.register_looped("clownJetAttack", function(clownJetsOne)
        if clownJetAttack:is_enabled() == true then
            for i = 0, 31 do
                if i ~= PLAYER.PLAYER_ID() then
                     player = i
                     players = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(player)
                     playerName = PLAYER.GET_PLAYER_NAME(players)
                     coords = ENTITY.GET_ENTITY_COORDS(players, true)
                     heading = ENTITY.GET_ENTITY_HEADING(players)
                     spawnDistance = 150.0 * math.sin(math.rad(heading))
                     spawnHeight = 10.0 -- Adjust this value to set the height at which the jet spawns
                     isRoad, roadCoords = PATHFIND.GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING(coords.x + spawnDistance, coords.y + spawnDistance, coords.z, 1, coords, heading, 0, 9, 3.0, 2.5)
                     clown = joaat("s_m_y_clown_01")
                     jet = joaat("Lazer")
                     weapon = -1121678507

                    STREAMING.REQUEST_MODEL(clown)
                    STREAMING.REQUEST_MODEL(jet)
                    STREAMING.REQUEST_MODEL(weapon)

                    while not STREAMING.HAS_MODEL_LOADED(clown) or not STREAMING.HAS_MODEL_LOADED(jet) do
                        STREAMING.REQUEST_MODEL(clown)
                        STREAMING.REQUEST_MODEL(jet)
                        STREAMING.REQUEST_MODEL(weapon)
                        clownJetsOne:yield()
                    end

                    -- Calculate the spawn position for the jet in the air
                     jetSpawnX = coords.x + math.random(-1000, 1000)
                     jetSpawnY = coords.y + math.random(-1000, 1000)
                     jetSpawnZ = coords.z + math.random(50, 400)

                     colors = {27, 28, 29, 150, 30, 31, 32, 33, 34, 143, 35, 135, 137, 136, 36, 38, 138, 99, 90, 88, 89, 91, 49, 50, 51, 52, 53, 54, 92, 141, 61, 62, 63, 64, 65, 66, 67, 68, 69, 73, 70, 74, 96, 101, 95, 94, 97, 103, 104, 98, 100, 102, 99, 105, 106, 71, 72, 142, 145, 107, 111, 112,}
                     jetVehicle = VEHICLE.CREATE_VEHICLE(jet, jetSpawnX, jetSpawnY, jetSpawnZ, heading, true, false, false)
                    if jetVehicle ~= 0 then
                         primaryColor = colors[math.random(#colors)]
                         secondaryColor = colors[math.random(#colors)]

                        -- Set vehicle colors
                        VEHICLE.SET_VEHICLE_COLOURS(jetVehicle, primaryColor, secondaryColor)
                        -- Spawn clowns inside the jet
                        for seat = -1, -1 do
                             ped = PED.CREATE_PED(0, clown, jetSpawnX, jetSpawnY, jetSpawnZ, heading, true, true)

                            if ped ~= 0 then
                                 group = joaat("HATES_PLAYER")
                                PED.ADD_RELATIONSHIP_GROUP("clowns", group)
                                ENTITY.SET_ENTITY_CAN_BE_DAMAGED_BY_RELATIONSHIP_GROUP(ped, false, group)
                                PED.SET_PED_CAN_BE_TARGETTED(ped, false)

                                --PED.SET_PED_CONFIG_FLAG(ped, 132, true)
                                --PED.SET_PED_CONFIG_FLAG(ped, 42, true)
                                --PED.SET_PED_HIGHLY_PERCEPTIVE(ped, 1)
                                PED.SET_PED_TARGET_LOSS_RESPONSE(ped, 3)
                                ENTITY.SET_ENTITY_IS_TARGET_PRIORITY(players, true, true)
                                --PED.SET_PED_COMBAT_RANGE(ped, 10);
                                --PED.SET_PED_SEEING_RANGE(ped, 10);
                                --PED.SET_PED_CAN_BE_KNOCKED_OFF_VEHICLE(ped, 0)
                                PED.SET_DRIVER_AGGRESSIVENESS(ped, 1)
                                WEAPON.GIVE_WEAPON_TO_PED(ped, weapon, 999999, false, true)
                                --PED.SET_PED_COMBAT_ATTRIBUTES(ped, 5, true)
                                PED.SET_PED_COMBAT_ATTRIBUTES(ped, 13, true)
                                PED.SET_PED_COMBAT_ATTRIBUTES(ped, 31, true)
                                PED.SET_PED_COMBAT_ATTRIBUTES(ped, 17, false)
                                PED.SET_PED_COMBAT_ATTRIBUTES(ped, 1, true)
                                PED.SET_PED_COMBAT_ATTRIBUTES(ped, 46, true)
                                PED.SET_PED_COMBAT_ATTRIBUTES(ped, 0, false)
                                PED.SET_PED_INTO_VEHICLE(ped, jetVehicle, seat)
                                TASK.TASK_PLANE_MISSION(ped, jetVehicle, 0, players, 0, 0, 0, 6, 100, 0, 90, 0, -200)
                                --TASK.TASK_VEHICLE_MISSION_PED_TARGET(ped, jetVehicle, players, 6, 300, 1, 100, 200, true)
                                PED.SET_PED_KEEP_TASK(ped, true)
                                    --TASK.TASK_COMBAT_PED(ped, players, 0, 16)
                                    PED.SET_AI_WEAPON_DAMAGE_MODIFIER(10000)
                                    WEAPON.SET_WEAPON_DAMAGE_MODIFIER(1060309761, 10000)
                            else
                                gui.show_error("Failed", "Failed to create ped")
                            end
                        end
                    else
                        gui.show_error("Failed", "Failed to create jet")
                    end

                    if jetVehicle == 0 then
                        gui.show_error("Failed", "Failed to Create Jet")
                    else
                        gui.show_message("Griefing", "Clown Lazers spawned!  Lock-on Acquired! Target: "..PLAYER.GET_PLAYER_NAME(player).." Spawning jets every 15 seconds.")
                    end
                end
            end
            -- Release the resources associated with the spawned entities
            STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(jetVehicle)
            STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(ped)
            STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(weapon)
            sleep(2)
        end
    end)
toolTip(Global, "Spawns Rainbow colored jets with clowns as pilots on the entire session, loops and runs every 15 seconds.")
 explosionLoop = false
explosionLoop = Global:add_checkbox("Explosion (On/Off)")

script.register_looped("explosionLoop", function()
    if explosionLoop:is_enabled() == true then
         explosionType = 1  -- Adjust this according to the explosion type you want (1 = GRENADE, 2 = MOLOTOV, etc.)
         explosionFx = "explosion_barrel"
         PlayerId = PLAYER.PLAYER_ID()

        for i = 0, 31 do
            if i ~= PlayerId then
                 player_id = i
                 coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(player_id), true)
                gui.show_message("Global (Toxic)", "Exploding " .. PLAYER.GET_PLAYER_NAME(player_id) .. " repeatedly")

                FIRE.ADD_EXPLOSION(coords.x, coords.y, coords.z, explosionType, 100000.0, true, false, 0, false)
                GRAPHICS.USE_PARTICLE_FX_ASSET(explosionFx)
                GRAPHICS.START_PARTICLE_FX_NON_LOOPED_AT_COORD("explosion_barrel", coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 1.0, false, true, false)

                -- Optionally, you can play an explosion sound here using AUDIO.PLAY_SOUND_FROM_COORD
            end
        end

        sleep(0.4)  -- Sets the timer in seconds for how long this should pause before exploding another player
    end
end)
toolTip(Global, "Explode the entire session")
Global:add_sameline()
 ramGlobal = Global:add_checkbox("Vehicle Sandwich (On/Off)")

script.register_looped("ramGlobal", function()
    if ramGlobal:is_enabled() then
     PlayerId = PLAYER.PLAYER_ID()
         for i = 0, 31 do
            if i ~= PlayerId then
                 player_id = i
                    if NETWORK.NETWORK_IS_PLAYER_ACTIVE(player_id) then
                         coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(player_id), true)

                        -- Get a random vehicle model from the list (make sure 'vehicleModels' is defined)
                         randomModel = vehicleModels[math.random(1, #vehicleModels)]

                        -- Convert the string vehicle model to its hash value
                         modelHash = MISC.GET_HASH_KEY(randomModel)

                        -- Create the vehicle without the last boolean argument (keepTrying)
                         vehicle = VEHICLE.CREATE_VEHICLE(modelHash, coords.x, coords.y, coords.z + 20, 0.0, true, true, false)
                        -- Set vehicle orientation
                        ENTITY.SET_ENTITY_ROTATION(vehicle, 0, 0, 0, 2, true)
                         networkId = NETWORK.VEH_TO_NET(vehicle)
                        if NETWORK.NETWORK_GET_ENTITY_IS_NETWORKED(vehicle) then
                            NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(networkId, true)
                        end

                        if vehicle then
                            -- Set the falling velocity (adjust the value as needed)
                            ENTITY.SET_ENTITY_VELOCITY(vehicle, 0, 0, -100000000)
                            -- Optionally, you can play a sound or customize the ramming effect here
                            VEHICLE.SET_ALLOW_VEHICLE_EXPLODES_ON_CONTACT(vehicle, true)
                        end

                         vehicle2 = VEHICLE.CREATE_VEHICLE(modelHash, coords.x, coords.y, coords.z - 20, 0.0, true, true, false)
                        -- Set vehicle orientation
                        ENTITY.SET_ENTITY_ROTATION(vehicle2, 0, 0, 0, 2, true)
                         networkId = NETWORK.VEH_TO_NET(vehicle2)
                        if NETWORK.NETWORK_GET_ENTITY_IS_NETWORKED(vehicle2) then
                            NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(networkId, true)
                        end

                        if vehicle2 then
                            -- Set the falling velocity (adjust the value as needed)
                            ENTITY.SET_ENTITY_VELOCITY(vehicle2, 0, 0, 100000000)
                            -- Optionally, you can play a sound or customize the ramming effect here
                            VEHICLE.SET_ALLOW_VEHICLE_EXPLODES_ON_CONTACT(vehicle2, true)
                        end

                        gui.show_message("Grief", "Ramming " .. PLAYER.GET_PLAYER_NAME(player_id) .. " with vehicles")

                        -- Use these lines to delete the vehicle after spawning.
                        -- Needs some type of delay between spawning and deleting to function properly

                        ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(vehicle)
                        ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(vehicle2)
                    end
            end
        end

        -- Sets the timer in seconds for how long this should pause before ramming another player
        --sleep(0.2)
    end
end)
toolTip(Global, "Sandwich the entire session with vehicles")
-- Global Crashes
Global:add_sameline()
 crashGlobal = Global:add_checkbox("PR Crash All (On/Off)")

script.register_looped("crashGlobal", function()
    if crashGlobal:is_enabled() then
     PlayerId = PLAYER.PLAYER_ID()
         for i = 0, 31 do
            if i ~= PlayerId then
                 player_id = i
                 model = joaat("vw_prop_vw_colle_prbubble")
                 pickup = joaat("PICKUP_CUSTOM_SCRIPT")
                 money_value = 100000000000

                STREAMING.REQUEST_MODEL(model)

                if STREAMING.HAS_MODEL_LOADED(model) then
                gui.show_message("Global (Toxic)", "Crashing " .. PLAYER.GET_PLAYER_NAME(player_id) .. " with figurines")
                     coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(player_id), true)
                     objectIdSpawned = OBJECT.CREATE_AMBIENT_PICKUP(
                        pickup,
                        coords.x,
                        coords.y,
                        coords.z + 0.5,
                        3,
                        money_value,
                        model,
                        true,
                        false
                    )

                     net_id = NETWORK.OBJ_TO_NET(objectIdSpawned)
                    NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(objectIdSpawned, true)

                    ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(objectIdSpawned)
                end
                 sleep(0.1) -- Sets the timer in seconds for how long this should pause
            end
        end
    end
end)
toolTip(Global, "Spawn overpriced Princess Robot Figurines to crash all players in the session")
-- Global Weapons
Global:add_separator()
Global:add_text("Global Weapons Options")
Global:add_button("Give All Weapons to Players", function()
    script.run_in_fiber(function(giveWeapons)
        player_count = PLAYER.GET_NUMBER_OF_PLAYERS()
        for i = 0, 31 do
             playerID = i
             ent = PLAYER.GET_PLAYER_PED(playerID)
            if ENTITY.DOES_ENTITY_EXIST(ent) and not ENTITY.IS_ENTITY_DEAD(ent, false) then
                for _, name in ipairs(weaponNamesString) do
                    weaponHash = MISC.GET_HASH_KEY(name)
                    WEAPON.GIVE_WEAPON_TO_PED(ent, weaponHash, 9999, false, true)
                end
            end
        end
        gui.show_message("Global", "Successfully given all weapons to all players")
    end)
end)
toolTip(Global, "Gives all weapons to the entire session and also announces that you have done so")
Global:add_sameline()
Global:add_button("Remove All Weapons from Players", function()
    script.run_in_fiber(function(removeWeapons)
        player_count = PLAYER.GET_NUMBER_OF_PLAYERS()

        for i = 0, 31 do
             playerID = i
             ent = PLAYER.GET_PLAYER_PED(playerID)
            if ENTITY.DOES_ENTITY_EXIST(ent) and not ENTITY.IS_ENTITY_DEAD(ent, false) then
                for _, name in ipairs(weaponNamesString) do
                    if name ~= weapon_unarmed then
                    weaponHash = MISC.GET_HASH_KEY(name)
                    WEAPON.REMOVE_WEAPON_FROM_PED(ent, weaponHash)
                    end
                end
            end
        end
         msg = "I have removed all weapons from the entire lobby.  This only lasts until you switch sessions, have fun!"
        network.send_chat_message(msg, false)
        gui.show_message("Global", "Successfully removed all weapons from all players")
    end)
end)
toolTip(Global, "Removes all weapons from the entire session and also anounces that you have done so")
-- Story Mode Options

StoryCharacters = Zephyr:add_tab("Story Mode")

    mCash = 0
    StoryCharacters:add_imgui(function()
        mCash, used = ImGui.SliderInt("Michael's Cash", mCash, 1, 2147483646)
        out = "Michael's cash set to $"..tostring(mCash)
        if used then
            STATS.STAT_SET_INT(joaat("SP0_TOTAL_CASH"), mCash, true)
            gui.show_message('Story Mode Cash Updated!', out)
        end
    end)

    fCash = 0
    StoryCharacters:add_imgui(function()
        fCash, used = ImGui.SliderInt("Franklin's Cash", fCash, 1, 2147483646)
        out = "Franklins's cash set to $"..tostring(fCash)
        if used then
            STATS.STAT_SET_INT(joaat("SP1_TOTAL_CASH"), fCash, true)
            gui.show_message('Story Mode Cash Updated!', out)
        end
    end)

    tCash = 0
    StoryCharacters:add_imgui(function()
        tCash, used = ImGui.SliderInt("Trevor's Cash", tCash, 1, 2147483646)
        out = "Trevor's cash set to $"..tostring(tCash)
        if used then
            STATS.STAT_SET_INT(joaat("SP2_TOTAL_CASH"), tCash, true)
            gui.show_message('Story Mode Cash Updated!', out)
        end
    end)
    StoryCharacters:add_separator()
    mStats = 0
    StoryCharacters:add_imgui(function()
        mStats, used = ImGui.SliderInt("Michael's Stats", mStats, 0, 100)
        out = "Michael's Stats set to "..tostring(mStats).."/100"
        if used then
            STATS.STAT_SET_INT(joaat("SP0_SPECIAL_ABILITY"), mStats, true)
            STATS.STAT_SET_INT(joaat("SP0_STAMINA"), mStats, true)
            STATS.STAT_SET_INT(joaat("SP0_STRENGTH"), mStats, true)
            STATS.STAT_SET_INT(joaat("SP0_LUNG_CAPACITY"), mStats, true)
            STATS.STAT_SET_INT(joaat("SP0_WHEELIE_ABILITY"), mStats, true)
            STATS.STAT_SET_INT(joaat("SP0_FLYING_ABILITY"), mStats, true)
            STATS.STAT_SET_INT(joaat("SP0_SHOOTING_ABILITY"), mStats, true)
            STATS.STAT_SET_INT(joaat("SP0_STEALTH_ABILITY"), mStats, true)
            gui.show_message('Story Mode Stats Updated!', out)
        end
    end)

    fStats = 0
    StoryCharacters:add_imgui(function()
        fStats, used = ImGui.SliderInt("Franklin's Stats", fStats, 0, 100)
        out = "Franklin's Stats set to "..tostring(fStats).."/100"
        if used then
            STATS.STAT_SET_INT(joaat("SP1_SPECIAL_ABILITY"), fStats, true)
            STATS.STAT_SET_INT(joaat("SP1_STAMINA"), fStats, true)
            STATS.STAT_SET_INT(joaat("SP1_STRENGTH"), fStats, true)
            STATS.STAT_SET_INT(joaat("SP1_LUNG_CAPACITY"), fStats, true)
            STATS.STAT_SET_INT(joaat("SP1_WHEELIE_ABILITY"), fStats, true)
            STATS.STAT_SET_INT(joaat("SP1_FLYING_ABILITY"), fStats, true)
            STATS.STAT_SET_INT(joaat("SP1_SHOOTING_ABILITY"), fStats, true)
            STATS.STAT_SET_INT(joaat("SP1_STEALTH_ABILITY"), fStats, true)
            gui.show_message('Story Mode Stats Updated!', out)
        end
    end)

    tStats = 0
    StoryCharacters:add_imgui(function()
        tStats, used = ImGui.SliderInt("Trevor's Stats", tStats, 0, 100)
        out = "Trevor's Stats set to "..tostring(tStats).."/100"
        if used then
            STATS.STAT_SET_INT(joaat("SP2_SPECIAL_ABILITY"), tStats, true)
            STATS.STAT_SET_INT(joaat("SP2_STAMINA"), tStats, true)
            STATS.STAT_SET_INT(joaat("SP2_STRENGTH"), tStats, true)
            STATS.STAT_SET_INT(joaat("SP2_LUNG_CAPACITY"), tStats, true)
            STATS.STAT_SET_INT(joaat("SP2_WHEELIE_ABILITY"), tStats, true)
            STATS.STAT_SET_INT(joaat("SP2_FLYING_ABILITY"), tStats, true)
            STATS.STAT_SET_INT(joaat("SP2_SHOOTING_ABILITY"), tStats, true)
            STATS.STAT_SET_INT(joaat("SP2_STEALTH_ABILITY"), tStats, true)
            gui.show_message('Story Mode Stats Updated!', out)
        end
    end)

-- Weapons Tab

 Weapons = Zephyr:add_tab("Weapons")

Weapons:add_button("Remove All Weapons", function()
    script.run_in_fiber(function(removeWeap)
         playerID = network.get_selected_player()
         ent = PLAYER.GET_PLAYER_PED(playerID)
        out = "Successfully removed all weapons from "..PLAYER.GET_PLAYER_NAME(playerID)
        if ENTITY.DOES_ENTITY_EXIST(ent) and not ENTITY.IS_ENTITY_DEAD(ent, false) then
            for _, name in ipairs(weaponNamesString) do
                if name ~= weapon_unarmed then
                    weaponHash = MISC.GET_HASH_KEY(name)
                    WEAPON.REMOVE_WEAPON_FROM_PED(ent, weaponHash)
                    gui.show_message('Weapons', out)
                end
            end
        end
    end)
end)
toolTip(Weapons, "Removes all weapons from the selected player")
Weapons:add_sameline()
Weapons:add_button("Give All Weapons", function()
    script.run_in_fiber(function(giveWeap)
         playerID = network.get_selected_player()
         ent = PLAYER.GET_PLAYER_PED(playerID)
        out = "Successfully given all weapons to "..PLAYER.GET_PLAYER_NAME(playerID)
        if ENTITY.DOES_ENTITY_EXIST(ent) and not ENTITY.IS_ENTITY_DEAD(ent, false) then
            for _, name in ipairs(weaponNamesString) do
                 weaponHash = MISC.GET_HASH_KEY(name)
                WEAPON.GIVE_WEAPON_TO_PED(ent, weaponHash, 9999, false, true)
                gui.show_message('Weapons', out)

            end
        end
    end)
end)
toolTip(Weapons, "Gives all weapons to the selected player")
Weapons:add_separator()
Weapons:add_text("Weapon Drops")
Weapons:add_button("Drop Random Weapon", function()
    script.run_in_fiber(function(randomWeapon)
         weaponName = weaponNamesString[math.random(1, #weaponNamesString)]
         money_value = 0
         player_id = network.get_selected_player()
         model = weaponModels[math.random(1, #weaponModels)]

         modelHash = joaat(model)
        STREAMING.REQUEST_MODEL(modelHash)
        while STREAMING.HAS_MODEL_LOADED(modelHash) == false do
            randomWeapon:yield()
        end
        if STREAMING.HAS_MODEL_LOADED(modelHash) then
            gui.show_message("Weapon Drop Started", "Dropping " .. weaponName .. " on "..PLAYER.GET_PLAYER_NAME(player_id))
             coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(player_id), true)
             objectIdSpawned = OBJECT.CREATE_AMBIENT_PICKUP(
                joaat("PICKUP_" .. string.upper(weaponName)),
                coords.x,
                coords.y,
                coords.z + 1,
                3,
                money_value,
                modelHash,
                true,
                false
            )

            net_id = NETWORK.OBJ_TO_NET(objectIdSpawned)
            NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(net_id, true)
        end
        sleep(0.5)
    end)
end)
toolTip(Weapons, "Drops random weapons on the selected player as pickup items")
Weapons:add_separator()


-- Business Management
 Business = Zephyr:add_tab("Business Manager")

 agency = Business:add_tab("Agency")

MPX = PI
PI = stats.get_int("MPPLY_LAST_MP_CHAR")
if PI == 0 then
    MPX = "MP0_"
else
    MPX = "MP1_"
end

selectedContractIndex = 0
selectedContract = contracts[selectedContractIndex + 1]

agency:add_text("Agency Contract Selection")

-- Display the listbox
contractChanged = false

agency:add_imgui(function()
    -- Extract the contract names for the ListBox
    local contract_names = {}
    for i, contract in ipairs(contracts) do
        table.insert(contract_names, contract.name)
    end

    selectedContractIndex, used = ImGui.ListBox("##ContractList", selectedContractIndex, contract_names, #contract_names) -- Display the listbox
    if used then
        selectedContract = contracts[selectedContractIndex + 1]
    end

    if ImGui.Button("Select Contract") then
        local contractToUse = contracts[selectedContractIndex + 1]
        
        if contractToUse and contractToUse.id then  -- Ensure contractToUse is not nil and has a valid id
            STATS.STAT_SET_INT(joaat(MPX .. "FIXER_STORY_BS"), contractToUse.id, true)
            gui.show_message("Agency", "Contract: " .. contractToUse.name .. " ID: " .. contractToUse.id .. " Selected")
        else
            gui.show_message("Error", "Invalid Contract ID")
        end
    end
end)
toolTip(agency, "Sets the selected contract as the one you are currently playing")
agency:add_sameline()

agency:add_button("Complete Preps", function()
    script.run_in_fiber(function(agencyPreps)
        STATS.STAT_SET_INT(joaat(MPX .. "FIXER_GENERAL_BS"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "FIXER_COMPLETED_BS"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "FIXER_STORY_COOLDOWN_POSIX"), -1, true)
    end)
end)
toolTip(agency, "Completes the preps of your current contract")
agency:add_sameline()
agency:add_button("Skip Cooldown", function()
    script.run_in_fiber(function(agencyCD)
        STATS.STAT_SET_INT(joaat(MPX .. "FIXER_STORY_COOLDOWN"), -1, true)
    end)
end)
toolTip(agency, "Skips the cooldown between playing contracts")
agency:add_imgui(function()
    if (ImGui.TreeNode("How To Use")) then
        ImGui.Text("Select the contract you want to play and press Select Contract.")
        ImGui.Text("Press Complete Preps and then WALK OUTSIDE and roam until you get a call from Franklin.")
        ImGui.Text("Go back inside the agency and skip the cutscene if you want to.")
        ImGui.Separator()
        ImGui.Text("Now, depending on which mission you select you will either go to the computer.")
        ImGui.Text("OR")
        ImGui.Text("If DFW Dre is selected, there should be a yellow marker on the ground outside Franklins office.")
    end
    toolTip("", "How to set up the agency contracts properly.")
end)
agency:add_separator()
agency:add_text("Money")
 agencySafe = agency:add_checkbox("Agency Safe Loop")
script.register_looped("agencyloop", function(script)
    script:yield()
    if agencySafe:is_enabled() == true then
        gui.show_message("Business Manager", "Supplying Agency Safe with money")
        STATS.STAT_SET_INT(joaat(MPX .. "FIXER_COUNT"), 500, true)
        STATS.STAT_SET_INT(joaat(MPX .. "FIXER_PASSIVE_PAY_TIME_LEFT"), -1, true)
        sleep(0.5)
    end
end)
toolTip(agency, "Fills your agency safe with money")
 bunker = Business:add_tab("Bunker")

bunker:add_button("Unlock All Shooting Range", function()
    script.run_in_fiber(function(unlockSR)
        MPX = PI
        PI = stats.get_int("MPPLY_LAST_MP_CHAR")
        if PI == 0 then
            MPX = "MP0_"
        else
            MPX = "MP1_"
        end
        STATS.STAT_SET_INT(joaat(MPX .. "SR_HIGHSCORE_1"), 690, true)
        STATS.STAT_SET_INT(joaat(MPX .. "SR_HIGHSCORE_2"), 1860, true)
        STATS.STAT_SET_INT(joaat(MPX .. "SR_HIGHSCORE_3"), 2690, true)
        STATS.STAT_SET_INT(joaat(MPX .. "SR_HIGHSCORE_4"), 2660, true)
        STATS.STAT_SET_INT(joaat(MPX .. "SR_HIGHSCORE_5"), 2650, true)
        STATS.STAT_SET_INT(joaat(MPX .. "SR_HIGHSCORE_6"), 450, true)
        STATS.STAT_SET_INT(joaat(MPX .. "SR_TARGETS_HIT"), 269, true)
        STATS.STAT_SET_INT(joaat(MPX .. "SR_WEAPON_BIT_SET"), -1, true)
        STATS.STAT_SET_BOOL(joaat(MPX .. "SR_TIER_1_REWARD"), true, true)
        STATS.STAT_SET_BOOL(joaat(MPX .. "SR_TIER_3_REWARD"), true, true)
        STATS.STAT_SET_BOOL(joaat(MPX .. "SR_INCREASE_THROW_CAP"), true, true)
    end)
end)
toolTip(bunker, "Sets all shooting range missions to completed @ 3 stars")
bunker:add_sameline()
MPX = PI
PI = stats.get_int("MPPLY_LAST_MP_CHAR")
if PI == 0 then
    MPX = "MP0_"
else
    MPX = "MP1_"
end
bunker:add_button("Unlock All Research", function()
    script.run_in_fiber(function(script)
        globals.set_int(262145 + 22067, 1)
        gui.show_message("Bunker Research", "ALL Bunker research has been unlocked.")
    end)
end)
toolTip(bunker, "Unlocks all bunker research instantly.")
fastProd = bunker:add_checkbox("Fast Production")
    script.register_looped("bunkerProd", function(script)
	if fastProd:is_enabled() then
		STATS.STAT_SET_INT(joaat(MPX .. "GR_RESEARCH_PRODUCTION_TIME"), 1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "GR_RESEARCH_UPGRADE_EQUIPMENT_REDUCTION_TIME"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "GR_RESEARCH_UPGRADE_STAFF_REDUCTION_TIME"), 0, true)
		STATS.STAT_SET_INT(joaat(MPX .. "GR_MANU_PRODUCTION_TIME"), 1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "GR_MANU_UPGRADE_EQUIPMENT_REDUCTION_TIME"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "GR_MANU_UPGRADE_STAFF_REDUCTION_TIME"), 0, true)
        gui.show_message("Production", "Bunker production speed has been increased, make sure you loop your supplies!")
    end
	end)
toolTip(bunker, "Speeds up production time, requires supplies to keep production going")
bunker:add_sameline()
 bSupplies = bunker:add_checkbox("Resupply Bunker (Looped)")
script.register_looped("autoGetBunkerCargo", function(script)
    script:yield()
    if bSupplies:is_enabled() == true then
        autoGetBunkerCargo = not autoGetBunkerCargo
        if autoGetBunkerCargo then
            globals.set_int(1663174 + 1 + 5, 1)
            gui.show_message("Bunker", "Resupplying your bunker supplies.")
        end
    end
end)
toolTip(bunker, "Instantly resupplies your bunker supplies")
 Hangar = Business:add_tab("Hangar")

hStock = Hangar:add_checkbox("Resupply Hangar Cargo (Looped)")
script.register_looped("autoGetHangarCargo", function(script)
  MPX = PI
        PI = stats.get_int("MPPLY_LAST_MP_CHAR")
        if PI == 0 then
            MPX = "MP0_"
        else
            MPX = "MP1_"
        end
    script:yield()
    if hStock:is_enabled() == true then
        autoGetHangarCargo = not autoGetHangarCargo
        if autoGetHangarCargo then
            stats.set_bool_masked(MPX .. "DLC22022PSTAT_BOOL3", true, 9)
            gui.show_message("Hangar", "Restocking hangar cargo, please wait...")
            sleep(0.5)
        end
    end
end)
toolTip(Hangar, "Instantly supplies your hangar with random cargo")
 mcBus = Business:add_tab("Motorcycle Club")

mcBus:add_button("MC President (On/Off)", function()
    -- -1 is off, 0 is on
    playerID = PLAYER.PLAYER_ID()
    g = 1887305 + (playerID * 609) + 10
    gb1 = globals.get_int(g + 1)
    gb2 = globals.get_int(g + 430)
    if gb1 == playerID and gb2 == 1 then
        globals.set_int(g + 1, -1)
        globals.set_int(g + 430, -1)
        gui.show_message("Motorcycle Club", "You are no longer an MC President")
    else
        globals.set_int(g + 1, playerID)
        globals.set_int(g + 430, 1)
        gui.show_message("Motorcycle Club", "You are now an MC President")
    end
end)
toolTip(mcBus, "Register as an MC President")
mcBus:add_text("Resuppliers")
acidLab = mcBus:add_checkbox("Resupply Acid Lab (Looped)")
script.register_looped("autoGetAcidCargo", function(script)
    script:yield()
    if acidLab:is_enabled() == true then
        autoGetAcidCargo = not autoGetAcidCargo
        if autoGetAcidCargo then
            globals.set_int(1663174 + 1 + 6, 1)
            gui.show_message("Acid Lab", "Resupplying your acid lab stock, please wait...")
            sleep(0.5)
        end
    end
end)
toolTip(mcBus, "Resupply your Acid Lab supplies")
mcBus:add_sameline()
docForge = mcBus:add_checkbox("Resupply Document Forge (Looped)")
script.register_looped("autoGetDocForgeCargo", function(script)
    script:yield()
    if docForge:is_enabled() == true then
        autoGetDocForgeCargo = not autoGetDocForgeCargo
        if autoGetDocForgeCargo then
            globals.set_int(1663174 + 1 + 4, 1)
            gui.show_message("Document Forge", "Resupplying your document forge, please wait...")
            sleep(0.5)
        end
    end
end)
toolTip(mcBus, "Resupply your Document Forge supplies")
weed = mcBus:add_checkbox("Resupply Weed (Looped)")
script.register_looped("autoGetWeedCargo", function(script)
    script:yield()
    if weed:is_enabled() == true then
        autoGetWeedCargo = not autoGetWeedCargo
        if autoGetWeedCargo then
            globals.set_int(1663174 + 1 + 3, 1)
            gui.show_message("Weed Farm", "Resupplying your weed farm, please wait...")
            sleep(0.5)
        end
    end
end)
toolTip(mcBus, "Resupply your Weed Farm supplies")
mcBus:add_sameline()
meth = mcBus:add_checkbox("Resupply Meth (Looped)")
script.register_looped("autoGetMethCargo", function(script)
    script:yield()
    if meth:is_enabled() == true then
        autoGetMethCargo = not autoGetMethCargo
        if autoGetMethCargo then
            globals.set_int(1663174 + 1 + 0, 1)
            gui.show_message("Meth Lab", "Resupplying your meth lab, please wait...")
            sleep(0.5)
        end
    end
end)
toolTip(mcBus, "Resupply your Meth Lab supplies")
mcBus:add_sameline()
cocaine = mcBus:add_checkbox("Resupply Cocaine (Looped)")
script.register_looped("autoGetCokeCargo", function(script)
    script:yield()
    if cocaine:is_enabled() == true then
        autoGetCokeCargo = not autoGetCokeCargo
        if autoGetCokeCargo then
            globals.set_int(1663174 + 1 + 1, 1)
            gui.show_message("Cocaine Lockup", "Resupplying your cocaine lockup, please wait...")
            sleep(0.5)
        end
    end
end)
toolTip(mcBus, "Resupply your Cocaine Lockup supplies")
fakeCash = mcBus:add_checkbox("Resupply Counterfeit Cash (Looped)")
script.register_looped("autoGetCashCargo", function(script)
    script:yield()
    if fakeCash:is_enabled() == true then
        autoGetCashCargo = not autoGetCashCargo
        if autoGetCashCargo then
            globals.set_int(1663174 + 1 + 2, 1)
            gui.show_message("Counterfeit Cash", "Resupplying your counterfeit cash, please wait...")
            sleep(0.5)
        end
    end
end)
toolTip(mcBus, "Resupply your Counterfeit Cash supplies")
mcBus:add_separator()
mcBus:add_button("Resupply All", function()
    script.run_in_fiber(function(mcResupply)
                globals.set_int(1663174 + 1 + 0, 1)
        globals.set_int(1663174 + 1 + 0, 1)
        globals.set_int(1663174 + 1 + 0, 1) -- Meth Lab Suplies
        gui.show_message("Meth Lab", "Resupplying your Meth Lab")
        globals.set_int(1663174 + 1 + 1, 1)
        globals.set_int(1663174 + 1 + 1, 1)
        globals.set_int(1663174 + 1 + 1, 1) -- Cocaine Lockup Supplies 
        gui.show_message("Cocaine Lockup", "Resupplying your Cocaine Lockup")
        globals.set_int(1663174 + 1 + 2, 1)
        globals.set_int(1663174 + 1 + 2, 1)
        globals.set_int(1663174 + 1 + 2, 1) -- Counterfeit Cash
        gui.show_message("Counterfeit Cash Factory", "Resupplying your Counterfeit Cash Factory")
        globals.set_int(1663174 + 1 + 3, 1)
        globals.set_int(1663174 + 1 + 3, 1)
        globals.set_int(1663174 + 1 + 3, 1) -- Weed Farm Supplies
        gui.show_message("Weed Farm", "Resupplying your Weed Farm")
        globals.set_int(1663174 + 1 + 4, 1)
        globals.set_int(1663174 + 1 + 4, 1)
        globals.set_int(1663174 + 1 + 4, 1) -- Document Forge Supplies
        gui.show_message("Document Forge", "Resupplying your Document Forge")
        globals.set_int(1663174 + 1 + 5, 1)
        globals.set_int(1663174 + 1 + 5, 1)
        globals.set_int(1663174 + 1 + 5, 1) -- Bunker Supplies
        gui.show_message("Bunker", "Resupplying your Bunker")
        globals.set_int(1663174 + 1 + 6, 1)
        globals.set_int(1663174 + 1 + 6, 1)
        globals.set_int(1663174 + 1 + 6, 1) -- Acid Lab Supplies
        gui.show_message("Acid Lab", "Resupplying your Acid Lab")
    end)
end)
toolTip(mcBus, "Resupplies all your supplies for all businesses")
mcBus:add_sameline()
mcBus:add_button("Fast Production", function()
    script.run_in_fiber(function(fastProd)
        globals.set_int(262145 + 17599, 25500) -- prod time for weed
        globals.set_int(262145 + 17600, 25500) -- prod time for meth
        globals.set_int(262145 + 17601, 25500) -- prod time for cocaine
        globals.set_int(262145 + 17602, 25500) -- prod time for document forge
        globals.set_int(262145 + 17603, 25500) -- prod time for cash
        --globals.set_int(262145 + 17632, 10000)
        gui.show_message("Production Speed", "Production speed has been sped up for all businesses")
        gui.show_message("Production Speed", "Production speed increase will not start until workers finish the first product, keep it supplied to fill the product bar")
    end)
end)
toolTip(mcBus, "Activates fast production for all MC businesses (read top right for info after pressing the button)")
mcBus:add_sameline()
mcBus:add_button("Raise Sale Prices", function()
    globals.set_int(262145 + 17632, 15000) -- price for weed
    globals.set_int(262145 + 17631, 60000) -- price for meth
    globals.set_int(262145 + 17630, 100000) -- price for cocaine
    globals.set_int(262145 + 17628, 20000) -- price for document forge
    globals.set_int(262145 + 17629, 30000) -- price for cash
    --globals.set_int(262145 + 17632, 10000)
    gui.show_message("Production Value", "Production sale value has been increased for all businesses")
end)
toolTip(mcBus, "Raises the sale price for all MC Businesses to over 1 million each")
mcBus:add_separator()
mcBus:add_text("Motorcycle Club Name Changer")
 mcName = ""
mcBus:add_imgui(function()
    if is_typing then
        PAD.DISABLE_ALL_CONTROL_ACTIONS(0)
    end
    mcName, used = ImGui.InputText("MC name", mcName, 256)
    if ImGui.IsItemActive() then
        is_typing = true
    else
        is_typing = false
    end
end)
toolTip(mcBus, "Change your MC Name to whatever you want")
checkBoxes = {}
labels = {"R* Verified Icon", "R* Icon", "R* Created Icon", "Lock Icon", "Copyright"}
values = {"&#166;", "&#8721;", "&#8249;", "&#937;", "&#169;"}

for i, label in ipairs(labels) do
    checkBox = mcBus:add_checkbox(labels[i])
    if #labels ~= i then
        mcBus:add_sameline()
    end
    table.insert(checkBoxes, checkBox)
    toolTip(mcBus, "Toggle an icon to use with your MC Name")
end

mcBus:add_button("Change MC Name", function()
    MPX = PI
    PI = stats.get_int("MPPLY_LAST_MP_CHAR")
    if PI == 0 then
        MPX = "MP0_"
    else
        MPX = "MP1_"
    end
    script.run_in_fiber(function (script)
        for i, checkBox in ipairs(checkBoxes) do
            if checkBox:is_enabled() then
                if labels[i] == "Copyright" then
                    STATS.STAT_SET_STRING(joaat(MPX .. "MC_GANG_NAME"), values[i].. " ", true)
                    STATS.STAT_SET_STRING(joaat(MPX .. "MC_GANG_NAME2"), mcName, true)
                     MCnTwo = STATS.STAT_GET_STRING(joaat(MPX .. "MC_GANG_NAME2"), -1)
                    gui.show_message("Motorcycle Club", "Your MC name has been changed to ".. mcName .. " game returns ".. labels[i].. " ".. MCnTwo.. ". Changing sessions to apply")
                    SessionChanger(0)
                    return
                else
                    STATS.STAT_SET_STRING(joaat(MPX .. "MC_GANG_NAME"), mcName, true)
                    STATS.STAT_SET_STRING(joaat(MPX .. "MC_GANG_NAME2"), values[i].. " ", true)
                     MCnOne = STATS.STAT_GET_STRING(joaat(MPX .. "MC_GANG_NAME"), -1)
                    gui.show_message("Motorcycle Club", "Your MC name has been changed to ".. mcName .. " game returns ".. labels[i].. " - ".. MCnOne.. ". Changing sessions to apply")
                    SessionChanger(0)
                    return
                end
            end
        end
        STATS.STAT_SET_STRING(joaat(MPX .. "MC_GANG_NAME"), "", true)
        STATS.STAT_SET_STRING(joaat(MPX .. "MC_GANG_NAME2"), mcName, true)
         MCnTwo = STATS.STAT_GET_STRING(joaat(MPX .. "MC_GANG_NAME2"), -1)
        gui.show_message("Motorcycle Club", "Your MC name has been changed to ".. mcName .. " game returns "..MCnTwo..". Changing sessions to apply")
        SessionChanger(0)
    end)
end)
toolTip(mcBus, "Apply changes and switch sessions.")
script.register_looped("mcNameCB", function(mcName)
    cbE = 0
    for i, checkBox in ipairs(checkBoxes) do
        if checkBox:is_enabled() then
            cbE = cbE + 1
        end
        if cbE > 1 then
            checkBox:set_enabled(false)
            gui.show_message("Icons", "you can only select one checkbox")
        end
    end
end)

 arcade = Business:add_tab("Arcade")

MPX = PI
PI = stats.get_int("MPPLY_LAST_MP_CHAR")
if PI == 0 then
    MPX = "MP0_"
else
    MPX = "MP1_"
end

 arcadeSafe = arcade:add_checkbox("Arcade Safe Loop")
script.register_looped("arcadeloop", function(script)
    script:yield()
    if arcadeSafe:is_enabled() == true then
        gui.show_message("Business Manager", "Supplying Arcade Safe with money")
        STATS.STAT_SET_INT(joaat(MPX .. "ARCADE_SAFE_CASH_VALUE"), 2000, true)
        STATS.STAT_SET_INT(joaat(MPX .. "ARCADE_PAY_TIME_LEFT"), -1, true)
        sleep(0.5)
    end
end)
toolTip(arcade, "Fills your arcade safe with money")
-- Nightclub Loop - L7Neg
 Club = Business:add_tab("Nightclub")

MPX = PI
PI = stats.get_int("MPPLY_LAST_MP_CHAR")
if PI == 0 then
    MPX = "MP0_"
else
    MPX = "MP1_"
end

nClub = Club:add_checkbox("Nightclub Safe Loop")
script.register_looped("nightclubloop", function(script)
    script:yield()
    if nClub:is_enabled() == true then
        gui.show_message("Business Manager", "Supplying 50k/s to Nightclub Safe")
        STATS.STAT_SET_INT(joaat(MPX .. "CLUB_POPULARITY"), 1000, true)
        STATS.STAT_SET_INT(joaat(MPX .. "CLUB_PAY_TIME_LEFT"), -1, true)
        sleep(0.5)
    end
end)
toolTip(Club, "Fills your nightclub safe with money")
Club:add_separator()
Club:add_button("Max Club Popularity", function()
    STATS.STAT_SET_INT(joaat(MPX .. "CLUB_POPULARITY"), 1000, true)
end)
toolTip(Club, "Max your nightclubs popularity")
 CEO = Business:add_tab("CEO")

CEO:add_button("Register as CEO", function()
    -- -1 is off, 0 is on
    playerID = PLAYER.PLAYER_ID()
    g = 1887305 + (playerID * 609) + 10
    gb1 = globals.get_int(g + 1)
    gb2 = globals.get_int(g + 430)
    if gb1 == playerID and gb2 == 0 then
        globals.set_int(g + 1, -1)
        globals.set_int(g + 430, -1)
        gui.show_message("CEO", "You are no longer a CEO")
    else
        globals.set_int(g + 1, playerID)
        globals.set_int(g + 430, 0)
        gui.show_message("CEO", "You are now a CEO")
    end
end)
toolTip(CEO, "Register as a CEO")
 setName = ""
CEO:add_imgui(function()
    if is_typing then
        PAD.DISABLE_ALL_CONTROL_ACTIONS(0)
    end
    setName, used = ImGui.InputText("org name", setName, 256)
    if ImGui.IsItemActive() then
        is_typing = true
    else
        is_typing = false
    end
end)
toolTip(CEO, "Change your CEO name to whatever you want.")

checkBoxes = {}
labels = {"R* Verified Icon", "R* Icon", "R* Created Icon", "Lock Icon", "Copyright"}
values = {"&#166;", "&#8721;", "&#8249;", "&#937;", "&#169;"}

for i, label in ipairs(labels) do
    checkBox = CEO:add_checkbox(labels[i])
    if #labels ~= i then
        CEO:add_sameline()
    end
    table.insert(checkBoxes, checkBox)
    toolTip(CEO, "Toggle an icon to use with your CEO Name")
end

CEO:add_button("Change CEO Name", function()
    MPX = PI
    PI = stats.get_int("MPPLY_LAST_MP_CHAR")
    if PI == 0 then
        MPX = "MP0_"
    else
        MPX = "MP1_"
    end
    script.run_in_fiber(function (script)
        for i, checkBox in ipairs(checkBoxes) do
            if checkBox:is_enabled() then
                if labels[i] == "Copyright" then
                    STATS.STAT_SET_STRING(joaat(MPX .. "GB_OFFICE_NAME"), values[i].. " ", true)
                    STATS.STAT_SET_STRING(joaat(MPX .. "GB_OFFICE_NAME2"), setName, true)
                     MCnTwo = STATS.STAT_GET_STRING(joaat(MPX .. "GB_OFFICE_NAME2"), -1)
                    gui.show_message("Motorcycle Club", "Your CEO name has been changed to ".. setName .. " game returns ".. labels[i].. " ".. MCnTwo.. ". Changing sessions to apply")
                    SessionChanger(0)
                    return
                else
                    STATS.STAT_SET_STRING(joaat(MPX .. "GB_OFFICE_NAME"), setName, true)
                    STATS.STAT_SET_STRING(joaat(MPX .. "GB_OFFICE_NAME2"), values[i].. " ", true)
                     MCnOne = STATS.STAT_GET_STRING(joaat(MPX .. "GB_OFFICE_NAME"), -1)
                    gui.show_message("CEO", "Your CEO name has been changed to ".. setName .. " game returns ".. labels[i].. " - ".. MCnOne.. ". Changing sessions to apply")
                    SessionChanger(0)
                    return
                end
            end
        end
        STATS.STAT_SET_STRING(joaat(MPX .. "GB_OFFICE_NAME"), "", true)
        STATS.STAT_SET_STRING(joaat(MPX .. "GB_OFFICE_NAME2"), setName, true)
         MCnTwo = STATS.STAT_GET_STRING(joaat(MPX .. "GB_OFFICE_NAME2"), -1)
        gui.show_message("CEO", "Your CEO name has been changed to ".. setName .. " game returns "..MCnTwo..". Changing sessions to apply")
        SessionChanger(0)
    end)
end)
toolTip(CEO, "Apply changes and switch sessions")
-- YimCEO -- Alestarov_Menu
 yimCEO = CEO:add_tab("YimCEO")

cratevalue = 10000
yimCEO:add_imgui(function()
    cratevalue, used = ImGui.SliderInt("Crate Value", cratevalue, 10000, 5000000)
    if used then
        globals.set_int(262145 + 15991, cratevalue)
    end
end)
toolTip(yimCEO, "Set your desired crate value")
yCEO = yimCEO:add_checkbox("Enable YimCeo")
toolTip(yimCEO, "Set value, Enable yimCEO then click show computer and go to Special cargo > Sell")
yimCEO:add_button("Show computer", function()
    SCRIPT.REQUEST_SCRIPT("apparcadebusinesshub")
    SYSTEM.START_NEW_SCRIPT("apparcadebusinesshub", 8344)
end)
toolTip(yimCEO, "Click to show Master Computer (may need to click twice)")
script.register_looped("yimceoloop", function(script)
    cratevalue = globals.get_int(262145 + 15991)
    globals.set_int(262145 + 15756, 0)
    globals.set_int(262145 + 15757, 0)
    script:yield()

    while true do
        script:sleep(1000)  -- Adjust the sleep duration as needed

        if yCEO:is_enabled() == true then
        gui.show_message("YimCEO Enabled!", "Enjoy the bank roll!")
            if locals.get_int("appsecuroserv", 2) == 1 then
                script:sleep(500)
                locals.set_int("appsecuroserv", 740, 1)
                script:sleep(200)
                locals.set_int("appsecuroserv", 739, 1)
                script:sleep(200)
                locals.set_int("appsecuroserv", 558, 3012)
                script:sleep(1000)
            end
            if locals.get_int("gb_contraband_sell", 2) == 1 then
                locals.set_int("gb_contraband_sell", 543 + 595, 1)
                locals.set_int("gb_contraband_sell", 543 + 55, 0)
                locals.set_int("gb_contraband_sell", 543 + 584, 0)
                locals.set_int("gb_contraband_sell", 543 + 7, 7)
                script:sleep(500)
                locals.set_int("gb_contraband_sell", 543 + 1, 99999)
            end
            if locals.get_int("gb_contraband_buy", 2) == 1 then
                locals.set_int("gb_contraband_buy", 601 + 5, 1)
                locals.set_int("gb_contraband_buy", 601 + 191, 6)
                locals.set_int("gb_contraband_buy", 601 + 192, 4)
                gui.show_message("Warehouse full!")
            end
        end
    end
end)

yimCEO:add_separator()
yimCEO:add_text("Fast CEO yimCEO (How To)")
yimCEO:add_separator()
yimCEO:add_text("SWITCH TO INVITE ONLY LOBBY BEFORE USING!")
yimCEO:add_text("1) Click 'Enable YimCeo'")
yimCEO:add_text("2) Select the desired crate value (10k to 5m)")
yimCEO:add_text("3) Click 'Show computer', select 'Special Cargo', click 'Sell Cargo' and wait")
yimCEO:add_text("4) Use the 'Stats' tab to reset your stats and change sessions to apply")
yimCEO:add_text("IF it tells you your warehouse is empty, turn it off stock 1 item in crates and run it again after.")
yimCEO:add_separator()
yimCEO:add_text("You need to manually click Special/Sell Cargo each time.")
yimCEO:add_text("You may also get up to 500k more than 5m sometimes.")

--Required Stats--

FMC2020 = "fm_mission_controller_2020"
HIP = "heist_island_planning"

-- Editor Stuff // Mashup Scripts L7Neg/Alestarov
 heistEditor = Zephyr:add_tab("Heist Editor")
    MPX = PI
    PI = stats.get_int("MPPLY_LAST_MP_CHAR")
    if PI == 0 then
        MPX = "MP0_"
    else
        MPX = "MP1_"
    end

heistTab = heistEditor:add_tab("Apartment Heists")

player = PLAYER.PLAYER_PED_ID()
coords = ENTITY.GET_ENTITY_COORDS(player, true)

heistIndex = 0

function tp(x, y, z, pitch, yaw, roll)
    player = PLAYER.PLAYER_PED_ID()
    ENTITY.SET_ENTITY_COORDS(player, x, y, z - 1, true, false, false, false)
    ENTITY.SET_ENTITY_ROTATION(player, pitch, yaw, roll, 0, true)
end

function MPX()
    return "MP" .. stats.get_int("MPPLY_LAST_MP_CHAR") .. "_"
end

function cuts(cut)
    script.run_in_fiber(function(cuts)
        control = 2
        enter = 201 --enter
        cancel = 202 --cancel
        globals.set_int(1928958 + 1 + 1, 100 - (cut * 4))
        globals.set_int(1928958 + 1 + 2, cut)
        globals.set_int(1928958 + 1 + 3, cut)
        globals.set_int(1928958 + 1 + 4, cut)
        PAD.SET_CONTROL_VALUE_NEXT_FRAME(control, enter, 1)
        cuts:sleep(1000)
        PAD.SET_CONTROL_VALUE_NEXT_FRAME(control, cancel, 1)
        cuts:sleep(1000)
        globals.set_int(1930926 + 3008 + 1, cut)
    end)
end

function fleecaCut()
    script.run_in_fiber(function(fleecaCuts)
        control = 2
        enter = 201 --enter
        cancel = 202 --cancel
        globals.set_int(1928958 + 1 + 1, 100 - (7453 * 2))
        globals.set_int(1928958 + 1 + 2, 7453)
        PAD.SET_CONTROL_VALUE_NEXT_FRAME(control, enter, 1)
        fleecaCuts:sleep(1000)
        PAD.SET_CONTROL_VALUE_NEXT_FRAME(control, cancel, 1)
        fleecaCuts:sleep(1000)
        globals.set_int(1930926 + 3008 + 1, 7453)
    end)
end

function bringTeam()
    script.run_in_fiber(function(bringteam)
        for i = 1, 3 do
            player = PLAYER.PLAYER_PED_ID()
            if (ENTITY.DOES_ENTITY_EXIST(PLAYER.GET_PLAYER_PED(i)) and calcDistance(player, PLAYER.GET_PLAYER_PED(i)) >= 20 and PLAYER.GET_PLAYER_TEAM(i) == PLAYER.GET_PLAYER_TEAM(PLAYER.PLAYER_ID())) then
                command.call( "bring", {i})
                bringteam:yield()
            end
        end
    end)
end

function calcDistance(pos, tarpos)
    if ENTITY.DOES_ENTITY_EXIST(pos) then pos = ENTITY.GET_ENTITY_COORDS(pos, true) end
    if ENTITY.DOES_ENTITY_EXIST(tarpos) then tarpos = ENTITY.GET_ENTITY_COORDS(tarpos, true) end
    if type(pos) == "table" then
        pos = vec3.new(pos[0], pos[1], pos[2])
    end
    if type(tarpos) == "table" then
        tarpos = vec3.new(tarpos[0], tarpos[1], tarpos[2])
    end
    dx = pos.x - tarpos.x
    dy = pos.y - tarpos.y
    dz = pos.z - tarpos.z
    distance = math.sqrt(dx*dx + dy*dy + dz*dz)
    return distance
end

function calcDistanceFromCoords(player, target)
    pos = ENTITY.GET_ENTITY_COORDS(player, true)
    dx = pos.x - target[1]
    dy = pos.y - target[2]
    dz = pos.z - target[3]
    distance = math.sqrt(dx*dx + dy*dy + dz*dz)
    return distance
end

function calcDistanceFromTwoCoords(pos, tarpos)
    dx = pos.x - tarpos.x
    dy = pos.y - tarpos.y
    dz = pos.z - tarpos.z
    distance = math.sqrt(dx*dx + dy*dy + dz*dz)
    return distance
end

heistTab:add_button("Play Unavailable Heists", function()
    globals.set_int(1877285 + (PLAYER.PLAYER_ID() * 77 + 1) + 76, 31)
end)
toolTip("", "Lets you play the grayed-out heists on apartment planning screen")

heistTab:add_button("Complete All Setups", function()
    stats.set_int(MPX .. "HEIST_PLANNING_STAGE", -1)
end)
toolTip(heistTab, "Complete setups for current heist")

heistTab:add_button("Bring Team", function()
    bringTeam()
end)
toolTip(heistTab, "Bring every player on your team to you")

heistTab:add_sameline()

heistTab:add_button("Bring Everyone", function()
    script.run_in_fiber(function(bringall)
        for i = 1, 3 do
            player = PLAYER.PLAYER_PED_ID()
            gui.show_message("Distance", tostring(calcDistance(player, PLAYER.GET_PLAYER_PED(i))))
            if (ENTITY.DOES_ENTITY_EXIST(PLAYER.GET_PLAYER_PED(i)) and calcDistance(player, PLAYER.GET_PLAYER_PED(i)) >= 50) then
                command.call( "bring", {i})
                bringall:yield()
            end
        end
    end)
end)
toolTip(heistTab, "Bring everyone to you")

heistTab:add_button("Spawn Tailgater", function()
    script.run_in_fiber(function(script)
        player = PLAYER.PLAYER_PED_ID()
        coords = ENTITY.GET_ENTITY_COORDS(player, true)
        while not STREAMING.HAS_MODEL_LOADED(joaat("tailgater")) do
            STREAMING.REQUEST_MODEL(joaat("tailgater"))
            script:yield()
        end
        vehicle = VEHICLE.CREATE_VEHICLE(joaat("tailgater"), coords.x, coords.y, coords.z, ENTITY.GET_ENTITY_HEADING(player), true, false, false)
        PED.SET_PED_INTO_VEHICLE(player ,vehicle, -1)
    end)
end)
toolTip(heistTab, "Spawns a tailgater(4-door)")

heistTab:add_sameline()

heistTab:add_button("TP To Objective", function()
    command.call("objectivetp", {})
end)
toolTip(heistTab, "Teleport yourself to the current objective")

heistTab:add_button("Life Count +5", function()
    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller_2020")) ~= 0 then
        network.force_script_host("fm_mission_controller_2020")
        c_tlives_v = locals.get_int("fm_mission_controller_2020", 55004 + 873 + 1)
        locals.set_int("fm_mission_controller_2020", 55004 + 873 + 1, c_tlives_v + 5)
    end
    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller")) ~= 0 then
        network.force_script_host("fm_mission_controller")
        globals.set_int(4718592 + 3318 + 1 + 38, 1)
        c_tlives_v = locals.get_int("fm_mission_controller", 26154 + 1325 + 1)
        locals.set_int("fm_mission_controller", 26154 + 1325 + 1, c_tlives_v + 5)
    end
end)
toolTip(heistTab, "Increase the life count by 5")

shootEnemies = heistTab:add_checkbox("Kill Enemies")
toolTip(heistTab, "Shoots every enemy ped within 150m")

heistTab:add_imgui(function()
    --PAD.DISABLE_ALL_CONTROL_ACTIONS(2)
    PAD.DISABLE_CONTROL_ACTION(2, 237, true)

    objectiveText = globals.get_string(1574765 + 16)
    tpdValk = false
    tpdParkingLot = false
    heistIndex = ImGui.Combo("Heist", heistIndex, {"Fleeca Job", "Prison Break", "Humane Labs", "Series A Funding", "Pacific Standard"}, 5, 5)
    toolTip("", "Heist you wish to edit")
    if heistIndex == 0 then -- fleeca
        ImGui.Text("Fastest as Hacker")
        if (ImGui.Button("15 Million Cuts")) then
            fleecaCut()
        end
        toolTip("", "Set every players cut to 15 million\nMust be hovering over your cut before clicking")
        if ImGui.Button("Bypass Hack") then
            locals.set_int("fm_mission_controller", 11778 + 24, 7)
        end
        toolTip("", "Instantly finish hacking")
        if ImGui.Button("Bypass Drill") then
            locals.set_float("fm_mission_controller", 10069 + 11, 100)
        end
        toolTip("", "Instantly finish drilling")
    end
    if heistIndex == 1 then -- prison break
        ImGui.Text("Fastest as Prison Officer")
        if (ImGui.Button("15 Million Cuts")) then
            cuts(2142)
        end
        toolTip("", "Set every players cut to 15 million\nMust be hovering over your cut before clicking")
        if (ImGui.Button("TP Prison Bus")) then
            script.run_in_fiber(function(pbus)
                for i, vehicle in ipairs(entities.get_all_vehicles_as_handles()) do
                    player = PLAYER.PLAYER_PED_ID()
                    blip = HUD.GET_BLIP_FROM_ENTITY(vehicle)
                    if (ENTITY.GET_ENTITY_MODEL(vehicle) == joaat("pbus") and blip == 133955592) then
                        PED.SET_PED_INTO_VEHICLE(player, vehicle, -1)
                        pbus:sleep(100)
                        PED.SET_PED_COORDS_KEEP_VEHICLE(player, -774.57, 288.42, 85.79)
                    end
                end
            end)
        end
        toolTip("", "Teleports the prison bus infront of the eclipse towers apartment")
    end
    if heistIndex == 2 then -- humane labs
        ImGui.Text("Fastest as Ground Team")
        if ImGui.Button("15 Million Cuts") then
            cuts(1587)
        end
        toolTip("", "Set every players cut to 15 million\nMust be hovering over your cut before clicking")
        if ImGui.Button("TP Valkeryie") then
            for i, vehicle in ipairs(entities.get_all_vehicles_as_handles()) do
                if (ENTITY.GET_ENTITY_MODEL(vehicle) == joaat("valkyrie")) then
                    player = PLAYER.PLAYER_PED_ID()
                    PED.SET_PED_INTO_VEHICLE(player, vehicle, 2)
                    PED.SET_PED_COORDS_KEEP_VEHICLE(player, -774.57, 288.42, 85.79)
                end
            end
        end
        toolTip("", "Teleports the valkyrie infront of the eclipse towers apartment")
        if ImGui.Button("Tunnel") then
            player = PLAYER.PLAYER_PED_ID()
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(player, 3521.90, 3724.84, -9.47, true, false, false)
        end
    end
    if heistIndex == 3 then -- series a funding
        if ImGui.Button("15 Million Cuts") then
            cuts(2121)
        end
        toolTip("", "Set every players cut to 15 million\nMust be hovering over your cut before clicking")
        if ImGui.Button("TP Everyone To Warehouse") then
            script.run_in_fiber(function(script)
                for i = 1, 3 do
                    targ = PLAYER.GET_PLAYER_PED(i)
                    p1 = vec3.new(606.21, -411.01, 24.74)
                    p2 = vec3.new(600.44, -466.69, 26.04)
                    if PLAYER.GET_PLAYER_TEAM(i) == 0 then
                        if calcDistance(targ, p1) > 50 then
                            --if entities.take_control_of(targ) then
                                network.set_player_coords(i, network.set_player_coords(i, p1.x, p1.y, p1.z))
                            --end
                        end
                    end
                    if PLAYER.GET_PLAYER_TEAM(i) == 1 then
                        if calcDistance(targ, p2) > 50 then
                            --if entities.take_control_of(targ) then
                                network.set_player_coords(i, p2.x, p2.y, p2.z)
                            --end
                        end
                    end
                end
            end)
        end
        toolTip("", "Teleports everyone to their spot at the warehouse")
    end
    if heistIndex == 4 then -- pacific standard
        if (ImGui.Button("15 Million Cuts")) then
            cuts(1000)
        end
        toolTip("", "Set every players cut to 15 million\nMust be hovering over your cut before clicking")
    end
end)

heistTab:add_imgui(function()
    if (ImGui.TreeNode("READ ME - IMPORTANT!")) then
        ImGui.Text("For completing setups")
        ImGui.Text("if you are in the planning screen after the cutscene")
        ImGui.Text("you can click it then scroll up down left or right")
        ImGui.Text("and it should kick you out of the screen and complete the setups")
        ImGui.Separator()
        ImGui.Text("MAKE SURE YOU HAVE THE HEIST ON NORMAL MODE ONLY!")
        ImGui.Separator()
        ImGui.Text("For 15 million cuts")
        ImGui.Text("hover over your cut and click the button")
    end
    toolTip("", "Important information for using this script")
end)

script.register_looped("heistTabLoop", function(heistTabScript)
    if  shootEnemies:is_enabled() then
         pedtable = entities.get_all_peds_as_handles()
        for _, peds in pairs(pedtable) do
             selfpos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true)
             ped_pos = ENTITY.GET_ENTITY_COORDS(peds, false)
            if (PED.GET_RELATIONSHIP_BETWEEN_PEDS(peds, PLAYER.PLAYER_PED_ID()) == 4 or PED.GET_RELATIONSHIP_BETWEEN_PEDS(peds, PLAYER.PLAYER_PED_ID()) == 5 or HUD.GET_BLIP_COLOUR(HUD.GET_BLIP_FROM_ENTITY(peds)) == 1 or HUD.GET_BLIP_COLOUR(HUD.GET_BLIP_FROM_ENTITY(peds)) == 49 or ENTITY.GET_ENTITY_MODEL(peds) == joaat("S_M_Y_Swat_01") or ENTITY.GET_ENTITY_MODEL(peds) == joaat("S_M_Y_Cop_01") or ENTITY.GET_ENTITY_MODEL(peds) == joaat("S_F_Y_Cop_01") or ENTITY.GET_ENTITY_MODEL(peds) == joaat("S_M_Y_Sheriff_01") or ENTITY.GET_ENTITY_MODEL(peds) == joaat("S_F_Y_Sheriff_01")) and peds ~= PLAYER.PLAYER_PED_ID() and not PED.IS_PED_DEAD_OR_DYING(peds,true)  and PED.IS_PED_A_PLAYER(peds) ~= 1 and calcDistance(PLAYER.PLAYER_PED_ID(), peds) <= 100 then
                if PED.IS_PED_IN_ANY_VEHICLE(peds, true) then
                    request_control(peds)
                    TASK.CLEAR_PED_TASKS_IMMEDIATELY(peds)
                    ped_pos = ENTITY.GET_ENTITY_COORDS(peds, false)
                    MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(ped_pos.x, ped_pos.y, ped_pos.z + 1, ped_pos.x, ped_pos.y, ped_pos.z, 1000, true, 2526821735, PLAYER.PLAYER_PED_ID(), false, true, 1.0)
                else
                    MISC.SHOOT_SINGLE_BULLET_BETWEEN_COORDS(ped_pos.x, ped_pos.y, ped_pos.z + 1, ped_pos.x, ped_pos.y, ped_pos.z, 1000, true, 2526821735, PLAYER.PLAYER_PED_ID(), false, true, 1.0)
                end
            end
        end
    end


end)

 casinoHeist = heistEditor:add_tab("Casino Editor")
casinoHeist:add_text("Casino Heist Setups")

casinoHeist:add_button("Silent & Sneaky", function()
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_APPROACH"), 1, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3_LAST_APPROACH"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_TARGET"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_BITSET1"), 127, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_DISRUPTSHIP"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_KEYLEVELS"), 2, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_CREWWEAP"), 4, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_CREWDRIVER"), 5, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_CREWHACKER"), 5, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_VEHS"), 2, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_WEAPS"), 1, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_BITSET0"), 262399, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_MASKS"), 2, true)
    gui.show_message("Casino Heist", "Setup Silent & Sneaky applied")
end)
casinoHeist:add_sameline()
casinoHeist:add_button("Big Con", function()
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_APPROACH"), 2, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3_LAST_APPROACH"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_TARGET"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_BITSET1"), 799, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_DISRUPTSHIP"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_KEYLEVELS"), 2, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_CREWWEAP"), 4, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_CREWDRIVER"), 5, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_CREWHACKER"), 5, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_VEHS"), 2, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_WEAPS"), 0, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_BITSET0"), 913623, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_MASKS"), 2, true)
    gui.show_message("Casino Heist", "Setup Big Con applied")
    gui.show_message("Casino Heist", "Big Con may not work, use S&S or Aggressive setups.")
end)
casinoHeist:add_sameline()
casinoHeist:add_button("Aggressive", function()
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_APPROACH"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3_LAST_APPROACH"), 1, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_TARGET"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_BITSET1"), 799, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_DISRUPTSHIP"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_KEYLEVELS"), 2, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_CREWWEAP"), 4, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_CREWDRIVER"), 5, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_CREWHACKER"), 5, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_VEHS"), 2, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_WEAPS"), 1, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_BITSET0"), 1835223, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_MASKS"), 2, true)
    gui.show_message("Casino Heist", "Setup Aggressive applied")
end)

casinoHeist:add_separator()

casinoHeist:add_button("Complete Preps", function()
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_DISRUPTSHIP"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_KEYLEVELS"), 2, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_VEHS"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_WEAPS"), 0, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_BITSET0"), -1, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_BITSET1"), -1, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_COMPLETEDPOSIX"), -1, true)
    gui.show_message("Casino Heist", "Preps Completed!")
end)

casinoHeist:add_sameline()
casinoHeist:add_button("Skip Cooldown", function()
    STATS.STAT_SET_INT(joaat(MPX .. "H3_COMPLETEDPOSIX"), -1, true)
    STATS.STAT_SET_INT(joaat(MPX .. "MPPLY_H3_COOLDOWN"), -1, true)
end)
 deleteNPCs = casinoHeist:add_checkbox("Delete Mission NPC's")
    script.register_looped("deleteNPCsLoopScript", function(script)
        if deleteNPCs:is_enabled() then
            for index, ped in ipairs(entities.get_all_peds_as_handles()) do
                ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ped, true, true)
                PED.DELETE_PED(ped)
                sleep(0.1)
                PED.DELETE_PED(ped)
                sleep(0.1)
                PED.DELETE_PED(ped)
                sleep(0.1)
                PED.DELETE_PED(ped)
                sleep(0.1)
                gui.show_message("Casino Heist", "Deleting All NPC's from the mission.")
            end
        end
    end)
casinoHeist:add_separator()
casinoHeist:add_text("How to:")
casinoHeist:add_text("Click Skip cooldown (if applicable), then pay the 25k")
casinoHeist:add_text("After that back off the board and press a preset.")

-- Cayo Heist Editor - converted from L7Negs Ultimate Menu for Kiddions and some features like remove CCTV from Alestarov.
 cayoHeist = heistEditor:add_tab("Cayo Perico Editor")

cayoHeist:add_text("Non-Legit Presets")

cayoHeist:add_button("Panther/Gold (Hard)", function()
    MPX = PI
    PI = stats.get_int("MPPLY_LAST_MP_CHAR")
    if PI == 0 then
        MPX = "MP0_"
    else
        MPX = "MP1_"
    end
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_GEN"), 131071, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_ENTR"), 63, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_ABIL"), 63, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_WEAPONS"), 5, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_WEP_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_ARM_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_HEL_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_TARGET"), 5, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_TROJAN"), 2, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_APPROACH"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_C"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_PROGRESS"), 131055, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_C_SCOPED"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_V"), 1191817, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_MISSIONS"), 65535, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_PLAYTHROUGH_STATUS"), 32, true)

    gui.show_message("Cayo Heist", "Panther Hard Mode has been set up!")
    gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)
cayoHeist:add_sameline()
cayoHeist:add_button("Diamond/Gold (Hard)", function()
    MPX = PI
PI = stats.get_int("MPPLY_LAST_MP_CHAR")
if PI == 0 then
    MPX = "MP0_"
else
    MPX = "MP1_"
end
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_GEN"), 131071, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_ENTR"), 63, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_ABIL"), 63, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_WEAPONS"), 5, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_WEP_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_ARM_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_HEL_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_TARGET"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_TROJAN"), 2, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_APPROACH"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_C"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_PROGRESS"), 131055, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_C_SCOPED"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_V"), 1191817, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_MISSIONS"), 65535, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_PLAYTHROUGH_STATUS"), 32, true)

    gui.show_message("Cayo Heist", "Diamond Hard Mode has been set up!")
    gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

cayoHeist:add_sameline()
cayoHeist:add_button("Bonds/Gold (Hard)", function()
    MPX = PI
PI = stats.get_int("MPPLY_LAST_MP_CHAR")
if PI == 0 then
    MPX = "MP0_"
else
    MPX = "MP1_"
end
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_GEN"), 131071, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_ENTR"), 63, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_ABIL"), 63, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_WEAPONS"), 5, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_WEP_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_ARM_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_HEL_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_TARGET"), 2, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_TROJAN"), 2, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_APPROACH"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_C"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_PROGRESS"), 131055, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_C_SCOPED"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_V"), 1191817, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_MISSIONS"), 65535, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_PLAYTHROUGH_STATUS"), 32, true)

    gui.show_message("Cayo Heist", "Bonds Hard Mode has been set up!")
    gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

cayoHeist:add_sameline()
cayoHeist:add_button("Necklace/Gold (Hard)", function()
    MPX = PI
PI = stats.get_int("MPPLY_LAST_MP_CHAR")
if PI == 0 then
    MPX = "MP0_"
else
    MPX = "MP1_"
end
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_GEN"), 131071, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_ENTR"), 63, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_ABIL"), 63, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_WEAPONS"), 5, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_WEP_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_ARM_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_HEL_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_TARGET"), 1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_TROJAN"), 2, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_APPROACH"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_C"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_PROGRESS"), 131055, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_C_SCOPED"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_V"), 1191817, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_MISSIONS"), 65535, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_PLAYTHROUGH_STATUS"), 32, true)

    gui.show_message("Cayo Heist", "Necklace Hard Mode has been set up!")
    gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

cayoHeist:add_sameline()
cayoHeist:add_button("Tequila/Gold (Hard)", function()
    MPX = PI
PI = stats.get_int("MPPLY_LAST_MP_CHAR")
if PI == 0 then
    MPX = "MP0_"
else
    MPX = "MP1_"
end
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_GEN"), 131071, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_ENTR"), 63, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_ABIL"), 63, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_WEAPONS"), 5, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_WEP_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_ARM_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_HEL_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_TARGET"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_TROJAN"), 2, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_APPROACH"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_C"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_PROGRESS"), 131055, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_C_SCOPED"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_V"), 1191817, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_MISSIONS"), 65535, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_PLAYTHROUGH_STATUS"), 32, true)

    gui.show_message("Cayo Heist", "Tequila Hard Mode has been set up!")
    gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)
cayoHeist:add_separator()
cayoHeist:add_text("Legit Presets")

cayoHeist:add_button("Panther/Gold (L. Hard)", function()
    MPX = PI
PI = stats.get_int("MPPLY_LAST_MP_CHAR")
if PI == 0 then
    MPX = "MP0_"
else
    MPX = "MP1_"
end
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_GEN"), 131071, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_ENTR"), 63, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_ABIL"), 63, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_WEAPONS"), 5, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_WEP_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_ARM_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_HEL_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_TARGET"), 5, true) --Primary Target Values: 0. Tequila, 1. Necklace, 2. Bonds, 3. Diamond, 4. Medrazo Files, 5. Panther
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_TROJAN"), 2, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_APPROACH"), -1, true)
        -- Island Loot // -1 shows all, 0 shows none
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_I"), 0, true)

        -- Compound Loot // -1 shows all, 0 shows none
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_C"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_PROGRESS"), 131055, true) -- 131055 // Hard Mode  -  130667 // Solo Normal??

        -- These are what is set when you find loot throughout the island/compound
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_C_SCOPED"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT_SCOPED"), 0, true)

        -- Payout Values // Set to "Normal" values.  Each value is multiplied by 8, bc there are 8 locations for them.
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_V"), 45375, true)
        --STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_V"), 10406, true)
        --STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_V"), 16875, true)
        --STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_V"), 25312, true)
        --STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT_V"), 22500, true)
        globals.set_int(262145 + 30264, 1900000) -- Panther Value -- 1900000 shows as 2,090,000 in-game on the board. 190,000 difference.
        --globals.set_int(262145 + 30262, 1300000) -- Diamond Value  -- 1300000 shows as 1,430,000 in-game. 130,000 difference.
        --globals.set_int(262145 + 30261, 770000) -- Bonds Value -- 770000 shows as 847,000 in-game.  77,000 difference.
        --globals.set_int(262145 + 30260, 700000) -- Necklace Value -- 700000 shows as 770,000 in-game. 70,000 difference.
        --globals.set_int(262145 + 30259, 693000) -- Tequila Value -- 630000 shows as 693,000. 63,000 difference.

        STATS.STAT_SET_INT(joaat(MPX .. "H4_MISSIONS"), 65535, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_PLAYTHROUGH_STATUS"), 32, true)

    gui.show_message("Cayo Heist", "Panther Hard Mode (Legit) has been set up!")
    gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

cayoHeist:add_sameline()

cayoHeist:add_button("Diamond/Gold (L. Hard)", function()
    MPX = PI
PI = stats.get_int("MPPLY_LAST_MP_CHAR")
if PI == 0 then
    MPX = "MP0_"
else
    MPX = "MP1_"
end
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_GEN"), 131071, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_ENTR"), 63, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_ABIL"), 63, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_WEAPONS"), 5, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_WEP_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_ARM_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_HEL_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_TARGET"), 3, true) --Primary Target Values: 0. Tequila, 1. Necklace, 2. Bonds, 3. Diamond, 4. Medrazo Files, 5. Panther
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_TROJAN"), 2, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_APPROACH"), -1, true)
        -- Island Loot // -1 shows all, 0 shows none
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_I"), 0, true)

        -- Compound Loot // -1 shows all, 0 shows none
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_C"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_PROGRESS"), 131055, true) -- 131055 // Hard Mode  -  130667 // Solo Normal??

        -- These are what is set when you find loot throughout the island/compound
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_C_SCOPED"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT_SCOPED"), 0, true)

        -- Payout Values // Set to "Normal" values.  Each value is multiplied by 8, bc there are 8 locations for them.
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_V"), 45375, true)
        --STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_V"), 10406, true)
        --STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_V"), 16875, true)
        --STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_V"), 25312, true)
        --STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT_V"), 22500, true)
        --globals.set_int(262145 + 30264, 1900000) -- Panther Value -- 1900000 shows as 2,090,000 in-game on the board. 190,000 difference.
        globals.set_int(262145 + 30262, 1300000) -- Diamond Value  -- 1300000 shows as 1,430,000 in-game. 130,000 difference.
        --globals.set_int(262145 + 30261, 770000) -- Bonds Value -- 770000 shows as 847,000 in-game.  77,000 difference.
        --globals.set_int(262145 + 30260, 700000) -- Necklace Value -- 700000 shows as 770,000 in-game. 70,000 difference.
        --globals.set_int(262145 + 30259, 693000) -- Tequila Value -- 630000 shows as 693,000. 63,000 difference.

        STATS.STAT_SET_INT(joaat(MPX .. "H4_MISSIONS"), 65535, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_PLAYTHROUGH_STATUS"), 32, true)

    gui.show_message("Cayo Heist", "Diamond Hard Mode (Legit) has been set up!")
    gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

cayoHeist:add_sameline()

cayoHeist:add_button("Bonds/Gold (L. Hard)", function()
    MPX = PI
PI = stats.get_int("MPPLY_LAST_MP_CHAR")
if PI == 0 then
    MPX = "MP0_"
else
    MPX = "MP1_"
end
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_GEN"), 131071, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_ENTR"), 63, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_ABIL"), 63, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_WEAPONS"), 5, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_WEP_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_ARM_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_HEL_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_TARGET"), 2, true) --Primary Target Values: 0. Tequila, 1. Necklace, 2. Bonds, 3. Diamond, 4. Medrazo Files, 5. Panther
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_TROJAN"), 2, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_APPROACH"), -1, true)
        -- Island Loot // -1 shows all, 0 shows none
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_I"), 0, true)

        -- Compound Loot // -1 shows all, 0 shows none
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_C"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_PROGRESS"), 131055, true) -- 131055 // Hard Mode  -  130667 // Solo Normal??

        -- These are what is set when you find loot throughout the island/compound
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_C_SCOPED"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT_SCOPED"), 0, true)

        -- Payout Values // Set to "Normal" values.  Each value is multiplied by 8, bc there are 8 locations for them.
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_V"), 45375, true)
        --STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_V"), 10406, true)
        --STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_V"), 16875, true)
        --STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_V"), 25312, true)
        --STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT_V"), 22500, true)
        --globals.set_int(262145 + 30264, 1900000) -- Panther Value -- 1900000 shows as 2,090,000 in-game on the board. 190,000 difference.
        --globals.set_int(262145 + 30262, 1300000) -- Diamond Value  -- 1300000 shows as 1,430,000 in-game. 130,000 difference.
        globals.set_int(262145 + 30261, 770000) -- Bonds Value -- 770000 shows as 847,000 in-game.  77,000 difference.
        --globals.set_int(262145 + 30260, 700000) -- Necklace Value -- 700000 shows as 770,000 in-game. 70,000 difference.
        --globals.set_int(262145 + 30259, 693000) -- Tequila Value -- 630000 shows as 693,000. 63,000 difference.

        STATS.STAT_SET_INT(joaat(MPX .. "H4_MISSIONS"), 65535, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_PLAYTHROUGH_STATUS"), 32, true)

    gui.show_message("Cayo Heist", "Bonds Hard Mode (Legit) has been set up!")
    gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

cayoHeist:add_sameline()

cayoHeist:add_button("Necklace/Gold (L. Hard)", function()
    MPX = PI
PI = stats.get_int("MPPLY_LAST_MP_CHAR")
if PI == 0 then
    MPX = "MP0_"
else
    MPX = "MP1_"
end
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_GEN"), 131071, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_ENTR"), 63, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_ABIL"), 63, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_WEAPONS"), 5, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_WEP_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_ARM_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_HEL_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_TARGET"), 1, true) --Primary Target Values: 0. Tequila, 1. Necklace, 2. Bonds, 3. Diamond, 4. Medrazo Files, 5. Panther
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_TROJAN"), 2, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_APPROACH"), -1, true)
        -- Island Loot // -1 shows all, 0 shows none
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_I"), 0, true)

        -- Compound Loot // -1 shows all, 0 shows none
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_C"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_PROGRESS"), 131055, true) -- 131055 // Hard Mode  -  130667 // Solo Normal??

        -- These are what is set when you find loot throughout the island/compound
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_C_SCOPED"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT_SCOPED"), 0, true)

        -- Payout Values // Set to "Normal" values.  Each value is multiplied by 8, bc there are 8 locations for them.
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_V"), 45375, true)
        --STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_V"), 10406, true)
        --STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_V"), 16875, true)
        --STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_V"), 25312, true)
        --STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT_V"), 22500, true)
        --globals.set_int(262145 + 30264, 1900000) -- Panther Value -- 1900000 shows as 2,090,000 in-game on the board. 190,000 difference.
        --globals.set_int(262145 + 30262, 1300000) -- Diamond Value  -- 1300000 shows as 1,430,000 in-game. 130,000 difference.
        --globals.set_int(262145 + 30261, 770000) -- Bonds Value -- 770000 shows as 847,000 in-game.  77,000 difference.
        globals.set_int(262145 + 30260, 700000) -- Necklace Value -- 700000 shows as 770,000 in-game. 70,000 difference.
        --globals.set_int(262145 + 30259, 693000) -- Tequila Value -- 630000 shows as 693,000. 63,000 difference.

        STATS.STAT_SET_INT(joaat(MPX .. "H4_MISSIONS"), 65535, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_PLAYTHROUGH_STATUS"), 32, true)

    gui.show_message("Cayo Heist", "Necklace Hard Mode (Legit) has been set up!")
    gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

cayoHeist:add_sameline()

cayoHeist:add_button("Tequila/Gold (L. Hard)", function()
    MPX = PI
PI = stats.get_int("MPPLY_LAST_MP_CHAR")
if PI == 0 then
    MPX = "MP0_"
else
    MPX = "MP1_"
end
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_GEN"), 131071, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_ENTR"), 63, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_ABIL"), 63, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_WEAPONS"), 5, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_WEP_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_ARM_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_HEL_DISRP"), 3, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_TARGET"), 0, true) --Primary Target Values: 0. Tequila, 1. Necklace, 2. Bonds, 3. Diamond, 4. Medrazo Files, 5. Panther
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_TROJAN"), 2, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_APPROACH"), -1, true)
        -- Island Loot // -1 shows all, 0 shows none
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_I"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_I"), 0, true)

        -- Compound Loot // -1 shows all, 0 shows none
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_C"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_C"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_PROGRESS"), 131055, true) -- 131055 // Hard Mode  -  130667 // Solo Normal??

        -- These are what is set when you find loot throughout the island/compound
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_C_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_I_SCOPED"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_C_SCOPED"), -1, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT_SCOPED"), 0, true)

        -- Payout Values // Set to "Normal" values.  Each value is multiplied by 8, bc there are 8 locations for them.
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_V"), 45375, true)
        --STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_V"), 10406, true)
        --STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_V"), 16875, true)
        --STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_V"), 25312, true)
        --STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT_V"), 22500, true)
        --globals.set_int(262145 + 30264, 1900000) -- Panther Value -- 1900000 shows as 2,090,000 in-game on the board. 190,000 difference.
        --globals.set_int(262145 + 30262, 1300000) -- Diamond Value  -- 1300000 shows as 1,430,000 in-game. 130,000 difference.
        --globals.set_int(262145 + 30261, 770000) -- Bonds Value -- 770000 shows as 847,000 in-game.  77,000 difference.
        --globals.set_int(262145 + 30260, 700000) -- Necklace Value -- 700000 shows as 770,000 in-game. 70,000 difference.
        globals.set_int(262145 + 30259, 693000) -- Tequila Value -- 630000 shows as 693,000. 63,000 difference.

        STATS.STAT_SET_INT(joaat(MPX .. "H4_MISSIONS"), 65535, true)
        STATS.STAT_SET_INT(joaat(MPX .. "H4_PLAYTHROUGH_STATUS"), 32, true)

    gui.show_message("Cayo Heist", "Tequila Hard Mode (Legit) has been set up!")
    gui.show_message("Cayo Heist", "Reset the board to see the changes")
end)

cayoHeist:add_separator()
cayoHeist:add_text("Press this after clicking one of the above presets")
cayoHeist:add_button("Reset Kosatka Board", function()
        locals.set_int(HIP, 1546, 2)
        gui.show_message("Cayo Heist", "Planning board has been reset!")
end)

cayoHeist:add_separator()
cayoHeist:add_text("During Heist")
cayoHeist:add_button("Skip Drainage Cut", function()
    locals.set_int(FMC2020, 29700, 6)
    gui.show_message("Cayo Heist", "Bypassed Drainage Cut")
end)

cayoHeist:add_sameline()
cayoHeist:add_button("Skip Fingerprint Scanner", function()
   locals.set_int(FMC2020, 24880, 5)
   gui.show_message("Cayo Heist", "Bypassed Fingerprint Scanner")
end)

cayoHeist:add_sameline()
cayoHeist:add_button("Skip Glass Cut", function()
    locals.set_float(FMC2020, 30939 + 3, 100.0)
    gui.show_message("Cayo Heist", "Bypassed Plasma Cutter")
end)

cayoHeist:add_sameline()
cayoHeist:add_button("Remove All CCTV's", function()
    for _, ent in pairs(entities.get_all_objects_as_handles()) do
        for __, cam in pairs(CamList) do
            if ENTITY.GET_ENTITY_MODEL(ent) == cam then
                ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, true, true)
                ENTITY.DELETE_ENTITY(ent)
                gui.show_message("Cayo Heist", "Deleted all mission Cameras")
            end
        end
    end
end)
CamList = {
    joaat("prop_cctv_cam_01a"), joaat("prop_cctv_cam_01b"), joaat("prop_cctv_cam_02a"), joaat("prop_cctv_cam_03a"),
    joaat("prop_cctv_cam_04a"), joaat("prop_cctv_cam_04c"), joaat("prop_cctv_cam_05a"), joaat("prop_cctv_cam_06a"),
    joaat("prop_cctv_cam_07a"), joaat("prop_cs_cctv"), joaat("p_cctv_s"), joaat("hei_prop_bank_cctv_01"),
    joaat("hei_prop_bank_cctv_02"), joaat("ch_prop_ch_cctv_cam_02a"), joaat("xm_prop_x17_server_farm_cctv_01"),
}

cayoHeist:add_sameline()
cayoHeist:add_button("Delete Mission NPC's", function() -- Thanks to RazorGamerX for the help on this
    for index, ped in ipairs(entities.get_all_peds_as_handles()) do
         model = ENTITY.GET_ENTITY_MODEL(ped)
        if model == 0x7ED5AD78 or model == 0x6C8C08E5 or model == 0x995B3F9F or model == 0xB881AEE then
                ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ped, true, true)
                PED.DELETE_PED(ped)
                gui.show_message("Cayo Heist", "Deleted all mission NPC's.  This will cause the keycards to not drop, use Gold teleport to bypass when standing near a secondary loot room.")
        end
    end
end)

cayoHeist:add_separator()
cayoHeist:add_text("After Heist")
cayoHeist:add_button("Skip Cooldown", function()
    MPX = PI
PI = stats.get_int("MPPLY_LAST_MP_CHAR")
if PI == 0 then
    MPX = "MP0_"
else
    MPX = "MP1_"
end
    -- Solo Skip
    STATS.STAT_SET_INT(joaat(MPX .. "H4_TARGET_POSIX"), 1659643454, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4_COOLDOWN"), 0, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4_COOLDOWN_HARD"), 0, true)
    -- Multiplayer Skip
    STATS.STAT_SET_INT(joaat(MPX .. "H4_TARGET_POSIX"), 1659429119, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4_COOLDOWN"), 0, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4_COOLDOWN_HARD"), 0, true)

    gui.show_message("Cayo Heist", "Skipped Cayo Perico Cooldown for all characters")
end)

properties = {
    {name = "Drainage", x = 5051.645, y = -5822.677, z = -12.310},
    {name = "Gold 1", x = 5080.300, y = -5757.000, z = 15.830},
    {name = "Gold 2", x = 5029.567, y = -5735.856, z = 17.866},
    {name = "Gold 3", x = 5007.990, y = -5786.492, z = 17.832},
    {name = "Gold 4", x = 5000.770, y = -5748.700, z = 14.840},
    {name = "Office", x = 5010.736, y = -5751.701, z = 28.845},
    {name = "Vault", x = 5008.466, y = -5753.206, z = 15.484},
    {name = "Main Gate", x = 4993.848, y = -5720.731, z = 19.880},
    {name = "Kosatka", x = 4319.710, y = -3903.497, z = -35.609},
    -- Add more locations as needed
}

-- Function to create buttons dynamically
function createCayoButtons(cayoHeist)
    local buttonsPerRow = 10
    local buttonCount = 0
    for _, property in ipairs(properties) do
        cayoHeist:add_button(property.name, function()
            local ped = PLAYER.PLAYER_PED_ID()
            PED.SET_PED_COORDS_KEEP_VEHICLE(ped, property.x, property.y, property.z)
        end)
        buttonCount = buttonCount + 1
        if buttonCount < buttonsPerRow and _ < #properties then
            cayoHeist:add_sameline() -- Add next button on the same line if there are more buttons and haven't reached the limit per row
        else
            buttonCount = 0 -- Reset button count for the new row
        end
    end
end
cayoHeist:add_separator()
cayoHeist:add_text("Teleports")
cayoHeist:add_button("Bring Everyone", function()
    script.run_in_fiber(function()
        p = PLAYER.PLAYER_PED_ID()
        for i = 0, 3 do
            t = PLAYER.GET_PLAYER_PED(i)
            if ENTITY.DOES_ENTITY_EXIST(t) then
                gui.show_message(PLAYER.GET_PLAYER_NAME(i), calcDistance(t, p))
                if calcDistance(t, p) > 50 then
                    command.call("bring", {i})
                end
            end
        end
    end)
end)
toolTip(cayoHeist, "Bring everyone further than 50 meters to you")
createCayoButtons(cayoHeist)
cayoHeist:add_separator()
cayoHeist:add_text("How to Set Up or Bypass Cooldown:")
cayoHeist:add_text("Make sure you have completed the heist and you are standing in front of the planning screen")
cayoHeist:add_text("Click Skip Cooldown, then click on your Preset and click Reset Kosatka Board")

-- Cayo Bag Size & Value Editor
 cayoSizeEditor = cayoHeist:add_tab("Size/Value Editor")
cayoSizeEditor:add_text("Bag Size Editor")
bagSizeVal = 1800
cayoSizeEditor:add_imgui(function()
bagSizeVal, used = ImGui.SliderInt("Bag Size", bagSizeVal, 1800, 7200) -- 7200 = 4 players, this works if you want more money solo and it adjusts so you can always have full bags
    out = "Reset the board to see changes"

    if used then
        globals.set_int(262145 + 30009, bagSizeVal)
        gui.show_message('Bag Size Modified!', out)
    end
end)

cayoSizeEditor:add_separator()
cayoSizeEditor:add_text("Primary Target Editors")
pantherSizeVal = 1900000
cayoSizeEditor:add_imgui(function()
pantherSizeVal, used = ImGui.SliderInt("Panther Value", pantherSizeVal, 1900000, 3800000) -- Double the original price
    out = "Reset the board to see changes"

    if used then
        globals.set_int(262145 + 30264, pantherSizeVal)
        gui.show_message('Panther Value Modified!', out)
    end
end)

diamondSizeVal = 1300000
cayoSizeEditor:add_imgui(function()
diamondSizeVal, used = ImGui.SliderInt("Diamond Value", diamondSizeVal, 1300000, 2600000) -- Double the original price
    out = "Reset the board to see changes"

    if used then
        globals.set_int(262145 + 30262, diamondSizeVal)
        gui.show_message('Diamond Value Modified!', out)
    end
end)

bondSizeVal = 770000
cayoSizeEditor:add_imgui(function()
bondSizeVal, used = ImGui.SliderInt("Bonds Value", bondSizeVal, 770000, 1540000) -- Double the original price
    out = "Reset the board to see changes"

    if used then
        globals.set_int(262145 + 30261, bondSizeVal)
        gui.show_message('Bonds Value Modified!', out)
    end
end)

necklaceSizeVal = 700000
cayoSizeEditor:add_imgui(function()
necklaceSizeVal, used = ImGui.SliderInt("Necklace Value", necklaceSizeVal, 700000, 1400000) -- Double the original price
    out = "Reset the board to see changes"

    if used then
        globals.set_int(262145 + 30260, necklaceSizeVal)
        gui.show_message('Necklace Value Modified!', out)
    end
end)

tequilaSizeVal = 693000
cayoSizeEditor:add_imgui(function()
tequilaSizeVal, used = ImGui.SliderInt("Tequila Value", tequilaSizeVal, 693000, 1400000) -- Double the original price
    out = "Reset the board to see changes"

    if used then
        globals.set_int(262145 + 30259, tequilaSizeVal)
        gui.show_message('Tequila Value Modified!', out)
    end
end)

cayoSizeEditor:add_separator()
cayoSizeEditor:add_text("Secondary Target Editors")

goldSizeVal = 45375
cayoSizeEditor:add_imgui(function()
goldSizeVal, used = ImGui.SliderInt("Gold Value", goldSizeVal, 45375, 181500) -- Quadruple the original price
    out = "Reset the board to see changes"

    if used then
        MPX = PI
PI = stats.get_int("MPPLY_LAST_MP_CHAR")
if PI == 0 then
    MPX = "MP0_"
else
    MPX = "MP1_"
end
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_V"), goldSizeVal, true)
        gui.show_message('Gold Value Modified!', out)
    end
end)

cokeSizeVal = 25312
cayoSizeEditor:add_imgui(function()
cokeSizeVal, used = ImGui.SliderInt("Coke Value", cokeSizeVal, 25312, 101248) -- Quadruple the original price
    out = "Reset the board to see changes"

    if used then
        MPX = PI
PI = stats.get_int("MPPLY_LAST_MP_CHAR")
if PI == 0 then
    MPX = "MP0_"
else
    MPX = "MP1_"
end
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_V"), cokeSizeVal, true)
        gui.show_message('Coke Value Modified!', out)
    end
end)

paintSizeVal = 22500
cayoSizeEditor:add_imgui(function()
paintSizeVal, used = ImGui.SliderInt("Paintings Value", paintSizeVal, 22500, 90000) -- Quadruple the original price
    out = "Reset the board to see changes"

    if used then
        MPX = PI
PI = stats.get_int("MPPLY_LAST_MP_CHAR")
if PI == 0 then
    MPX = "MP0_"
else
    MPX = "MP1_"
end
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT_V"), paintSizeVal, true)
        gui.show_message('Paintings Value Modified!', out)
    end
end)

weedSizeVal = 16875
cayoSizeEditor:add_imgui(function()
weedSizeVal, used = ImGui.SliderInt("Weed Value", weedSizeVal, 16875, 67500) -- Quadruple the original price
    out = "Reset the board to see changes"

    if used then
        MPX = PI
PI = stats.get_int("MPPLY_LAST_MP_CHAR")
if PI == 0 then
    MPX = "MP0_"
else
    MPX = "MP1_"
end
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_V"), weedSizeVal, true)
        gui.show_message('Weed Value Modified!', out)
    end
end)

cashSizeVal = 10406
cayoSizeEditor:add_imgui(function()
cashSizeVal, used = ImGui.SliderInt("Cash Value", cashSizeVal, 10406, 41624) -- Quadruple the original price
    out = "Reset the board to see changes"

    if used then
        MPX = PI
PI = stats.get_int("MPPLY_LAST_MP_CHAR")
if PI == 0 then
    MPX = "MP0_"
else
    MPX = "MP1_"
end
        STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_V"), cashSizeVal, true)
        gui.show_message('Cash Value Modified!', out)
    end
end)
cayoSizeEditor:add_text("These values seem incorrect, but the game reads them properly.")
cayoSizeEditor:add_text("Minimum values are exact defaults for ALL targets.")
cayoSizeEditor:add_separator()
cayoSizeEditor:add_text("Press this after setting values.")
cayoSizeEditor:add_button("Reset Kosatka Board", function()
        locals.set_int(HIP, 1546, 2)
        gui.show_message("Cayo Heist", "Planning board has been reset!")
end)

-- Doomsday Heist Editor

 DP = heistEditor:add_tab("Doomsday Editor")
MPX = PI
PI = stats.get_int("MPPLY_LAST_MP_CHAR")
if PI == 0 then
    MPX = "MP0_"
else
    MPX = "MP1_"
end

a48 = 1

 contract_id = {0, 2, 3, 4} -- Assuming these are the IDs for "Select", "Data Breaches", "Bogdan Problem", "Doomsday Scenario"
 contract_names = {"Select", "Data Breaches", "Bogdan Problem", "Doomsday Scenario"}
 selectedContractIndex = 0
 selectedContractID = contract_id[selectedContractIndex + 1]

DP:add_text("Doomsday Act Selection")

 function DoomsdayActSetter(progress, status)
    STATS.STAT_SET_INT(joaat(MPX .. "GANGOPS_FLOW_MISSION_PROG"), progress, true)
    STATS.STAT_SET_INT(joaat(MPX .. "GANGOPS_HEIST_STATUS"), status, true)
   STATS.STAT_SET_INT(joaat(MPX .. "GANGOPS_FLOW_NOTIFICATIONS"), 1557, true)
end

DP:add_imgui(function()
    selectedContractIndex, used = ImGui.ListBox("##DoomsdayActList", selectedContractIndex, contract_names, #contract_names) -- Display the listbox
    if used then
        selectedContractID = contract_id[selectedContractIndex + 1]
    end

    if ImGui.Button("Select Act") then
        if selectedContractID == 2 then
            DoomsdayActSetter(503, 229383)
        elseif selectedContractID == 3 then
            DoomsdayActSetter(240, 229378)
        elseif selectedContractID == 4 then
            DoomsdayActSetter(16368, 229380)
        end
    end
end)

DP:add_sameline()
DP:add_button("Complete Preps", function() STATS.STAT_SET_INT(MPX .. "GANGOPS_FM_MISSION_PROG", -1, true) end)
DP:add_sameline()
DP:add_button("Reset Preps", function() DoomsdayActSetter(240, 0) end)

DP:add_text("After all choices and pressing Complete Preps")
DP:add_text("leave your facility and go back inside")

 valEdit = DP:add_tab("Payout Editor")

 h2_d1_awd = valEdit:add_input_int("Data Breaches")
 h2_d2_awd = valEdit:add_input_int("Bogdan Problem")
 h2_d3_awd = valEdit:add_input_int("Doomsday Scenario")

valEdit:add_button("Retrieve Payouts", function()
    h2_d1_awd:set_value(tunables.get_int("GANGOPS_THE_IAA_JOB_CASH_REWARD"))
    h2_d2_awd:set_value(tunables.get_int("GANGOPS_THE_SUBMARINE_JOB_CASH_REWARD"))
    h2_d3_awd:set_value(tunables.get_int("GANGOPS_THE_MISSILE_SILO_JOB_CASH_REWARD"))
end)
valEdit:add_sameline()

h2_awd_lock = valEdit:add_checkbox("Apply Payouts")

 if  h2_awd_lock:is_enabled() then
        if h2_d1_awd:get_value() > 2500000 or h2_d1_awd:get_value() <= 0 or h2_d2_awd:get_value() > 2500000 or h2_d2_awd:get_value() <= 0 or h2_d3_awd:get_value() > 2500000 or h2_d3_awd:get_value() <= 0 then
            gui.show_message("Error", "Final chapter income may not exceed 2.500.000 and must be greater than 0")
            h2_awd_lock:set_enabled(false)
           return
       end
       locals.set_int("GANGOPS_THE_IAA_JOB_CASH_REWARD", h2_d1_awd:get_value())
       locals.set_int("GANGOPS_THE_SUBMARINE_JOB_CASH_REWARD", h2_d2_awd:get_value())
       locals.set_int("GANGOPS_THE_MISSILE_SILO_JOB_CASH_REWARD", h2_d3_awd:get_value())
    end

-- Magnet/Forcefield
 xmen = Fun:add_tab("Magnet/Forcefield")
xmen:add_text("Magnetic field attracts all peds/vehicles")
 blackHoleLoopCheckbox = xmen:add_checkbox("Magnet")
 blackHoleRadius = 2.0
 blackHoleMarkerVisible = false
 magnitude = 1.0 -- Initialize the magnitude variable

xmen:add_imgui(function()
    blackHoleRadius, used = ImGui.SliderFloat("Magnet Radius", blackHoleRadius, 0.0, 100.0)
    out = "Radius set to " .. tostring(blackHoleRadius)
    if used then
        gui.show_message('Magnet Radius Modified!', out)
    end

    magnitude, used = ImGui.SliderFloat("Magnitude", magnitude, 0.0, 50.0) -- Add the magnitude slider
    out = "Magnitude set to " .. tostring(magnitude)
    if used then
        gui.show_message('Magnitude Modified!', out)
    end

    blackHoleMarkerVisible = blackHoleLoopCheckbox:is_enabled()

    -- Draw black hole marker
    if blackHoleMarkerVisible then
         playerPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(network.get_selected_player())
         playerCoords = ENTITY.GET_ENTITY_COORDS(playerPed, true)
        GRAPHICS.DRAW_MARKER_SPHERE(playerCoords.x, playerCoords.y, playerCoords.z, blackHoleRadius, 255, 0, 0, 0.3)
    end
end)

 function applyBlackHole(playerCoords, blackHoleRadius, magnitude) -- Include magnitude parameter
     vehicles = entities.get_all_vehicles_as_handles()
     peds = entities.get_all_peds_as_handles()
     blackHoleRadiusSquared = blackHoleRadius * blackHoleRadius
    for _, entity in ipairs(vehicles) do
        --if PED.IS_PED_A_PLAYER(entity) == false then
            --if entities.take_control_of(entity) then
                 entityCoord = ENTITY.GET_ENTITY_COORDS(entity, false)
                 distanceSquared = V3_DISTANCE_SQUARED(playerCoords, entityCoord)
                if distanceSquared <= blackHoleRadiusSquared then
                     forceX = (playerCoords.x - entityCoord.x) * magnitude -- Apply magnitude
                     forceY = (playerCoords.y - entityCoord.y) * magnitude
                     forceZ = (playerCoords.z - entityCoord.z) * magnitude
                    RequestControl(entity)
                    ENTITY.APPLY_FORCE_TO_ENTITY(entity, 2, forceX, forceY, forceZ, 0.0, 0.0, 0.0, 0, false, true, true, false, false)
                end
            --end
        --end
    end

    for _, entity in ipairs(peds) do
        --if PED.IS_PED_A_PLAYER(entity) == false then
            --if entities.take_control_of(entity) then
                 entityCoord = ENTITY.GET_ENTITY_COORDS(entity, false)
                 distanceSquared = V3_DISTANCE_SQUARED(playerCoords, entityCoord)
                if distanceSquared <= blackHoleRadiusSquared then
                     forceX = (playerCoords.x - entityCoord.x) * magnitude -- Apply magnitude
                     forceY = (playerCoords.y - entityCoord.y) * magnitude
                     forceZ = (playerCoords.z - entityCoord.z) * magnitude
                    RequestControl(entity)
                    ENTITY.APPLY_FORCE_TO_ENTITY(entity, 2, forceX, forceY, forceZ, 0.0, 0.0, 0.0, 0, false, true, true, false, false)
                end
            --end
        --end
    end
end

script.register_looped("blackHoleLoopScript", function(script)
    script:yield()
    if blackHoleLoopCheckbox:is_enabled() == true then
         player = network.get_selected_player()
         playerPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(player)
         playerCoords = ENTITY.GET_ENTITY_COORDS(playerPed, true)
        applyBlackHole(playerCoords, blackHoleRadius, magnitude) -- Pass magnitude
    end
end)

function V3_DISTANCE_SQUARED(v1, v2)
     dx = v1.x - v2.x
     dy = v1.y - v2.y
     dz = v1.z - v2.z
    return dx * dx + dy * dy + dz * dz
end

xmen:add_text("Forcefield surrounds your player in a barrier")
xmen:add_text("Works with magnet to create a vehicle/ped barrier")
 forceFieldLoopCheckbox = xmen:add_checkbox("Forcefield")
 forceFieldRadius = 5.0
 forceFieldMagnitude = 10.0
 forceFieldMarkerVisible = false

xmen:add_imgui(function()
    forceFieldRadius, used = ImGui.SliderFloat("Force Field Radius", forceFieldRadius, 0.0, 100.0)
    out = "Radius set to " .. tostring(forceFieldRadius)
    if used then
        gui.show_message('Force Field Radius Modified!', out)
    end

    forceFieldMagnitude, used = ImGui.SliderFloat("Force Field Magnitude", forceFieldMagnitude, 0.0, 100.0)
    out = "Magnitude set to " .. tostring(forceFieldMagnitude)
    if used then
        gui.show_message('Force Field Magnitude Modified!', out)
    end

    forceFieldMarkerVisible = forceFieldLoopCheckbox:is_enabled()

    -- Draw force field marker
    if forceFieldMarkerVisible then
         playerPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(network.get_selected_player())
         playerCoords = ENTITY.GET_ENTITY_COORDS(playerPed, true)
        GRAPHICS.DRAW_MARKER_SPHERE(playerCoords.x, playerCoords.y, playerCoords.z, forceFieldRadius, 0, 255, 0, 0.3)
    end
end)

 function applyForceField(playerCoords, forceFieldRadius, forceMagnitude)
     vehicles = entities.get_all_vehicles_as_handles()
     peds = entities.get_all_peds_as_handles()
     forceFieldRadiusSquared = forceFieldRadius * forceFieldRadius

    -- Apply forces to vehicles
    for _, entity in ipairs(vehicles) do
        --if PED.IS_PED_A_PLAYER(entity) == false then
            --if entities.take_control_of(entity) then
                 entityCoord = ENTITY.GET_ENTITY_COORDS(entity, false)
                 distanceSquared = V3_DISTANCE_SQUARED(playerCoords, entityCoord)
                if distanceSquared <= forceFieldRadiusSquared then
                     forceX = (entityCoord.x - playerCoords.x) * forceMagnitude -- Invert the direction of force
                     forceY = (entityCoord.y - playerCoords.y) * forceMagnitude -- Invert the direction of force
                     forceZ = (entityCoord.z - playerCoords.z) * forceMagnitude -- Invert the direction of force
                    RequestControl(entity)
                    ENTITY.APPLY_FORCE_TO_ENTITY(entity, 2, forceX, forceY, forceZ, 0.0, 0.0, 0.0, 0, false, true, true, false, false)
                end
            --end
        --end
    end

    -- Comment below to unapply to peds
    for _, entity in ipairs(peds) do
        --if PED.IS_PED_A_PLAYER(entity) == false then
            --if entities.take_control_of(entity) then
                 entityCoord = ENTITY.GET_ENTITY_COORDS(entity, false)
                 distanceSquared = V3_DISTANCE_SQUARED(playerCoords, entityCoord)
                if distanceSquared <= forceFieldRadiusSquared then
                     forceX = (entityCoord.x - playerCoords.x) * forceMagnitude -- Invert the direction of force
                     forceY = (entityCoord.y - playerCoords.y) * forceMagnitude -- Invert the direction of force
                     forceZ = (entityCoord.z - playerCoords.z) * forceMagnitude -- Invert the direction of force
                    RequestControl(entity)
                    ENTITY.APPLY_FORCE_TO_ENTITY(entity, 2, forceX, forceY, forceZ, 0.0, 0.0, 0.0, 0, false, true, true, false, false)
                end
            --end
        --end
    end
end

script.register_looped("forceFieldLoopScript", function(script)
    script:yield()
    if forceFieldLoopCheckbox:is_enabled() == true then
         playerPed = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(network.get_selected_player())
         playerCoords = ENTITY.GET_ENTITY_COORDS(playerPed, true)
        applyForceField(playerCoords, forceFieldRadius, forceFieldMagnitude)
    end
end)

function V3_DISTANCE_SQUARED(v1, v2)
     dx = v1.x - v2.x
     dy = v1.y - v2.y
     dz = v1.z - v2.z
    return dx * dx + dy * dy + dz * dz
end

-- USBMenus (Contributor) Additions

raceTab = Zephyr:add_tab("Race Editor")
raceTab:add_imgui(function()
    if (ImGui.TreeNode("Drift Races")) then
        ImGui.SetNextItemWidth(250)
        maxMultiplier, maxMp = ImGui.InputFloat("Max Multiplier", globals.get_float(262145 + 25983), 0.1, 1, "%.1f")
        toolTip("", "Max value that the drift multiplier will reach")
        ImGui.SetNextItemWidth(250)
        timeDrifting, timeDr = ImGui.InputInt("Time Drifting For Multiplier Increase (ms)", globals.get_int(262145 + 25982), 100, 1000)
        toolTip("", "Time in miliseconds while drifting that it takes for the multiplier to increase")
        ImGui.SetNextItemWidth(250)
        driftMultiplier, driftMp = ImGui.InputFloat("Multiplier Increase Rate", globals.get_float(262145 + 25981), 0.1, 1, "%.1f")
        toolTip("", "What the multiplier will increase by")
        ImGui.SetNextItemWidth(250)
        precisionDrift, precisionDr = ImGui.InputInt("Precision Drift Amount", globals.get_int(262145 + 25984), 100, 1000)
        toolTip("", "Amount of points rewarded for doing a precision drift")
        ImGui.SetNextItemWidth(250)
        respawnPenalty, respawnPn = ImGui.InputInt("Respawn Penalty", globals.get_int(262145 + 25995), 100, 1000)
        toolTip("", "Amount of points taken when you respawn")

        if maxMp then
            globals.set_float(262145 + 25983, maxMultiplier)
        end
        if timeDr then
            globals.set_int(262145 + 25982, timeDrifting)
        end
        if driftMp then
            globals.set_float(262145 + 25981, driftMultiplier)
        end
        if precisionDr then
            globals.set_int(262145 + 25984, precisionDrift)
        end
        if respawnPn then
            globals.set_int(262145 + 25995, respawnPenalty)
        end
    end
end)

--Chat Options
local chatOpt = Zephyr:add_tab("Chat Options")

chatOpt:add_text("Send Unfiltered Messages")
local chatBox = ""
chatOpt:add_imgui(function()
    if is_typing then
        PAD.DISABLE_ALL_CONTROL_ACTIONS(0)
    end
    chatBox, used = ImGui.InputText("Message", chatBox, 256)
    if ImGui.IsItemActive() then
        is_typing = true
    else
        is_typing = false
    end
end)
chatOpt:add_sameline()
isTeam = chatOpt:add_checkbox("Team Only")
showAddon = chatOpt:add_checkbox("Show Addon")
toolTip(chatOpt, "Shows [Zephyr] before your message")

chatOpt:add_button("Send Message", function()
    if isCooldown then
        gui.show_message('Chat', "There is a delay before sending another chat message.")
        return
    end

    isCooldown = true
    
    script.run_in_fiber(function(chatMsg)
        if isTeam:is_enabled() == false then
            if chatBox ~= "" then
                if showAddon:is_enabled() then
                    network.send_chat_message("[Zephyr]: "..chatBox, false)
                else
                    network.send_chat_message(chatBox, false)
                end
            end
        else
            if chatBox ~= "" then
                if showAddon:is_enabled() then
                    network.send_chat_message("[Zephyr]: "..chatBox, false)
                else
                    network.send_chat_message(chatBox, false)
                end
            end
        end
        sleep(5)
        isCooldown = false  -- Reset the cooldown after the delay
        chatMsg:yield()
    end)
end)

chatOpt:add_separator()
-- Discord Name Sender, easily send your discord name
chatOpt:add_text("Discord Advertiser")
local discordBox = ""
chatOpt:add_imgui(function()
    if is_typing then
        PAD.DISABLE_ALL_CONTROL_ACTIONS(0)
    end
    discordBox, used = ImGui.InputText("Discord Username", discordBox, 64)
    if ImGui.IsItemActive() then
        is_typing = true
    else
        is_typing = false
    end
end)

chatOpt:add_button("Send", function()
    if discordBox ~= "" then
        if isCooldown then
            gui.show_message('Chat', "There is a delay before sending another discord message.")
            return
        end

        isCooldown = true

        script.run_in_fiber(function(discordMsg)
            network.send_chat_message("[Add My Discord]: "..discordBox, false)
            sleep(5)
            isCooldown = false  -- Reset the cooldown after the delay
            discordMsg:yield()
        end)
    end
end)

chatOpt:add_separator()
chatOpt:add_button("Addon Info", function()
    if isCooldown then
        gui.show_message('Chat', "There is a delay before sending another addon info message.")
        return
    end

    isCooldown = true

    script.run_in_fiber(function(addonMsg)
        local ainfo = "discord.gg/charoselling!"
        network.send_chat_message("[Lua Script]: "..ainfo, false)
        sleep(5)
        isCooldown = false  -- Reset the cooldown after the delay
        addonMsg:yield()
    end)
end)
chatOpt:add_sameline()
chatOpt:add_button("Menu Info", function()
    if isCooldown then
        gui.show_message('Chat', "There is a delay before sending another menu info message.")
        return
    end

    isCooldown = true

    script.run_in_fiber(function(menuMsg)
        local binfo = "YimMenu version 1.69, find it on Github for FREE @ https://github.com/YimMenu/YimMenu!"
        network.send_chat_message("[Menu]: "..binfo, false)
        sleep(5)
        isCooldown = false  -- Reset the cooldown after the delay
        menuMsg:yield()
    end)
end)
chatOpt:add_separator()
chatOpt:add_text("Chat Commands")
chatOpt:add_separator()
chatOpt:add_button("Announce .rp", function()
if chatCommands:is_enabled() then
    if isCooldown then
        gui.show_message('Chat', "There is a delay before sending another menu info message.")
        return
    end

    isCooldown = true

    script.run_in_fiber(function(rpMsg)
        local rpinfo = "Want to level up?  Simply type '.rp' into the chat to gain fast RP (Turn down your sound!)"
        local rpinfo2 = "If at any time you want to stop gaining RP, simply type '.rp stop' into the chat."
        network.send_chat_message("[RP]: "..rpinfo, false)
        network.send_chat_message("[RP]: "..rpinfo2, false)
        sleep(5)
        isCooldown = false  -- Reset the cooldown after the delay
        rpMsg:yield()
    end)
else
    gui.show_message("Error", "Chat commands are disabled!  Enable them in Settings.")
end
end)
chatOpt:add_sameline()
chatOpt:add_button("Announce .$", function()
if chatCommands:is_enabled() then
    if isCooldown then
        gui.show_message('Chat', "There is a delay before sending another menu info message.")
        return
    end

    isCooldown = true

    script.run_in_fiber(function(moneyMsg)
        local moneyinfo = "Need some quick, easy money?  Simply type '.$' into the chat as many times as youd like."
        network.send_chat_message("[$]: "..moneyinfo, false)
        sleep(5)
        isCooldown = false  -- Reset the cooldown after the delay
        moneyMsg:yield()
    end)
else
    gui.show_message("Error", "Chat commands are disabled!  Enable them in Settings.")
end
end)

settingsTab = gui.get_tab("GUI_TAB_SETTINGS")
settingsTab:add_text("Zephyr Settings")
settingsTab:add_separator()

chatCommands = settingsTab:add_checkbox("Enable Chat Commands")
toolTip(settingsTab, "Enables .rp, .rp stop and .$ commands for others to use in chat.")
settingsTab:add_sameline()

detectModders = settingsTab:add_checkbox("Snitch Mode")
notifiedPlayers = {}
detectedModders = {}
script.register_looped("detectModders", function(script)
    if detectModders:is_enabled() then 
        local localPlayerID = PLAYER.PLAYER_ID()
        
        -- Identify modders and store their IDs
        for i = 0, 31 do
            local pid = i
            local detect = network.is_player_flagged_as_modder(pid)
            local reason = network.get_flagged_modder_reason(pid)
            if pid ~= localPlayerID and detect and reason then
                if not detectedModders[pid] then
                    detectedModders[pid] = PLAYER.GET_PLAYER_NAME(pid)
                    -- Send chat message to everyone except modders and the local player
                    for j = 0, 31 do
                        local targetPid = j
                        if not network.is_player_flagged_as_modder(targetPid) and targetPid ~= localPlayerID then
                            network.send_chat_message_to_player(targetPid, "WARNING! " .. detectedModders[pid] .. " has been flagged as a modder in this session!")
							detectedModders = {}
							sleep(10)
                        end
                    end
                end
            end 
        end
    end
end)
toolTip(settingsTab, "Detect/Announces modders to everyone in the session who is not a modder")

kickedModders = {}
autoKick = settingsTab:add_checkbox("Auto Kick Modders")
toolTip(settingsTab, "Automatically kicks detected modders from the session.")
settingsTab:add_sameline()
sendChatMessage = settingsTab:add_checkbox("Announce Kicks")
toolTip(settingsTab, "Sends a chat message when a modder is kicked.")

script.register_looped("autoKick", function(script)
    if autoKick:is_enabled() then
        local localPlayerID = PLAYER.PLAYER_ID()    
        local isHost = NETWORK.NETWORK_IS_HOST()
        -- Identify modders and store their IDs
        for i = 0, 31 do
            local pid = i
            local detect = network.is_player_flagged_as_modder(pid)
            local reason = network.get_flagged_modder_reason(pid)
            if pid ~= localPlayerID and detect and reason then
                if not detectedModders[pid] then
                    detectedModders[pid] = PLAYER.GET_PLAYER_NAME(pid)
                end
                -- Kick modders automatically if not already kicked
                if not kickedModders[pid] then
                    command.call("smartkick", {pid})
					if sendChatMessage:is_enabled() then
						network.send_chat_message("Auto-Kicked " .. detectedModders[pid] .. " - Reason: "..reason, false)
					end
                    gui.show_message("Auto Kick", "Automatically kicked " .. detectedModders[pid])
                    kickedModders[pid] = true -- Mark this modder as kicked
                end
            end 
        end
    end
end)

hostKick = settingsTab:add_checkbox("Auto Kick Host")
lastKickedHostID = nil
script.register_looped("hostKick", function(script)
    if hostKick:is_enabled() then
        local localPlayerID = PLAYER.PLAYER_ID()
        local hostPlayerID = NETWORK.NETWORK_GET_HOST_PLAYER_INDEX()
        
        -- Check if the host is a modder
        local hostIsModder = network.is_player_flagged_as_modder(hostPlayerID)
        local hostModderReason = network.get_flagged_modder_reason(hostPlayerID)

        -- Only proceed if the host is not the local player, not flagged as a modder, and not the last kicked host
        if hostPlayerID ~= localPlayerID and hostPlayerID ~= 255 and hostPlayerID ~= lastKickedHostID and not hostIsModder then
            local hostName = PLAYER.GET_PLAYER_NAME(hostPlayerID)
			invalid = "**Invalid**"
            if hostName ~= invalid then
				command.call("smartkick", {hostPlayerID})
				gui.show_message("Auto Kick", "Automatically host kicked " .. hostName)
				lastKickedHostID = nil
				-- Wait for the game to assign a new host
				sleep(10)
			end
        end
    end
end)
toolTip(settingsTab, "Automatically kicks the host from the session, unless the host is also a modder.")



flags = ImGuiWindowFlags.None | ImGuiWindowFlags.NoSavedSettings
griefPlayerTab:add_imgui(function()
        
    ImGui.PushStyleColor(ImGuiCol.TitleBgCollapsed, 0.5, 0.0, 0.0, 1) -- Adjust the Title color as needed
    ImGui.PushStyleColor(ImGuiCol.WindowBg, 0.5, 0.0, 0.0, 1) -- Adjust the Window background color

    self = PLAYER.GET_PLAYER_NAME(PLAYER.PLAYER_ID())
    selPlayer = PLAYER.GET_PLAYER_NAME(network.get_selected_player())
    if selPlayer == "**Invalid**" then
        selPlayer = "Self"
    end
    if selPlayer == self then
        selPlayer = "Self"
    end
    
    ImGui.SetNextWindowPos(280, 12, ImGuiCond.FirstUseEver)
    ImGui.SetNextWindowCollapsed(true, ImGuiCond.FirstUseEver) -- Collapse the window on first use
    
    ImGui.Begin("Zephyr (Grief Options) - Target: ".. selPlayer, flags)
        -- Sets a new window for the options below, theres a wrapper for ImGui.End() at the bottom of the options.
end)



griefPlayerTab:add_text("Trolling")

griefPlayerTab:add_button("Ringtone", function()
    script.run_in_fiber(function(ringtone)
        ped = PLAYER.GET_PLAYER_PED(network.get_selected_player())
        AUDIO.PLAY_PED_RINGTONE("Remote_Ring", ped, 1);
        ringtone:yield()
    end)
end)

vehRam = false
vehRam = griefPlayerTab:add_checkbox("Vehicle Ram (On/Off)")

script.register_looped("vehRam", function()
    if vehRam:is_enabled() and vehicleVelocity ~= 0 then
        local player_id = network.get_selected_player()
        local playerPed = PLAYER.GET_PLAYER_PED(player_id)

        local coords = ENTITY.GET_ENTITY_COORDS(playerPed, true)
        local randomModel = vehicleModels[math.random(1, #vehicleModels)]
        local modelHash = MISC.GET_HASH_KEY(randomModel)
        if playerPed == PLAYER.PLAYER_PED_ID() then
            gui.show_message("Vehicle Ram", "Stopped, target has quit the session")
            vehRam:set_enabled(false)
            return
        end
        if VEHICLE.IS_THIS_MODEL_A_CAR(modelHash) then
            local spawnRadius = 20.0
            local spawnX = coords.x + math.random(-spawnRadius, spawnRadius)
            local spawnY = coords.y + math.random(-spawnRadius, spawnRadius)

            local vehicle = VEHICLE.CREATE_VEHICLE(modelHash, spawnX, spawnY, coords.z, 0.0, true, false)
            if vehicle ~= 0 then
                local vehCoords = ENTITY.GET_ENTITY_COORDS(vehicle, true)
                local directionX = coords.x - vehCoords.x
                local directionY = coords.y - vehCoords.y
                local directionZ = coords.z - vehCoords.z
                directionX = directionX * vehicleVelocity
                directionY = directionY * vehicleVelocity               -- Adjust the speed as needed
                max_vehicle(vehicle)
                max_vehicle_performance(vehicle)
                VEHICLE.SET_VEHICLE_MOD_KIT(vehicle, 0)
                local customWheelsSlot = 23 -- 23 = Front Wheels, 24 = Rear Wheels (Used only for motorcycles)
                local customWheelsMod = 3 -- This is the rim style for the wheels
                local customWheelType = 10 -- Range: -1 (Stock), 0 (Sport), 1 (Muscle), 2 (Lowrider), 3 (SUV), 4 (Off-Road), 5 (Tuner), 6 (Motorcycle Wheels), 7 (High End), 8 (Bennys Originals), 9 (Bennys Bespoke), 10 (F1 Wheels), 11 (Racing), 12 (Street), 13 (Track)

                VEHICLE.TOGGLE_VEHICLE_MOD(vehicle, customWheelsSlot, true)
                VEHICLE.SET_VEHICLE_WHEEL_TYPE(vehicle, 10)
                VEHICLE.SET_VEHICLE_MOD(vehicle, customWheelsSlot, customWheelsMod, true)
                ped = PED.CREATE_PED_INSIDE_VEHICLE(vehicle, 0, ENTITY.GET_ENTITY_MODEL(playerPed), -1, true, false)
                PED.CLONE_PED_TO_TARGET(playerPed, ped)
                ENTITY.SET_ENTITY_VELOCITY(vehicle, directionX, directionY, directionZ)
                VEHICLE.SET_DISABLE_MAP_COLLISION(vehicle)
                ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(vehicle)
                ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(ped)
                gui.show_message("Vehicle Ram", "Ramming " .. PLAYER.GET_PLAYER_NAME(player_id) .. " with upgraded vehicles with a "..waitTime.." second delay")
                sleep(waitTime)
            end
        end
    end
end)
toolTip(griefPlayerTab, "Rams the player with fully upgraded vehicles at a user defined velocity, toggle on and use the sliders according to your taste.")
-- Define a default velocity value
vehicleVelocity = 0
waitTime = 0
griefPlayerTab:add_imgui(function()
if vehRam:is_enabled() then
    vehicleVelocity, _ = ImGui.SliderInt("Vehicle Velocity", vehicleVelocity, 0, 10)
end
end)
toolTip(griefPlayerTab, "Vehicle Velocity: Sets the velocity level for how fast the vehicles should move when ramming the target.")

griefPlayerTab:add_imgui(function()
if vehRam:is_enabled() then
    waitTime, _ = ImGui.SliderInt("Spawn Delay", waitTime, 0, 10)
end
end)
toolTip(griefPlayerTab, "Spawn Delay: Sets the delay in seconds for how long the script should wait before running again.")

npcDrive = griefPlayerTab:add_checkbox("NPCs Drive To This Player")
toolTip(griefPlayerTab, "Make all NPC's drive to this player")

griefPlayerTab:add_sameline()
dildos = griefPlayerTab:add_checkbox("Dildos")
toolTip(griefPlayerTab, "Spawns Vibrators on the player")

griefPlayerTab:add_sameline()
dropBalls = griefPlayerTab:add_checkbox("Balls")
toolTip(griefPlayerTab, "Spawns Volley Balls on the player")

vehicleSpin = griefPlayerTab:add_checkbox("Spin Vehicle")
toolTip(griefPlayerTab, "Spins the players vehicle uncontrollably.")

griefPlayerTab:add_sameline()
 trollLoop = false
trollLoop = griefPlayerTab:add_checkbox("Teleport Troll")

script.register_looped("trollLoop", function(script)
    script:yield()
    if trollLoop:is_enabled() == true then
    if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then
                gui.show_message("Teleport Troll","Stopped, player has left the session.")
                trollLoop:set_enabled(false)
                return
            end
         Player = PLAYER.PLAYER_ID()
         player = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(network.get_selected_player())
        coords = ENTITY.GET_ENTITY_COORDS(player, true)
        gui.show_message("Teleport Troll", "Teleporting randomly around "..PLAYER.GET_PLAYER_NAME(network.get_selected_player()))
        PLAYER.START_PLAYER_TELEPORT(Player, coords.x + math.random(-5, 5), coords.y + math.random(-5, 5), coords.z, 0, true, true, true)
        sleep(0.1)
    end
end)
toolTip(griefPlayerTab, "Teleports you randomly around the selected player, will destroy vehicles if you are in one when you activate this")

griefPlayerTab:add_button("Spawn Clone", function()
    script.run_in_fiber(function(spawnClone)
         player = PLAYER.GET_PLAYER_PED(network.get_selected_player())
         coords = ENTITY.GET_ENTITY_COORDS(player, true)

        -- Create a pedestrian clone
         ped = PED.CREATE_PED(26, ENTITY.GET_ENTITY_MODEL(player), coords.x, coords.y + 1, coords.z, ENTITY.GET_ENTITY_HEADING(player), true, false, false)
        if ped ~= 0 then
            -- Clone the pedestrian's behavior to target the player
            PED.CLONE_PED_TO_TARGET(player, ped)

            -- Make the pedestrian aggressive
            TASK.TASK_COMBAT_PED(ped, player, 0, 16)

            -- Equip the pedestrian with a knife
            WEAPON.GIVE_WEAPON_TO_PED(ped, 1672152130, 1, false, true) -- -1716189206 is the hash for the knife weapon

            -- Set combat attributes
            PED.SET_PED_COMBAT_ABILITY(ped, 100)
            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 46, true)
            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 2, true) -- Can do Driveby's
            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 5, true) -- Always Fight
            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 13, true) -- Aggressive
            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 17, false) -- always flee /false
            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 21, true) -- Can chase on foot
            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 27, true) -- Perfect Accuracy
            ENTITY.SET_ENTITY_MAX_HEALTH(ped, 1000);
            ENTITY.SET_ENTITY_HEALTH(ped, 1000, 0);
            PED.SET_PED_CAN_RAGDOLL(ped, false)
            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 58, true) -- Disable Flee from combat
            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 38, true) -- Disable Bullet Reactions
            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 31, true) -- Maintain Min target distance
            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 1, true) -- Can use vehicles
        else
            gui.show_error("Failed", "Failed to create ped")
        end
        sleep(2)
    end)
end)
toolTip(griefPlayerTab, "Spawns a clone of the player with a homing launcher to kill them.")

griefPlayerTab:add_sameline()
griefPlayerTab:add_button("Clown Attack", function()
    script.run_in_fiber(function (clownAttack)
         player = PLAYER.GET_PLAYER_PED(network.get_selected_player())
         coords = ENTITY.GET_ENTITY_COORDS(player, true)
         heading = ENTITY.GET_ENTITY_HEADING(player)
         spawnDistance = 50.0 * math.sin(math.rad(heading))
         isRoad, roadCoords = PATHFIND.GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING(coords.x + spawnDistance, coords.y + spawnDistance, coords.z, 1, coords, heading, 0, 9, 3.0, 2.5)
         clown = joaat("s_m_y_clown_01")
         van = joaat("speedo2")
         weapon = -1121678507
        STREAMING.REQUEST_MODEL(clown)
        STREAMING.REQUEST_MODEL(van)
        STREAMING.REQUEST_MODEL(weapon)
        while not STREAMING.HAS_MODEL_LOADED(clown) or not STREAMING.HAS_MODEL_LOADED(van) do
            STREAMING.REQUEST_MODEL(clown)
            STREAMING.REQUEST_MODEL(van)
            clownAttack:yield()
        end
        vehicle = VEHICLE.CREATE_VEHICLE(van, roadCoords.x, roadCoords.y, roadCoords.z, ENTITY.GET_ENTITY_HEADING(player), true, false, false)
        if vehicle ~= 0 then
            for seat = -1, 2 do
                --vehiclePed = PED.CREATE_PED_INSIDE_VEHICLE(vehicle, 0, clown, seat, true, false)
                 ped = PED.CREATE_PED(0, clown, roadCoords.x, roadCoords.y + 2, roadCoords.z, ENTITY.GET_ENTITY_HEADING(player), true, true)
                if ped ~= 0 then
                     group = joaat("HATES_PLAYER")
                    PED.ADD_RELATIONSHIP_GROUP("clowns", group)
                    PED.SET_PED_RELATIONSHIP_GROUP_HASH(ped, group)
                    ENTITY.SET_ENTITY_CAN_BE_DAMAGED_BY_RELATIONSHIP_GROUP(ped, false, group)
                    PED.SET_PED_CAN_BE_TARGETTED_BY_TEAM(ped, group, false)
                    PED.SET_CAN_ATTACK_FRIENDLY(ped, false, false)
                    PED.SET_PED_CAN_BE_TARGETTED(ped, false)
                    WEAPON.GIVE_WEAPON_TO_PED(ped, weapon, 999999, false, true)
                    PED.SET_PED_INTO_VEHICLE(ped, vehicle, seat)
                    PED.SET_PED_COMBAT_ABILITY(ped, 100)
                    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 46, true)
                    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 2, true) -- Can do Driveby's
                    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 5, true) -- Always Fight
                    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 13, true) -- Aggressive
                    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 17, false) -- always flee /false
                    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 21, true) -- Can chase on foot
                    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 27, true) -- Perfect Accuracy
                    ENTITY.SET_ENTITY_MAX_HEALTH(ped, 1000);
                    ENTITY.SET_ENTITY_HEALTH(ped, 1000, 0);
                    PED.SET_PED_CAN_RAGDOLL(ped, false)
                    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 58, true) -- Disable Flee from combat
                    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 38, true) -- Disable Bullet Reactions
                    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 31, true) -- Maintain Min target distance
                    PED.SET_PED_COMBAT_ATTRIBUTES(ped, 1, true) -- Can use vehicles
                    TASK.TASK_COMBAT_PED(ped, player, 0, 16)
                    TASK.TASK_DRIVE_BY(ped, player, vehicle, coords.x, coords.y, coords.z, 50, 100, false, joaat("FIRING_PATTERN_FULL_AUTO"))

                    ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(ped)
                else
                    gui.show_error("Failed", "Failed to create ped")
                end
            end
        else
            gui.show_error("Failed", "Failed to create vehicle")
        end

        if ped == 0 then
            gui.show_error("Failed", "Failed To Create Clowns")
        else
            gui.show_message("Success", "Successfully spawned the attack clowns")
        end
        sleep(2)
    end)
end)
toolTip(griefPlayerTab, "Spawns a Clown van full of clowns to chase/gun the player down.")

griefPlayerTab:add_sameline()
griefPlayerTab:add_button("Clown Jet Attack", function()
script.run_in_fiber(function(clownJetsOne)
            local player = network.get_selected_player(player)
            if player ~= -1 then
                local players = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(player)
                local playerName = PLAYER.GET_PLAYER_NAME(players)
                local coords = ENTITY.GET_ENTITY_COORDS(players, true)
                local heading = ENTITY.GET_ENTITY_HEADING(players)
                local spawnDistance = 150.0 * math.sin(math.rad(heading))
                local spawnHeight = 10.0
                local isRoad, roadCoords = PATHFIND.GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING(coords.x + spawnDistance, coords.y + spawnDistance, coords.z, 1, coords, heading, 0, 9, 3.0, 2.5)
                local clown = joaat("s_m_y_clown_01")
                local jet = joaat("Lazer")
                local weapon = -1121678507

                STREAMING.REQUEST_MODEL(clown)
                STREAMING.REQUEST_MODEL(jet)
                STREAMING.REQUEST_MODEL(weapon)

                while not STREAMING.HAS_MODEL_LOADED(clown) or not STREAMING.HAS_MODEL_LOADED(jet) do
                    STREAMING.REQUEST_MODEL(clown)
                    STREAMING.REQUEST_MODEL(jet)
                    STREAMING.REQUEST_MODEL(weapon)
                    clownJetsOne:yield()
                end

                local jetSpawnX = coords.x + math.random(-1000, 1000)
                local jetSpawnY = coords.y + math.random(-1000, 1000)
                local jetSpawnZ = coords.z + math.random(50, 400)

                local colors = {27, 28, 29, 150, 30, 31, 32, 33, 34, 143, 35, 135, 137, 136, 36, 38, 138, 99, 90, 88, 89, 91, 49, 50, 51, 52, 53, 54, 92, 141, 61, 62, 63, 64, 65, 66, 67, 68, 69, 73, 70, 74, 96, 101, 95, 94, 97, 103, 104, 98, 100, 102, 99, 105, 106, 71, 72, 142, 145, 107, 111, 112}
                local jetVehicle = VEHICLE.CREATE_VEHICLE(jet, jetSpawnX, jetSpawnY, jetSpawnZ, heading, true, false, false)
                if jetVehicle ~= 0 then
                    local primaryColor = colors[math.random(#colors)]
                    local secondaryColor = colors[math.random(#colors)]

                    VEHICLE.SET_VEHICLE_COLOURS(jetVehicle, primaryColor, secondaryColor)

                    for seat = -1, -1 do
                        local ped = PED.CREATE_PED(0, clown, jetSpawnX, jetSpawnY, jetSpawnZ, heading, true, true)

                        if ped ~= 0 then
                            local group = joaat("HATES_PLAYER")
                            PED.ADD_RELATIONSHIP_GROUP("clowns", group)
                            ENTITY.SET_ENTITY_CAN_BE_DAMAGED_BY_RELATIONSHIP_GROUP(ped, false, group)
                            PED.SET_PED_CAN_BE_TARGETTED(ped, false)

                            PED.SET_PED_TARGET_LOSS_RESPONSE(ped, 3)
                            ENTITY.SET_ENTITY_IS_TARGET_PRIORITY(players, true, true)
                            PED.SET_DRIVER_AGGRESSIVENESS(ped, 1)
                            WEAPON.GIVE_WEAPON_TO_PED(ped, weapon, 999999, false, true)
                            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 13, true)
                            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 31, true)
                            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 17, false)
                            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 1, true)
                            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 46, true)
                            PED.SET_PED_COMBAT_ATTRIBUTES(ped, 0, false)
                            PED.SET_PED_INTO_VEHICLE(ped, jetVehicle, seat)
                            TASK.TASK_PLANE_MISSION(ped, jetVehicle, 0, players, 0, 0, 0, 6, 100, 0, 90, 0, -200)
                            PED.SET_PED_KEEP_TASK(ped, true)
                            PED.SET_AI_WEAPON_DAMAGE_MODIFIER(10000)
                            WEAPON.SET_WEAPON_DAMAGE_MODIFIER(1060309761, 10000)
							clownJetsOne:yield()
                        else
                            gui.show_error("Failed", "Failed to create ped")
                        end
                    end
                else
                    gui.show_error("Failed", "Failed to create jet")
                end

                if jetVehicle == 0 then
                    gui.show_error("Failed", "Failed to Create Jet")
                else
                    gui.show_message("Griefing", "Clown Lazers spawned!  Lock-on Acquired! Target: "..PLAYER.GET_PLAYER_NAME(player).." Spawning jets every 15 seconds.")
                end

                STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(jetVehicle)
                STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(ped)
                STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(weapon)
            else
                gui.show_error("No Player Selected", "Please select a valid player.")
            end
end)
end)
toolTip(griefPlayerTab, "Spawns Randomly colored jets with Clowns as pilots to attack the selected player.")

function request_model(model)
    script.run_in_fiber(function(script)
        while not STREAMING.HAS_MODEL_LOADED(model) do
            STREAMING.REQUEST_MODEL(model)
            script:yield()
        end
    end)
end

---@param entity Entity
---@param minDistance number
---@param maxDistance number
---@return v3
function get_random_offset_from_entity(entity, minDistance, maxDistance)
     pos = ENTITY.GET_ENTITY_COORDS(entity, false)
    return get_random_offset_in_range(pos, minDistance, maxDistance)
end


---@param coords v3
---@param minDistance number
---@param maxDistance number
---@return v3
function get_random_offset_in_range(coords, minDistance, maxDistance)
     radius = random_float(minDistance, maxDistance)
     angle = random_float(0, 2 * math.pi)
     delta = vec3.new(math.cos(angle), math.sin(angle), 0.0)
     offsetX = delta.x * radius
     offsetY = delta.y * radius
     offsetZ = delta.z * radius
     newX = coords.x + offsetX
     newY = coords.y + offsetY
     newZ = coords.z + offsetZ
    return vec3.new(newX, newY, newZ)
end

---@param min number
---@param max number
---@return number
function random_float(min, max)
    return min + math.random() * (max - min)
end

function request_fx_asset(asset)
    script.run_in_fiber(function(script)
        STREAMING.REQUEST_NAMED_PTFX_ASSET(asset)
        while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(asset) do script:yield() end
    end)
end

---@param entity Entity
---@return boolean
function request_control_once(entity)
    return entities.take_control_of(entity)
end

function atan2(y, x)
    return math.atan(y / x)
end

function set_entity_face_entity(entity, target, usePitch)
     pos1 = ENTITY.GET_ENTITY_COORDS(entity, false)
     pos2 = ENTITY.GET_ENTITY_COORDS(target, false)
     relX = pos2.x - pos1.x
     relY = pos2.y - pos1.y
     relZ = pos2.z - pos1.z

     heading = atan2(relY, relX) * 180.0 / math.pi
    if heading < 0 then
        heading = heading + 360.0
    end

    ENTITY.SET_ENTITY_HEADING(entity, heading)

    if usePitch then
         distXY = math.sqrt(relX * relX + relY * relY)
         pitch = math.atan2(-relZ, distXY) * 180.0 / math.pi
        ENTITY.SET_ENTITY_ROTATION(entity, pitch, 0, heading, 2, false)
    end
end


griefPlayerTab:add_button("Clown Bombers", function()
    script.run_in_fiber(function(script)
        local hash = joaat("s_m_y_clown_01")
        local asset = "scr_rcbarry2"
        local explosion = "scr_exp_clown"
        local appears = "scr_clown_appears"

        request_model(hash)
        local player = PLAYER.GET_PLAYER_PED(network.get_selected_player())
        local playerPos = ENTITY.GET_ENTITY_COORDS(player, false)
        
        -- Find a safe spawn point near the player
        local spawnPos = get_safe_spawn_point_near_player(playerPos)

        local ped = PED.CREATE_PED(0, hash, spawnPos.x, spawnPos.y, spawnPos.z, 0.0, true, false)
        if ped == 0 then 
            gui.show_error("Clown Bomber", "Failed to Create Ped\nMost Likely The Model Isn't Loaded\nTry Again.")
            return
        end

        gui.show_message("Clown Bomber", "Spawned as " .. tostring(ped))

        request_fx_asset(asset)
        GRAPHICS.USE_PARTICLE_FX_ASSET(asset)
        GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY(
            appears,
            ped,
            0.0, 0.0, -1.0,
            0.0, 0.0, 0.0,
            0.5, false, false, false
        )

        PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
        PED.SET_PED_KEEP_TASK(ped, true)
        AUDIO.STOP_PED_SPEAKING(ped, true)
        WEAPON.GIVE_WEAPON_TO_PED(ped, joaat("weapon_stickybomb"), 1, false, true)
        TASK.TASK_GO_TO_COORD_ANY_MEANS(ped, playerPos.x, playerPos.y, playerPos.z, 3.0, 0, false, 0, 0.0)

        while not PED.IS_PED_FATALLY_INJURED(ped) and ENTITY.DOES_ENTITY_EXIST(ped) do
            local pedPos = ENTITY.GET_ENTITY_COORDS(ped, true)
            local targetPos = ENTITY.GET_ENTITY_COORDS(player, true)
            
            if calcDistanceFromTwoCoords(pedPos, targetPos) < 3.0 then
                request_fx_asset(asset)
                GRAPHICS.USE_PARTICLE_FX_ASSET(asset)
                GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_AT_COORD(
                    explosion,
                    pedPos.x, pedPos.y, pedPos.z,
                    0.0, 0.0, 0.0,
                    1.0,
                    false, false, false, false
                )
                FIRE.ADD_EXPLOSION(pedPos.x, pedPos.y, pedPos.z, 0, 1000.0, true, true, 1.0, false)
                ENTITY.SET_ENTITY_VISIBLE(ped, false, false)
                ENTITY.DELETE_ENTITY(ped)
                return
            end

            if calcDistanceFromTwoCoords(targetPos, playerPos) > 3.0 then
                playerPos = targetPos
                TASK.TASK_GO_TO_COORD_ANY_MEANS(ped, playerPos.x, playerPos.y, playerPos.z, 3.0, 0, false, 0, 0.0)
            end
            
            script:yield()
        end

        ENTITY.DELETE_ENTITY(ped)
    end)
end)
toolTip(griefPlayerTab, "Spawns a kamikaze clown to kill the player")

griefPlayerTab:add_separator()
griefPlayerTab:add_text("Griefing")
hydrantCB = griefPlayerTab:add_checkbox("Hydrant")
toolTip(griefPlayerTab, "Spawns fire hydrant spray to ragdoll the player")

griefPlayerTab:add_sameline()
steamCB = griefPlayerTab:add_checkbox("Steam")
toolTip(griefPlayerTab, "Spawns steam to burn the player")

griefPlayerTab:add_sameline()
extinguisherCB = griefPlayerTab:add_checkbox("Extinguisher")
toolTip(griefPlayerTab, "Spawns fire extinguisher spray on the player")

explodeCB = griefPlayerTab:add_checkbox("Explode")
griefPlayerTab:add_sameline()
toolTip(griefPlayerTab, "Violently explodes the player and shakes their screen.")

noDamageExplode = griefPlayerTab:add_checkbox("Screen Shake")
toolTip(griefPlayerTab, "Causes a no damage explosion to shake the players screen.")

script.register_looped("extrasAddonLooped", function(script)
    if npcDrive:is_enabled() then
    if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then
                gui.show_message("NPC Drive","Stopped, player has left the session.")
                npcDrive:set_enabled(false)
                return
            end
        for _, veh in pairs(entities.get_all_vehicles_as_handles()) do
            ped = VEHICLE.GET_PED_IN_VEHICLE_SEAT(veh, -1, false)
            if ped ~= 0 and not PED.IS_PED_A_PLAYER(ped) then
                request_control(veh)
                request_control(ped)
                    --TASK.CLEAR_PRIMARY_VEHICLE_TASK(veh)
                    target = PLAYER.GET_PLAYER_PED(network.get_selected_player())
                    pos = ENTITY.GET_ENTITY_COORDS(target, true)
                    TASK.TASK_VEHICLE_DRIVE_TO_COORD(ped, veh, pos.x, pos.y, pos.z, 70.0, 1, ENTITY.GET_ENTITY_MODEL(veh), 16777216, 0.0, 1)
            end
        end
    end
    if dildos:is_enabled() then
    if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then
                gui.show_message("Dildo Spam","Stopped, player has left the session.")
                dildos:set_enabled(false)
                return
            end
         selectedItem = joaat("v_res_d_dildo_f")
         coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(network.get_selected_player()), false)
        while not STREAMING.HAS_MODEL_LOADED(selectedItem) do
            STREAMING.REQUEST_MODEL(selectedItem)
            script:yield()
        end
        OBJECT.CREATE_AMBIENT_PICKUP(738282662, coords.x, coords.y, coords.z + 1.5, 0, 1, selectedItem, false, true)
    end

    if dropBalls:is_enabled() then
    if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then
                gui.show_message("Balls Spam","Stopped, player has left the session.")
                dropBalls:set_enabled(false)
                return
            end
         randomIndex = math.random(1, #balls)
         selectedItem = balls[randomIndex]
         coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(network.get_selected_player()), false)
        while not STREAMING.HAS_MODEL_LOADED(joaat(selectedItem)) do
            STREAMING.REQUEST_MODEL(joaat(selectedItem))
            script:yield()
        end
        OBJECT.CREATE_AMBIENT_PICKUP(738282662, coords.x, coords.y, coords.z + 2, 0, 1, joaat(selectedItem), false, true)
    end
    if vehicleSpin:is_enabled() then
    if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then
                gui.show_message("Spin Vehicle","Stopped, player has left the session.")
                vehicleSpin:set_enabled(false)
                return
            end
        if not PED.IS_PED_IN_ANY_VEHICLE(PLAYER.GET_PLAYER_PED(network.get_selected_player()),true) then
            gui.show_error("Spin Vehicle","Player is not in a vehicle")
        else
            veh = PED.GET_VEHICLE_PED_IS_USING(PLAYER.GET_PLAYER_PED(network.get_selected_player()))
            request_control(veh)
            ENTITY.APPLY_FORCE_TO_ENTITY(veh, 5, 0, 0, 20.0, 0, 0, 0, 0, true, false, true, false, true)
            --ENTITY.APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(veh, 5, 0, 150.0, 0, 0, true, false, true)
            gui.show_message("Spin Vehicle","Spinning Vehicle")
        end
    end
    if extinguisherCB:is_enabled() then
    if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then
                gui.show_message("Extinguisher","Stopped, player has left the session.")
                extinguisherCB:set_enabled(false)
                return
            end
        player = PLAYER.GET_PLAYER_PED(network.get_selected_player())
        coords = ENTITY.GET_ENTITY_COORDS(player, true)
        FIRE.ADD_OWNED_EXPLOSION(player, coords.x, coords.y, coords.z - 2.0, 24, 1, true, false, 0)
    end

    if steamCB:is_enabled() then
    if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then
                gui.show_message("Steam","Stopped, player has left the session.")
                steamCB:set_enabled(false)
                return
            end
        player = PLAYER.GET_PLAYER_PED(network.get_selected_player())
        coords = ENTITY.GET_ENTITY_COORDS(player, true)
        FIRE.ADD_OWNED_EXPLOSION(player, coords.x, coords.y, coords.z - 2.0, 11, 1, true, false, 0)
    end

    if hydrantCB:is_enabled() then
    if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then
                gui.show_message("Hydrant","Stopped, player has left the session.")
                hydrantCB:set_enabled(false)
                return
            end
        player = PLAYER.GET_PLAYER_PED(network.get_selected_player())
        coords = ENTITY.GET_ENTITY_COORDS(player, true)
        FIRE.ADD_OWNED_EXPLOSION(player, coords.x, coords.y, coords.z - 2.0, 13, 1, true, false, 0)
    end

    if explodeCB:is_enabled() then
    if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then
                gui.show_message("Explode","Stopped, player has left the session.")
                explodeCB:set_enabled(false)
                return
            end
        player = PLAYER.GET_PLAYER_PED(network.get_selected_player())
        coords = ENTITY.GET_ENTITY_COORDS(player, true)
        FIRE.ADD_OWNED_EXPLOSION(player, coords.x, coords.y, coords.z - 2.0, 1, 100, true, false, 2147483647)
    end

    if noDamageExplode:is_enabled() then
    if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then
                gui.show_message("Screen Shake","Stopped, player has left the session.")
                noDamageExplode:set_enabled(false)
                return
            end
        player = PLAYER.GET_PLAYER_PED(network.get_selected_player())
        coords = ENTITY.GET_ENTITY_COORDS(player, true)
        FIRE.ADD_OWNED_EXPLOSION(player, coords.x, coords.y, coords.z - 2.0, 1, 0, true, false, 2147483647)
    end
end)

-- Grief Burn Player
griefPlayerTab:add_sameline()
 burnLoop = false
burnLoop = griefPlayerTab:add_checkbox("Burn")

script.register_looped("burnLoop", function()
    if burnLoop:is_enabled() == true then
    if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then
                gui.show_message("Burn","Stopped, player has left the session.")
                burnLoop:set_enabled(false)
                return
            end
         player_id = network.get_selected_player()
         coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(player_id), true)
         fxType = 3
         ptfxAsset = "scr_bike_adversary"
         particle = "scr_adversary_foot_flames"

        FIRE.ADD_EXPLOSION(coords.x, coords.y, coords.z, fxType, 100000.0, false, false, 0, false)
        GRAPHICS.USE_PARTICLE_FX_ASSET(ptfxAsset)
        GRAPHICS.START_PARTICLE_FX_NON_LOOPED_AT_COORD(particle, coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 1.0, false, true, false)

        gui.show_message("griefPlayerTab", "Burning "..PLAYER.GET_PLAYER_NAME(player_id).." repeatedly")

        -- Optionally, you can play a fire sound here using AUDIO.PLAY_SOUND_FROM_COORD

        sleep(0.4)  -- Sets the timer in seconds for how long this should pause before burning another player
    end
end)
toolTip(griefPlayerTab, "Repeatedly burns the selected player using molotovs")
-- Griefing Options

 ramLoopz = griefPlayerTab:add_checkbox("Vehicle Sandwich (On/Off)")

script.register_looped("ramLoopz", function()
    if ramLoopz:is_enabled() then
    if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then
                gui.show_message("Vehicle Sandwich","Stopped, player has left the session.")
                ramLoopz:set_enabled(false)
                return
            end
         player_id = network.get_selected_player()
        if NETWORK.NETWORK_IS_PLAYER_ACTIVE(player_id) then
                         coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(player_id), true)

                        -- Get a random vehicle model from the list (make sure 'vehicleModels' is defined)
                         randomModel = vehicleModels[math.random(1, #vehicleModels)]

                        -- Convert the string vehicle model to its hash value
                         modelHash = MISC.GET_HASH_KEY(randomModel)

                        -- Create the vehicle without the last boolean argument (keepTrying)
                         vehicle = VEHICLE.CREATE_VEHICLE(modelHash, coords.x, coords.y, coords.z + 20, 0.0, true, true, false)
                        -- Set vehicle orientation
                        ENTITY.SET_ENTITY_ROTATION(vehicle, 0, 0, 0, 2, true)
                         networkId = NETWORK.VEH_TO_NET(vehicle)
                        if NETWORK.NETWORK_GET_ENTITY_IS_NETWORKED(vehicle) then
                            NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(networkId, true)
                        end

                        if vehicle then
                            -- Set the falling velocity (adjust the value as needed)
                            ENTITY.SET_ENTITY_VELOCITY(vehicle, 0, 0, -100000000)
                            -- Optionally, you can play a sound or customize the ramming effect here
                            VEHICLE.SET_ALLOW_VEHICLE_EXPLODES_ON_CONTACT(vehicle, true)
                        end

                         vehicle2 = VEHICLE.CREATE_VEHICLE(modelHash, coords.x, coords.y, coords.z - 20, 0.0, true, true, false)
                        -- Set vehicle orientation
                        ENTITY.SET_ENTITY_ROTATION(vehicle2, 0, 0, 0, 2, true)
                         networkId = NETWORK.VEH_TO_NET(vehicle2)
                        if NETWORK.NETWORK_GET_ENTITY_IS_NETWORKED(vehicle2) then
                            NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(networkId, true)
                        end

                        if vehicle2 then
                            -- Set the falling velocity (adjust the value as needed)
                            ENTITY.SET_ENTITY_VELOCITY(vehicle2, 0, 0, 100000000)
                            -- Optionally, you can play a sound or customize the ramming effect here
                            VEHICLE.SET_ALLOW_VEHICLE_EXPLODES_ON_CONTACT(vehicle2, true)
                        end

                        gui.show_message("griefPlayerTab", "Ramming " .. PLAYER.GET_PLAYER_NAME(player_id) .. " with vehicles")

                        -- Use these lines to delete the vehicle after spawning.
                        -- Needs some type of delay between spawning and deleting to function properly

                        ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(vehicle)
                        ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(vehicle2)
        end

        -- Sets the timer in seconds for how long this should pause before ramming another player
        --sleep(0.2)
    end
end)
toolTip(griefPlayerTab, "Sandwiches the selected player between 2 vehicles at high velocity")

-- griefPlayerTab Explode Player 2
griefPlayerTab:add_sameline()
 explodeLoop = false
explodeLoop = griefPlayerTab:add_checkbox("Explosion")

script.register_looped("explodeLoop", function()
    if explodeLoop:is_enabled() == true then
    if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then
                gui.show_message("Explosion","Stopped, player has left the session.")
                explodeLoop:set_enabled(false)
                return
            end
         explosionType = 1  -- Adjust this according to the explosion type you want (1 = GRENADE, 2 = MOLOTOV, etc.)
         explosionFx = "explosion_barrel"

                 player_id = network.get_selected_player()
                 coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(player_id), true)

                FIRE.ADD_EXPLOSION(coords.x, coords.y, coords.z, explosionType, 100000.0, true, false, 0, false)
                GRAPHICS.USE_PARTICLE_FX_ASSET(explosionFx)
                GRAPHICS.START_PARTICLE_FX_NON_LOOPED_AT_COORD("explosion_barrel", coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 1.0, false, true, false)

                gui.show_message("griefPlayerTab", "Exploding "..PLAYER.GET_PLAYER_NAME(player_id).." repeatedly")
                -- Optionally, you can play an explosion sound here using AUDIO.PLAY_SOUND_FROM_COORD

        sleep(0.4)  -- Sets the timer in seconds for how long this should pause before exploding another player
    end
end)
toolTip(griefPlayerTab, "Repeatedly explodes the selected player using a barrel explosion.")

-- Crash Options
griefPlayerTab:add_separator()
griefPlayerTab:add_text("Crash Options")
 prCrash = false
prCrash = griefPlayerTab:add_checkbox("PR Crash (On/Off)")

script.register_looped("prCrash", function()
    if prCrash:is_enabled() == true then
    if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then
                gui.show_message("PR Crash", "Stopped, player has left the session.")
                prCrash:set_enabled(false)
                return
            end
         model = joaat("vw_prop_vw_colle_prbubble")
         pickup = joaat("PICKUP_CUSTOM_SCRIPT")
         player_id = network.get_selected_player()
         money_value = 1000000

        STREAMING.REQUEST_MODEL(model)

        if STREAMING.HAS_MODEL_LOADED(model) then
        gui.show_message("PR Crash", "Crashing player")
             coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(player_id), true)
             objectIdSpawned = OBJECT.CREATE_AMBIENT_PICKUP(
                pickup,
                coords.x,
                coords.y,
                coords.z + 0.5,
                3,
                money_value,
                model,
                true,
                false
            )

             net_id = NETWORK.OBJ_TO_NET(objectIdSpawned)
            NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(objectIdSpawned, true)
        end
        sleep(0.1) -- Sets the timer in seconds for how long this should pause before sending another figure
    end
end)
toolTip(griefPlayerTab, "Spawns Princes Robot figurines worth $1,000,000, causing the player to crash (not very effective on modders)")
-- SCH-Lua
-- SCH-Lua Functions
function globals_set_int(intglobal, intval) --当游戏版本不受支持时拒绝修改globals避免损坏线上存档
    if verchkok == 1 then
        globals.set_int(intglobal, intval)
    else
        log.warning("游戏版本不受支持,为了您的线上存档安全,已停止数据修改")
    end
end

function globals_set_float(floatglobal, floatval) --当游戏版本不受支持时拒绝修改globals避免损坏线上存档
    if verchkok == 1 then
        globals.set_float(floatglobal, floatval)
    else
        log.warning("游戏版本不受支持,为了您的线上存档安全,已停止数据修改")
    end
end

function locals_set_int(scriptname, intlocal, intlocalval) --当游戏版本不受支持时拒绝修改locals避免损坏线上存档
    if verchkok == 1 then
        locals.set_int(scriptname, intlocal, intlocalval)
    else
        log.warning("游戏版本不受支持,为了您的线上存档安全,已停止数据修改")
    end
end

function locals_set_float(scriptname, flocal, flocalval) --当游戏版本不受支持时拒绝修改locals避免损坏线上存档
    if verchkok == 1 then
        locals.set_float(scriptname, flocal, flocalval)
    else
        log.warning("游戏版本不受支持,为了您的线上存档安全,已停止数据修改")
    end
end

function packed_stat_set_bool(boolindex, boolval) --当游戏版本不受支持时拒绝修改globals避免损坏线上存档
    if verchkok == 1 then
        stats.set_packed_stat_bool(boolindex, boolval)
    else
        log.warning("游戏版本不受支持,为了您的线上存档安全,已停止数据修改")
    end
end

function get_closest_veh(entity) -- 获取最近的载具
    local coords = ENTITY.GET_ENTITY_COORDS(entity, true)
    local vehicles = entities.get_all_vehicles_as_handles()
    local closestdist = 1000000
    local closestveh = 0
    for k, veh in pairs(vehicles) do
        if veh ~= PED.GET_VEHICLE_PED_IS_IN(PLAYER.PLAYER_PED_ID(), false) and ENTITY.GET_ENTITY_HEALTH(veh) ~= 0 then
            local vehcoord = ENTITY.GET_ENTITY_COORDS(veh, true)
            local dist = MISC.GET_DISTANCE_BETWEEN_COORDS(coords['x'], coords['y'], coords['z'], vehcoord['x'], vehcoord['y'], vehcoord['z'], true)
            if dist < closestdist then
                closestdist = dist
                closestveh = veh
            end
        end
    end
    return closestveh
end

function upgrade_vehicle(vehicle)
    for i = 0, 49 do
        local num = VEHICLE.GET_NUM_VEHICLE_MODS(vehicle, i)
        VEHICLE.SET_VEHICLE_MOD(vehicle, i, num - 1, true)
    end
end

function run_script(scriptName, stackSize) --启动脚本线程
    script.run_in_fiber(function (runscript)
        if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(MISC.GET_HASH_KEY(scriptName)) >= 1 then
        gui.show_error("Warning","Do not start script threads repeatedly!")
        else
        SCRIPT.REQUEST_SCRIPT(scriptName)
        repeat runscript:yield() until SCRIPT.HAS_SCRIPT_LOADED(scriptName)
        SYSTEM.START_NEW_SCRIPT(scriptName, stackSize)
        SCRIPT.SET_SCRIPT_AS_NO_LONGER_NEEDED(scriptName)
        end
    end)
end

function screen_draw_text(text, x, y, p0 , size) --在屏幕上绘制文字
    HUD.BEGIN_TEXT_COMMAND_DISPLAY_TEXT("STRING") --The following were found in the decompiled script files: STRING, TWOSTRINGS, NUMBER, PERCENTAGE, FO_TWO_NUM, ESMINDOLLA, ESDOLLA, MTPHPER_XPNO, AHD_DIST, CMOD_STAT_0, CMOD_STAT_1, CMOD_STAT_2, CMOD_STAT_3, DFLT_MNU_OPT, F3A_TRAFDEST, ES_HELP_SOC3
    HUD.SET_TEXT_FONT(0)
    HUD.SET_TEXT_SCALE(p0, size) --Size range : 0F to 1.0F --p0 is unknown and doesn't seem to have an effect, yet in the game scripts it changes to 1.0F sometimes.
    HUD.SET_TEXT_DROP_SHADOW()
    HUD.SET_TEXT_WRAP(0.0, 1.0) --限定行宽，超出自动换行 start - left boundry on screen position (0.0 - 1.0)  end - right boundry on screen position (0.0 - 1.0)
    HUD.SET_TEXT_DROPSHADOW(1, 0, 0, 0, 0) --distance - shadow distance in pixels, both horizontal and vertical    -- r, g, b, a - color
    HUD.SET_TEXT_OUTLINE()
    HUD.SET_TEXT_EDGE(1, 0, 0, 0, 0)
    HUD.ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text)
    HUD.END_TEXT_COMMAND_DISPLAY_TEXT(x, y, 0) --占坐标轴的比例
end

function CreatePed(index, Hash, Pos, Heading)
    script.run_in_fiber(function (ctped)
    STREAMING.REQUEST_MODEL(Hash)
    while not STREAMING.HAS_MODEL_LOADED(Hash) do ctped:yield() end
    local Spawnedp = PED.CREATE_PED(index, Hash, Pos.x, Pos.y, Pos.z, Heading, true, true)
    STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(Hash)
    return Spawnedp
    end)
end

function create_object(hash, pos)
    script.run_in_fiber(function (ctobjS)
        STREAMING.REQUEST_MODEL(hash)
        while not STREAMING.HAS_MODEL_LOADED(hash) do ctobjS:yield() end
        local obj = OBJECT.CREATE_OBJECT(hash, pos.x, pos.y, pos.z, true, false, false)
        return obj
    end)
end

function request_model(hash)
    script.run_in_fiber(function (rqmd)
        STREAMING.REQUEST_MODEL(hash)
        while not STREAMING.HAS_MODEL_LOADED(hash) do
            rqmd:yield()
        end
        return STREAMING.HAS_MODEL_LOADED(hash)
    end)
end

function CreateVehicle(Hash, Pos, Heading, Invincible)
    script.run_in_fiber(function (ctveh)
        STREAMING.REQUEST_MODEL(Hash)
        while not STREAMING.HAS_MODEL_LOADED(Hash) do ctveh:yield() end
        CreateVehicle_rlt = VEHICLE.CREATE_VEHICLE(Hash, Pos.x,Pos.y,Pos.z, Heading , true, true, true)
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(Hash)
        if Invincible then
            ENTITY.SET_ENTITY_INVINCIBLE(SpawnedVehicle, true)
        end
        return CreateVehicle_rlt
    end)
end

function MCprintspl()
    log.info("可卡因 原材料库存: "..stats.get_int("MPX_MATTOTALFORFACTORY0").."%")
    log.info("大麻 原材料库存: "..stats.get_int("MPX_MATTOTALFORFACTORY1").."%")
    log.info("冰毒 原材料库存: "..stats.get_int("MPX_MATTOTALFORFACTORY2").."%")
    log.info("假钞 原材料库存: "..stats.get_int("MPX_MATTOTALFORFACTORY3").."%")
    log.info("假证 原材料库存: "..stats.get_int("MPX_MATTOTALFORFACTORY4").."%")
    log.info("地堡 原材料库存: "..stats.get_int("MPX_MATTOTALFORFACTORY5").."%")
    log.info("致幻剂 原材料库存: "..stats.get_int("MPX_MATTOTALFORFACTORY6").."%")
end

function delete_entity(ent)  --discord@rostal315
    if ENTITY.DOES_ENTITY_EXIST(ent) then
        ENTITY.DETACH_ENTITY(ent, true, true)
        ENTITY.SET_ENTITY_VISIBLE(ent, false, false)
        NETWORK.NETWORK_SET_ENTITY_ONLY_EXISTS_FOR_PARTICIPANTS(ent, true)
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ent, 0.0, 0.0, -1000.0, false, false, false)
        ENTITY.SET_ENTITY_COLLISION(ent, false, false)
        ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, true, true)
        ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(ent)
        ENTITY.DELETE_ENTITY(ent)
    end
end

allbodyguardtable = {} --保镖NPC表

function npc2bodyguard(peds_func) --将NPC设置为自己的保镖
    if math.random(0, 100) > 50 then
        WEAPON.GIVE_WEAPON_TO_PED(peds_func, joaat("WEAPON_MICROSMG"), 9999, false, true)
    else
    --WEAPON.GIVE_WEAPON_TO_PED(peds_func, joaat("WEAPON_CARBINERIFLE_MK2"), 9999, false, true)
    WEAPON.GIVE_WEAPON_TO_PED(peds_func, joaat("WEAPON_RAILGUNXM3"), 1, false, true)
    end
    WEAPON.SET_PED_INFINITE_AMMO(peds_func, true, joaat("WEAPON_RAILGUNXM3"))
    PED.SET_PED_AS_GROUP_MEMBER(peds_func, PED.GET_PED_GROUP_INDEX(PLAYER.PLAYER_PED_ID()))
    PED.SET_PED_RELATIONSHIP_GROUP_HASH(peds_func, PED.GET_PED_RELATIONSHIP_GROUP_HASH(PLAYER.PLAYER_PED_ID()))
    PED.SET_PED_NEVER_LEAVES_GROUP(peds_func, true)
    PED.SET_CAN_ATTACK_FRIENDLY(peds_func, false, true)
    PED.SET_PED_COMBAT_ABILITY(peds_func, 2)
    PED.SET_PED_CAN_TELEPORT_TO_GROUP_LEADER(peds_func, PED.GET_PED_GROUP_INDEX(PLAYER.PLAYER_PED_ID()), true)
    PED.SET_PED_FLEE_ATTRIBUTES(peds_func, 512, true)
    PED.SET_PED_FLEE_ATTRIBUTES(peds_func, 1024, true)
    PED.SET_PED_FLEE_ATTRIBUTES(peds_func, 2048, true)
    PED.SET_PED_FLEE_ATTRIBUTES(peds_func, 16384, true)
    PED.SET_PED_FLEE_ATTRIBUTES(peds_func, 131072, true)
    PED.SET_PED_FLEE_ATTRIBUTES(peds_func, 262144, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(peds_func, 5, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(peds_func, 12, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(peds_func, 13, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(peds_func, 21, false)
    PED.SET_PED_COMBAT_ATTRIBUTES(peds_func, 27, true)
    PED.SET_PED_COMBAT_ATTRIBUTES(peds_func, 58, true)
    PED.SET_PED_CONFIG_FLAG(peds_func, 394, true)
    PED.SET_PED_CONFIG_FLAG(peds_func, 400, true)
    PED.SET_PED_CONFIG_FLAG(peds_func, 134, true)
    PED.SET_PED_CAN_RAGDOLL(peds_func, false)
    PED.SET_PED_SHOOT_RATE(peds_func, 1000)
    PED.SET_PED_ACCURACY(peds_func,100)
    TASK.TASK_COMBAT_HATED_TARGETS_AROUND_PED(peds_func, 100, 67108864)
    ENTITY.SET_ENTITY_HEALTH(peds_func,1000,0,0)
    HUD.SET_PED_HAS_AI_BLIP_WITH_COLOUR(peds_func, true, 3)
    HUD.SET_PED_AI_BLIP_SPRITE(peds_func, 270)
    table.insert(allbodyguardtable,peds_func)
end

function writebodyguardtable()
    NPCguardTableTab:clear()
    NPCguardTableTab:add_button("Refresh Bodyguard NPC List", function()
        writebodyguardtable()
    end)
    NPCguardTableTab:add_sameline()
    NPCguardTableTab:add_button("Empty the bodyguard NPC list", function()
        allbodyguardtable = {}
    end)
    local selfpos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true)

    local npcguard_list_index = 1
    for _, guard_ped_id in pairs(allbodyguardtable) do
        NPCguardTableTab:add_text(guard_ped_id)
        NPCguardTableTab:add_sameline()
        local ped_pos = ENTITY.GET_ENTITY_COORDS(guard_ped_id, true)
        local npcdist = calcDistance(selfpos,ped_pos)
        formattednpcDistance = string.format("%.1f", npcdist)
        local npc_t_health = ENTITY.GET_ENTITY_HEALTH(guard_ped_id)
        NPCguardTableTab:add_text(guard_ped_id.." distance: "..formattednpcDistance.." HP: "..npc_t_health)
        NPCguardTableTab:add_sameline()
        NPCguardTableTab:add_button("Teleport to "..npcguard_list_index, function()
            PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), ENTITY.GET_ENTITY_COORDS(guard_ped_id, true).x, ENTITY.GET_ENTITY_COORDS(guard_ped_id, true).y, ENTITY.GET_ENTITY_COORDS(guard_ped_id, true).z)
        end)
        NPCguardTableTab:add_sameline()
        NPCguardTableTab:add_button("Delete "..npcguard_list_index, function()
            request_control(guard_ped_id)
            delete_entity(guard_ped_id)
        end)
        NPCguardTableTab:add_sameline()
        NPCguardTableTab:add_button("Heal "..npcguard_list_index, function()
            request_control(guard_ped_id)
            ENTITY.SET_ENTITY_HEALTH(guard_ped_id,1000,0,0)
        end)
        NPCguardTableTab:add_sameline()
        NPCguardTableTab:add_button("Clone "..npcguard_list_index, function()
            request_control(guard_ped_id)
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(guard_ped_id, ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true).x, ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true).y, ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true).z, false, false, false)
        end)
        npcguard_list_index = npcguard_list_index + 1
    end
end

function writebodyguardhelitable()
    HeliTableTab:clear()
    HeliTableTab:add_button("Refresh Bodyguard Helicopter list", function()
        writebodyguardhelitable()
    end)
    HeliTableTab:add_sameline()
    HeliTableTab:add_button("Empty Bodyguard Helicopter list", function()
        heli_sp_table = {}
    end)
    local selfpos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true)
    local npcguardheli_list_index = 1
    for _, guard_veh_hd in pairs(heli_sp_table) do
        HeliTableTab:add_text(guard_veh_hd)
        HeliTableTab:add_sameline()
        local heli_pos = ENTITY.GET_ENTITY_COORDS(guard_veh_hd, true)
        local npcdist = calcDistance(selfpos,heli_pos)
        formattednpcDistance = string.format("%.1f", npcdist)
        HeliTableTab:add_text(guard_veh_hd.." distance: "..formattednpcDistance)
        HeliTableTab:add_sameline()
        HeliTableTab:add_button("Teleport to "..npcguardheli_list_index, function()
            if not VEHICLE.IS_VEHICLE_SEAT_FREE(guarddrvped, -1, 0) then
                guarddrvped = VEHICLE.GET_PED_IN_VEHICLE_SEAT(guard_veh_hd, -1, false)
                TASK.CLEAR_PED_TASKS_IMMEDIATELY(guarddrvped)
            end
            PED.SET_PED_INTO_VEHICLE(PLAYER.PLAYER_PED_ID(), guard_veh_hd, -1)
        end)
        HeliTableTab:add_sameline()
        HeliTableTab:add_button("Delete "..npcguardheli_list_index, function()
            request_control(guard_veh_hd)
            delete_entity(guard_veh_hd)
        end)
        HeliTableTab:add_sameline()
        HeliTableTab:add_button("Clone "..npcguardheli_list_index, function()
            request_control(guard_veh_hd)
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(guard_veh_hd, ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true).x, ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true).y, ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true).z + 20, false, false, false)
        end)
        npcguardheli_list_index = npcguardheli_list_index + 1
    end
end

function createplayertable()  --获取当前玩家表，由于yimmenu没有像stand那样的API，只能自己模仿一个，这是玩家瞄准自动反击的基础
    player_Index_table = {}
    for i = 0, 32 do
        if PLAYER.GET_PLAYER_PED(i) ~= 0 then
            table.insert(player_Index_table,i)
        end
    end
end

function writeplayertable()
    PlayerTableTab:clear()
    PlayerTableTab:add_button("Refresh Player list", function()
        writeplayertable()
    end)
    PlayerTableTab:add_text("The player list is for the players reaction")

    createplayertable()
    for _, sg_player_id in pairs(player_Index_table) do
        PlayerTableTab:add_text(sg_player_id.." "..PLAYER.GET_PLAYER_NAME(sg_player_id))
        PlayerTableTab:add_sameline()
        PlayerTableTab:add_button("Place holder"..sg_player_id, function()
        end)
    end
end

function createobjtable()
    obj_handle_table = {}
    local objtable = entities.get_all_objects_as_handles()
    for _, objs in pairs(objtable) do
        local selfpos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true)
        local obj_pos = ENTITY.GET_ENTITY_COORDS(objs, true)
        if calcDistance(selfpos, obj_pos) <= 200 then
            table.insert(obj_handle_table,objs)
        end
    end
end

function writeobjtable()
    ObjTableTab:clear()
    ObjTableTab:add_button("Refresh object list", function()
        writeobjtable()
    end)
    createobjtable()
    local selfpos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true)
    local obj_list_index = 1
    for _, obj_id in pairs(obj_handle_table) do
        local obj_pos = ENTITY.GET_ENTITY_COORDS(obj_id, true)
        local objdist = calcDistance(selfpos,obj_pos)
        formattedobjdistance = string.format("%.1f", objdist)
        local objmod = ENTITY.GET_ENTITY_MODEL(obj_id)
        if objmod == 2202227855 or objmod == 3105373629 then
            ObjTableTab:add_text(obj_id.." Model: "..objmod.." Distance: "..formattedobjdistance.." Potential task entities")
        else
            ObjTableTab:add_text(obj_id.." Model: "..objmod.." Distance: "..formattedobjdistance)
        end
        ObjTableTab:add_sameline()
        ObjTableTab:add_button("Send"..obj_list_index, function()
            PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), ENTITY.GET_ENTITY_COORDS(obj_id, true).x, ENTITY.GET_ENTITY_COORDS(obj_id, true).y, ENTITY.GET_ENTITY_COORDS(obj_id, true).z)
        end)
        ObjTableTab:add_sameline()
        ObjTableTab:add_button("Delete"..obj_list_index, function()
            request_control(obj_id)
            delete_entity(obj_id)
        end)
        obj_list_index = obj_list_index + 1
    end
end

function createpedtable()
    ped_handle_table = {}
    local pedtable = entities.get_all_peds_as_handles()
    for _, peds in pairs(pedtable) do
        local selfpos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true)
        local ped_pos = ENTITY.GET_ENTITY_COORDS(peds, false)
        if calcDistance(selfpos, ped_pos) <= 200 and peds ~= PLAYER.PLAYER_PED_ID() and PED.IS_PED_A_PLAYER(peds) == false and ENTITY.GET_ENTITY_HEALTH(peds) > 0 then
            table.insert(ped_handle_table,peds)
        end
    end
end

function writepedtable()
    NPCTableTab:clear()
    NPCTableTab:add_button("Refresh NPC List", function()
        writepedtable()
    end)
    createpedtable()
    local selfpos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true)
    local ped_list_index = 1
    for _, ped_id in pairs(ped_handle_table) do
        local ped_pos = ENTITY.GET_ENTITY_COORDS(ped_id, true)
        local npcdist = calcDistance(selfpos,ped_pos)
        formattednpcDistance = string.format("%.1f", npcdist)
        local npcblipsprite = HUD.GET_BLIP_SPRITE(HUD.GET_BLIP_FROM_ENTITY(ped_id))
        local npcblipcolor = HUD.GET_BLIP_COLOUR(HUD.GET_BLIP_FROM_ENTITY(ped_id))
        local npc_t_health = ENTITY.GET_ENTITY_HEALTH(ped_id)
        NPCTableTab:add_text(ped_id.." Distance: "..formattednpcDistance.." Blip: "..npcblipsprite.." Color: "..npcblipcolor.." HP: "..npc_t_health)
        NPCTableTab:add_sameline()
        NPCTableTab:add_button("Teleport to "..ped_list_index, function()
            PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), ENTITY.GET_ENTITY_COORDS(ped_id, true).x, ENTITY.GET_ENTITY_COORDS(ped_id, true).y, ENTITY.GET_ENTITY_COORDS(ped_id, true).z)
        end)
        NPCTableTab:add_sameline()
        NPCTableTab:add_button("Delete "..ped_list_index, function()
            request_control(ped_id)
            delete_entity(ped_id)
        end)
        NPCTableTab:add_sameline()
        NPCTableTab:add_button("Heal "..ped_list_index, function()
            request_control(ped_id)
            ENTITY.SET_ENTITY_HEALTH(ped_id,1000,0,0)
        end)
        ped_list_index = ped_list_index + 1
    end
end

function createvehtable()
    veh_handle_table = {}
    local vehtable = entities.get_all_vehicles_as_handles()
    for _, vehs in pairs(vehtable) do
        local selfpos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true)
        local veh_pos = ENTITY.GET_ENTITY_COORDS(vehs, true)
        if calcDistance(selfpos, veh_pos) <= npcctrlr:get_value() then
            table.insert(veh_handle_table,vehs)
        end
    end
end

function writevehtable()
    VehicleTableTab:clear()
    VehicleTableTab:add_button("Refresh vehicle List", function()
        writevehtable()
    end)
    createvehtable()
    local selfpos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true)
    local Veh_list_index = 1
    for _, t_veh_hd in pairs(veh_handle_table) do
        local veh_pos = ENTITY.GET_ENTITY_COORDS(t_veh_hd, true)
        local vehdist = calcDistance(selfpos,veh_pos)
        formattedvehDistance = string.format("%.1f", vehdist)
        local vehblipsprite = HUD.GET_BLIP_SPRITE(HUD.GET_BLIP_FROM_ENTITY(t_veh_hd))
        local vehblipcolor = HUD.GET_BLIP_COLOUR(HUD.GET_BLIP_FROM_ENTITY(t_veh_hd))
        local veh_t_health = ENTITY.GET_ENTITY_HEALTH(t_veh_hd)
        local veh_mod_name = VEHICLE.GET_DISPLAY_NAME_FROM_VEHICLE_MODEL(ENTITY.GET_ENTITY_MODEL(t_veh_hd))
        local veh_disp_name = HUD.GET_FILENAME_FOR_AUDIO_CONVERSATION(veh_mod_name)
        VehicleTableTab:add_text("Handle:"..t_veh_hd.." model:"..veh_mod_name.." name:"..veh_disp_name.." distance:"..formattedvehDistance.." Blip:"..vehblipsprite.." Color:"..vehblipcolor.." HP:"..veh_t_health)
        VehicleTableTab:add_sameline()
        VehicleTableTab:add_button("Delete "..Veh_list_index, function()
            request_control(t_veh_hd)
            delete_entity(t_veh_hd)
        end)
        VehicleTableTab:add_sameline()
        VehicleTableTab:add_button("Teleport into "..Veh_list_index, function()
            request_control(t_veh_hd)
            PED.SET_PED_INTO_VEHICLE(PLAYER.PLAYER_PED_ID(), t_veh_hd, -1)
        end)
        VehicleTableTab:add_sameline()
        VehicleTableTab:add_button("Teleport to"..Veh_list_index, function()
            PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), ENTITY.GET_ENTITY_COORDS(t_veh_hd, true).x, ENTITY.GET_ENTITY_COORDS(t_veh_hd, true).y, ENTITY.GET_ENTITY_COORDS(t_veh_hd, true).z)
        end)
        VehicleTableTab:add_sameline()
        VehicleTableTab:add_button("Destroy the engine"..Veh_list_index, function()
            request_control(t_veh_hd)
            VEHICLE.SET_VEHICLE_ENGINE_HEALTH(t_veh_hd, -4000)
        end)
        VehicleTableTab:add_sameline()
        VehicleTableTab:add_button("Throw "..Veh_list_index, function()
            request_control(t_veh_hd)
            ENTITY.APPLY_FORCE_TO_ENTITY(t_veh_hd, 1, math.random(0, 3), math.random(0, 3), math.random(-10, 10), 0.0, 0.0, 0.0, 0, true, false, true, false, true)
        end)
        Veh_list_index = Veh_list_index + 1
    end
end

plyaimkarma = {}

function Is_Player_Aimming_Me()
    for _, playerPid in pairs(player_Index_table) do
        if PLAYER.IS_PLAYER_TARGETTING_ENTITY(playerPid, PLAYER.PLAYER_PED_ID()) or PLAYER.IS_PLAYER_FREE_AIMING_AT_ENTITY(playerPid, PLAYER.PLAYER_PED_ID()) then
            plyaimkarma = {karmaped = PLAYER.GET_PLAYER_PED(playerPid), karmaplyindex = playerPid}
            return true
        end
    end
    plyaimkarma = nil
    return false
end

function Is_NPC_H(peds)
   if (PED.GET_RELATIONSHIP_BETWEEN_PEDS(peds, PLAYER.PLAYER_PED_ID()) == 3 or PED.GET_RELATIONSHIP_BETWEEN_PEDS(peds, PLAYER.PLAYER_PED_ID()) == 4 or PED.GET_RELATIONSHIP_BETWEEN_PEDS(peds, PLAYER.PLAYER_PED_ID()) == 5 or HUD.GET_BLIP_COLOUR(HUD.GET_BLIP_FROM_ENTITY(peds)) == 1 or HUD.GET_BLIP_COLOUR(HUD.GET_BLIP_FROM_ENTITY(peds)) == 49 or ENTITY.GET_ENTITY_MODEL(peds) == joaat("S_M_Y_Swat_01") or ENTITY.GET_ENTITY_MODEL(peds) == joaat("S_M_Y_Cop_01") or ENTITY.GET_ENTITY_MODEL(peds) == joaat("S_F_Y_Cop_01") or ENTITY.GET_ENTITY_MODEL(peds) == joaat("S_M_Y_Sheriff_01") or ENTITY.GET_ENTITY_MODEL(peds) == joaat("S_F_Y_Sheriff_01")) then
        return true
    else
        return false
    end
end
--End SCH-Lua functions

griefPlayerTab:add_sameline()
griefPlayerTab:add_button("Fragment crash", function()
    script.run_in_fiber(function (fragcrash)
        if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then --避免目标离开战局后作用于自己
            gui.show_message("The attack has stopped","The target has been detected to have left or the target is himself")
            return
        end
        fraghash = joaat("prop_fragtest_cnst_04")
        STREAMING.REQUEST_MODEL(fraghash)
        local TargetCrds = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(network.get_selected_player()), false)
        local crashstaff1 = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
            OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(crashstaff1, 1, false)
        local crashstaff2 = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
            OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(crashstaff2, 1, false)
        local crashstaff3 = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
            OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(crashstaff3, 1, false)
        local crashstaff4 = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
            OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(crashstaff4, 1, false)
        for i = 0, 100 do
            if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then --避免目标离开战局后作用于自己
                gui.show_message("The attack has stopped","The target has been detected to have left or the target is himself")
                return
            end
            local TargetPlayerPos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(network.get_selected_player()), false)
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(crashstaff1, TargetPlayerPos.x, TargetPlayerPos.y, TargetPlayerPos.z, false, true, true)
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(crashstaff2, TargetPlayerPos.x, TargetPlayerPos.y, TargetPlayerPos.z, false, true, true)
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(crashstaff3, TargetPlayerPos.x, TargetPlayerPos.y, TargetPlayerPos.z, false, true, true)
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(crashstaff4, TargetPlayerPos.x, TargetPlayerPos.y, TargetPlayerPos.z, false, true, true)
            fragcrash:sleep(10)
            delete_entity(crashstaff1)
            delete_entity(crashstaff2)
            delete_entity(crashstaff3)
            delete_entity(crashstaff4)
        end
    end)
    script.run_in_fiber(function (fragcrash2)
        local TargetCrds = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(network.get_selected_player()), false)
        fraghash = joaat("prop_fragtest_cnst_04")
        STREAMING.REQUEST_MODEL(fraghash)
        for i=1,10 do
            if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then --避免目标离开战局后作用于自己
                gui.show_message("The attack has stopped","The target has been detected to have left or the target is himself")
                return
            end
            local object = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
            OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
            delete_entity(object)
            local object = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
            OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
            delete_entity(object)
            local object = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
            OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
            delete_entity(object)
            local object = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
            OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
            delete_entity(object)
            local object = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
            OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
            delete_entity(object)
            local object = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
            OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
            delete_entity(object)
            local object = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
            OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
            delete_entity(object)
            local object = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
            OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
            delete_entity(object)
            local object = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
            OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
            delete_entity(object)
            local object = OBJECT.CREATE_OBJECT(fraghash, TargetCrds.x, TargetCrds.y, TargetCrds.z, true, false, false)
            OBJECT.BREAK_OBJECT_FRAGMENT_CHILD(object, 1, false)
            fragcrash2:sleep(100)
            delete_entity(object)
        end
        sleep(2)
    end)
end)
toolTip(griefPlayerTab, "Spawns a bunch of objects on the selected player and breaks them into fragments, causing them to crash")

griefPlayerTab:add_sameline()
griefPlayerTab:add_button("Model crash", function()
    script.run_in_fiber(function (vtcrash)
        if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then --避免目标离开战局后作用于自己
            gui.show_message("The attack has stopped","The target has been detected to have left or the target is himself")
            return
        end
        local ship = {-1043459709, -276744698, 1861786828, -2100640717,}
        local pos117 = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(network.get_selected_player()), false)
        OBJECT.CREATE_OBJECT(0x9CF21E0F, pos117.x, pos117.y, pos117.z, true, true, false)
        for crash, value in pairs (ship) do
            local c = {}
            for i = 1, 10, 1 do
                if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then --避免目标离开战局后作用于自己
                    gui.show_message("The attack has stopped","The target has been detected to have left or the target is himself")
                    return
                end
                local pos2010 = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(network.get_selected_player()), false)
                local selfpos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true)
                if calcDistance(selfpos, pos2010) <= 100 then
                    gui.show_message("The attack has stopped","Please stay away from the target first")
                    return
                end
                c[crash] = CreateVehicle(value, pos2010, 0)
                if c[crash] then
                    ENTITY.SET_ENTITY_AS_MISSION_ENTITY(c[crash], true, false)
                    ENTITY.FREEZE_ENTITY_POSITION(c[crash])
                    ENTITY.SET_ENTITY_VISIBLE(c[crash], false, false)
                end
                delete_entity(c[crash])
            end
        end
        sleep(0.5)
    end)

    script.run_in_fiber(function (vtcrash3)
        if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then --避免目标离开战局后作用于自己
            gui.show_message("The attack has stopped","The target has been detected to have left or the target is himself")
            return
        end
        local mdl = joaat("mp_m_freemode_01")
        local veh_mdl = joaat("taxi")
        request_model(veh_mdl)
        request_model(mdl)
            for i = 1, 10 do
                local pos114 = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(network.get_selected_player()), false)
                local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(network.get_selected_player())
                if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then --避免目标离开战局后作用于自己
                    gui.show_message("The attack has stopped","The target has been detected to have left or the target is himself")
                    return
                end
                local selfpos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true)
                if calcDistance(selfpos, pos114) <= 100 then
                    gui.show_message("The attack has stopped","Please stay away from the target first")
                    return
                end
                local veh = CreateVehicle(veh_mdl, pos114, 0)
                local jesus = CreatePed(2, mdl, pos114, 0)
                if veh and jesus then
                    ENTITY.SET_ENTITY_VISIBLE(veh, false, false)
                    ENTITY.SET_ENTITY_VISIBLE(jesus, false, false)
                    PED.SET_PED_INTO_VEHICLE(jesus, veh, -1)
                    PED.SET_PED_COMBAT_ATTRIBUTES(jesus, 46, true)
                    PED.SET_PED_COMBAT_RANGE(jesus, 4)
                    PED.SET_PED_COMBAT_ABILITY(jesus, 3)
                    vtcrash3:sleep(100)
                    TASK.TASK_VEHICLE_HELI_PROTECT(jesus, veh, ped, 10.0, 0, 10, 0, 0)
                    vtcrash3:sleep(1000)
                    delete_entity(jesus)
                    delete_entity(veh)
                end
            end
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(mdl)
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(veh_mdl)
        sleep(0.5)
    end)

    script.run_in_fiber(function (vtcrash2)
        for i = 1, 10, 1 do
            if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then --避免目标离开战局后作用于自己
                gui.show_message("The attack has stopped","The target has been detected to have left or the target is himself")
                return
            end
            local anim_dict = "anim@mp_player_intupperstinker"
            STREAMING.REQUEST_ANIM_DICT(anim_dict)
            while not STREAMING.HAS_ANIM_DICT_LOADED(anim_dict) do
                vtcrash2:yield()
            end
        local pos115 = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(network.get_selected_player()), false)
        local selfpos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true)
        if calcDistance(selfpos, pos115) <= 300 then
            gui.show_message("The attack has stopped","Please stay away from the target first")
            return
        end
        local ped = PED.CREATE_RANDOM_PED(pos115.x, pos115.y, pos115.z+10)
        ENTITY.SET_ENTITY_VISIBLE(ped, false, false)
        ENTITY.FREEZE_ENTITY_POSITION(ped, true)
        PED.SET_PED_COMBAT_ATTRIBUTES(ped, 46, true)
        PED.SET_PED_COMBAT_RANGE(ped, 4)
        PED.SET_PED_COMBAT_ABILITY(ped, 3)
        for i = 1, 10 do
            if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then --避免目标离开战局后作用于自己
                gui.show_message("The attack has stopped","The target has been detected to have left or the target is himself")
                return
            end
            local pos116 = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(network.get_selected_player()), false)
            local selfpos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true)
            if calcDistance(selfpos, pos116) <= 300 then
                gui.show_message("The attack has stopped","Please stay away from the target first")
                return
            end
            ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, pos116.x, pos116.y, pos116.z+5, true, true, true)
            TASK.TASK_SWEEP_AIM_POSITION(ped, anim_dict, "Y", "M", "T", -1, 0.0, 0.0, 0.0, 0.0, 0.0)
            vtcrash2:sleep(1000)
            TASK.CLEAR_PED_TASKS_IMMEDIATELY(ped)
        end
        delete_entity(ped)
        vtcrash2:sleep(750)
        end
        sleep(2)
    end)
end)
toolTip(griefPlayerTab, "Crashes the player using 3 invalid model methods (Will cause severe lag, stand as far away from them as possible!)")

griefPlayerTab:add_sameline()
griefPlayerTab:add_button("Break HUD", function()
     pid = network.get_selected_player()
    network.trigger_script_event(1 << pid, {1450115979, pid, 1})
    gui.show_message("HUD Breaker", "You have broken "..PLAYER.GET_PLAYER_NAME(pid).."'s HUD and Interiors.")
    gui.show_message("HUD Breaker", "This causes them to have no HUD and also cannot see interior entry points, they can't pause or switch weapons either.")
end)
toolTip(griefPlayerTab, "Removes and breaks the HUD of the selected player, this causes them to not be able to pause, enter apartments and ruins their freemode missions")

griefPlayerTab:add_separator()
griefPlayerTab:add_text("Cage Options")

griefPlayerTab:add_button("Small Cage", function()
    script.run_in_fiber(function (smallcage)
        local objHash = joaat("prop_gold_cont_01")
        STREAMING.REQUEST_MODEL(objHash)
        while not STREAMING.HAS_MODEL_LOADED(objHash) do
            smallcage:yield()
        end
        local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(network.get_selected_player()), false)
        local obj = OBJECT.CREATE_OBJECT(objHash, pos.x, pos.y, pos.z-1, true, true, false)

        net_id = NETWORK.OBJ_TO_NET(objHash)
        NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(net_id, true)

        ENTITY.FREEZE_ENTITY_POSITION(obj, true)
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(objHash)
    end)
end)
toolTip(griefPlayerTab, "Cages the player with a small cage")

griefPlayerTab:add_sameline()

griefPlayerTab:add_button("Fence Cage", function()
    script.run_in_fiber(function(fenceCage)
        local objHash = joaat("prop_fnclink_03e")
        STREAMING.REQUEST_MODEL(objHash)

        local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(network.get_selected_player()), false)

        pos.z = pos.z - 1.0
        local object = {}

        object[1] = OBJECT.CREATE_OBJECT(objHash, pos.x - 1.5, pos.y + 1.5, pos.z,true, 1, 0)
        object[2] = OBJECT.CREATE_OBJECT(objHash, pos.x - 1.5, pos.y - 1.5, pos.z,true, 1, 0)

        object[3] = OBJECT.CREATE_OBJECT(objHash, pos.x + 1.5, pos.y + 1.5, pos.z,true, 1, 0)
        local rot_3 = ENTITY.GET_ENTITY_ROTATION(object[3], 2)
        rot_3.z = -90.0
        ENTITY.SET_ENTITY_ROTATION(object[3], rot_3.x, rot_3.y, rot_3.z, 1, true)

        object[4] = OBJECT.CREATE_OBJECT(objHash, pos.x - 1.5, pos.y + 1.5, pos.z,true, 1, 0)
        local rot_4 = ENTITY.GET_ENTITY_ROTATION(object[4], 2)
        rot_4.z = -90.0
        ENTITY.SET_ENTITY_ROTATION(object[4], rot_4.x, rot_4.y, rot_4.z, 1, true)
        ENTITY.IS_ENTITY_STATIC(object[1])
        ENTITY.IS_ENTITY_STATIC(object[2])
        ENTITY.IS_ENTITY_STATIC(object[3])
        ENTITY.IS_ENTITY_STATIC(object[4])
        ENTITY.SET_ENTITY_CAN_BE_DAMAGED(object[1], false)
        ENTITY.SET_ENTITY_CAN_BE_DAMAGED(object[2], false)
        ENTITY.SET_ENTITY_CAN_BE_DAMAGED(object[3], false)
        ENTITY.SET_ENTITY_CAN_BE_DAMAGED(object[4], false)

        net_id = NETWORK.OBJ_TO_NET(objHash)
        NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(net_id, true)

        for i = 1, 4 do ENTITY.FREEZE_ENTITY_POSITION(object[i], true) end
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(objHash)
    end)
end)
toolTip(griefPlayerTab, "Cages the player using fences")
griefPlayerTab:add_sameline()

griefPlayerTab:add_button("Tube Cage", function()
    script.run_in_fiber(function (dubcage)
        local objHash = joaat("stt_prop_stunt_tube_s")
        local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(network.get_selected_player()), false)
        STREAMING.REQUEST_MODEL(objHash)
        while not STREAMING.HAS_MODEL_LOADED(objHash) do
            dubcage:sleep(100)
        end
        local cage_object = OBJECT.CREATE_OBJECT(objHash, pos.x, pos.y, pos.z-5, true, true, false)
        local rot  = ENTITY.GET_ENTITY_ROTATION(cage_object)
        rot.y = 90
        ENTITY.SET_ENTITY_ROTATION(cage_object, rot.x,rot.y,rot.z,1,true)
        rot.x = 90

        net_id = NETWORK.OBJ_TO_NET(objHash)
        NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(net_id, true)
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(objHash)
    end)
end)
toolTip(griefPlayerTab, "Cages the player with a stunt tube")
griefPlayerTab:add_sameline()

griefPlayerTab:add_button("Safe cage", function()
    script.run_in_fiber(function(safecage)
        local pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED(network.get_selected_player()), false)
        local objHash = joaat("p_v_43_safe_s")
        STREAMING.REQUEST_MODEL(objHash)
        while not STREAMING.HAS_MODEL_LOADED(objHash) do
            STREAMING.REQUEST_MODEL(objHash)
            safecage:yield()
        end
        local objectsfcage = {}
        objectsfcage[1] = OBJECT.CREATE_OBJECT(objHash, pos.x - 0.9, pos.y, pos.z - 1, true, true, false)
        objectsfcage[2] = OBJECT.CREATE_OBJECT(objHash, pos.x + 0.9, pos.y, pos.z - 1, true, true, false)
        objectsfcage[3] = OBJECT.CREATE_OBJECT(objHash, pos.x, pos.y + 0.9, pos.z - 1, true, true, false)
        objectsfcage[4] = OBJECT.CREATE_OBJECT(objHash, pos.x, pos.y - 0.9, pos.z - 1, true, true, false)
        objectsfcage[5] = OBJECT.CREATE_OBJECT(objHash, pos.x - 0.9, pos.y, pos.z + 0.4 , true, true, false)
        objectsfcage[6] = OBJECT.CREATE_OBJECT(objHash, pos.x + 0.9, pos.y, pos.z + 0.4, true, true, false)
        objectsfcage[7] = OBJECT.CREATE_OBJECT(objHash, pos.x, pos.y + 0.9, pos.z + 0.4, true, true, false)
        objectsfcage[8] = OBJECT.CREATE_OBJECT(objHash, pos.x, pos.y - 0.9, pos.z + 0.4, true, true, false)
        for i = 1, 8 do ENTITY.FREEZE_ENTITY_POSITION(objectsfcage[i], true) end
        safecage:sleep(100)
        net_id = NETWORK.OBJ_TO_NET(objHash)
        NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(net_id, true)
        STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(objHash)
    end)
end)
toolTip(griefPlayerTab, "Cages the player inside of a box of combination safes")
griefPlayerTab:add_sameline()
-- end sch-lua

griefPlayerTab:add_button("420 Cage", function()
    script.run_in_fiber(function(weedcage)
        local playerPed = PLAYER.GET_PLAYER_PED(network.get_selected_player())
        local pos = ENTITY.GET_ENTITY_COORDS(playerPed, false)

        local objHash = joaat("bkr_prop_weed_lrg_01a")
        STREAMING.REQUEST_MODEL(objHash)
        while not STREAMING.HAS_MODEL_LOADED(objHash) do
            STREAMING.REQUEST_MODEL(objHash)
            weedcage:yield()
        end
        local objectsfcage = {}
        request_control(playerPed)
        ENTITY.FREEZE_ENTITY_POSITION(playerPed, true)
        objectsfcage[1] = OBJECT.CREATE_OBJECT(objHash, pos.x - 0.75, pos.y, pos.z - 3.5, true, true, false)
        objectsfcage[2] = OBJECT.CREATE_OBJECT(objHash, pos.x + 0.75, pos.y, pos.z - 3.5, true, true, false)
        objectsfcage[3] = OBJECT.CREATE_OBJECT(objHash, pos.x, pos.y + 0.75, pos.z - 3.5, true, true, false)
        objectsfcage[4] = OBJECT.CREATE_OBJECT(objHash, pos.x, pos.y - 0.75, pos.z - 3.5, true, true, false)
       --objectsfcage[5] = OBJECT.CREATE_OBJECT(objHash, pos.x - 0.4, pos.y, pos.z + 0.4 , true, true, false)
       --objectsfcage[6] = OBJECT.CREATE_OBJECT(objHash, pos.x + 0.4, pos.y, pos.z + 0.4, true, true, false)
       --objectsfcage[7] = OBJECT.CREATE_OBJECT(objHash, pos.x, pos.y + 0.4, pos.z + 0.4, true, true, false)
       --objectsfcage[8] = OBJECT.CREATE_OBJECT(objHash, pos.x, pos.y - 0.4, pos.z + 0.4, true, true, false)
        objectsfcage[9] = OBJECT.CREATE_OBJECT(objHash, pos.x, pos.y, pos.z - 1.5, true, true, false)
        for i = 1, 9 do
            ENTITY.FREEZE_ENTITY_POSITION(objectsfcage[i], true)
            weedcage:sleep(.2)
            net_id = NETWORK.OBJ_TO_NET(objectsfcage[i])
            NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(net_id, true)
            STREAMING.SET_MODEL_AS_NO_LONGER_NEEDED(objectsfcage[i])

            --weedcage:sleep(.2)
        end
        --weedcage:sleep(200)

    end)
end)
toolTip(griefPlayerTab, "Cages the player inside of a wall of giant weed plants")

-- Grief Sound Spam Targetable
griefPlayerTab:add_separator()
griefPlayerTab:add_text("Sound Spams")
 soundIndex = 0
 isPlaying = false

 searchQuery = ""
 filteredSoundNames = {}
 selectedFilteredSoundIndex = 0

 function updateFilteredSoundNames()
    filteredSoundNames = {}
    for _, sound in ipairs(sounds) do
        if string.find(string.lower(sound.SoundName), string.lower(searchQuery)) then
            table.insert(filteredSoundNames, sound.SoundName)
        end
    end
end

 function displaySoundNamesList()
    updateFilteredSoundNames()
    if selectedFilteredSoundIndex > #filteredSoundNames then
        selectedFilteredSoundIndex = 0
    end
    selectedFilteredSoundIndex, _ = ImGui.Combo("Select Sound", selectedFilteredSoundIndex, filteredSoundNames, #filteredSoundNames)
end

griefPlayerTab:add_imgui(function()
    if is_typing then
        PAD.DISABLE_ALL_CONTROL_ACTIONS(0)
    end
    searchQuery, _ = ImGui.InputText("Search Sounds", searchQuery, 128)
    if ImGui.IsItemActive() then
        is_typing = true
    else
        is_typing = false
    end

     soundNames = {}
    for _, sound in ipairs(sounds) do
        table.insert(soundNames, sound.SoundName)
    end

    displaySoundNamesList()

    if ImGui.Button("Play") then
         selectedSoundName = filteredSoundNames[selectedFilteredSoundIndex + 1]
         targetPlayer = network.get_selected_player()
            script.run_in_fiber(function()
                -- Play the selected sound
                local selectedSound
                for _, sound in ipairs(sounds) do
                    if sound.SoundName == selectedSoundName then
                        selectedSound = sound
                        break
                    end
                end
                soundId = AUDIO.PLAY_SOUND_FROM_ENTITY(-1, selectedSound.AudioName, PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(targetPlayer), selectedSound.AudioRef, true, 999999999)
                soundId = AUDIO.GET_SOUND_ID()
                gui.show_message("Sound Spam", "Playing "..selectedSound.SoundName.." on "..PLAYER.GET_PLAYER_NAME(targetPlayer))
                gui.show_message("Sound ID", soundId)
            end)
    end
end)
toolTip(griefPlayerTab, "Plays the selected sound from the dropdown.")

griefPlayerTab:add_sameline()
griefPlayerTab:add_button("Stop Sounds", function()
    script.run_in_fiber(function(script)
        for i = -1, 25 do
            AUDIO.STOP_SOUND(i)
            AUDIO.RELEASE_SOUND_ID(i)
            AUDIO.PLAY_SOUND_FROM_ENTITY(i, "SELECT", PLAYER.PLAYER_PED_ID(), "HUD_FRONTEND_DEFAULT_SOUNDSET", true, 0)
        end
    end)
end)

toolTip(griefPlayerTab, "Halts all sounds.")

griefPlayerTab:add_imgui(function()
    -- Ends the ImGui wrapper, new additions should be added above this.
    ImGui.End()
end)

dropsPlayerTab:add_imgui(function()
        ImGui.PushStyleColor(ImGuiCol.TitleBgCollapsed, 0.0, 0.5, 0.0, 1) -- Adjust the color as needed
        ImGui.PushStyleColor(ImGuiCol.WindowBg, 0.0, 0.5, 0.0, 1) -- Adjust the Window background color
        self = PLAYER.GET_PLAYER_NAME(PLAYER.PLAYER_ID())
        selPlayer = PLAYER.GET_PLAYER_NAME(network.get_selected_player())
        if selPlayer == "**Invalid**" then
            selPlayer = "Self"
        end
        if selPlayer == self then
            selPlayer = "Self"
        end
        
        ImGui.SetNextWindowPos(765, 12, ImGuiCond.FirstUseEver)
        ImGui.SetNextWindowCollapsed(true, ImGuiCond.FirstUseEver)
        
        ImGui.Begin("Zephyr (Drop Options) - Target: ".. selPlayer, flags)
            -- Sets a new window for the options below, theres a wrapper for ImGui.End() at the bottom of the options.
end)

dropsPlayerTab:add_text("Action Figures")
prLoop = dropsPlayerTab:add_checkbox("Princess Robot Bubblegum (On/Off)")
    script.register_looped("princessbubblegumLoop", function(script)
        if prLoop:is_enabled() then
        if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then
                gui.show_message("Princess Robot Figurines","Stopped, player has left the session.")
                prLoop:set_enabled(false)
                return
            end
             model = joaat("vw_prop_vw_colle_prbubble")
             pickup = joaat("PICKUP_CUSTOM_SCRIPT")
             player_id = network.get_selected_player()
             money_value = 0

            STREAMING.REQUEST_MODEL(model)
            while STREAMING.HAS_MODEL_LOADED(model) == false do
                script:yield()
            end

            if STREAMING.HAS_MODEL_LOADED(model) then
            gui.show_message("RP/Cash Drop Started", "Dropping Princess Robot figurines on "..PLAYER.GET_PLAYER_NAME(player_id))
                 coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(player_id), true)
                 objectIdSpawned = OBJECT.CREATE_AMBIENT_PICKUP(
                    pickup,
                    coords.x,
                    coords.y,
                    coords.z + 1,
                    3,
                    money_value,
                    model,
                    false,
                    false
                )

                net_id = NETWORK.OBJ_TO_NET(objectIdSpawned)
                NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(net_id, true)

                ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(objectIdSpawned)
            end
            ENTITY.SET_ENTITY_NO_COLLISION_ENTITY(objectIdSpawned, player_id, false)
            sleep(0.1) -- Sets the timer in seconds for how long this should pause before sending another figure
        end
    end)
toolTip(dropsPlayerTab, "Drops Princess Robot Figurines on a selected player.")

dropsPlayerTab:add_sameline()
alienLoop = dropsPlayerTab:add_checkbox("Alien (On/Off)")
    script.register_looped("alienfigurineLoop", function(script)
        if alienLoop:is_enabled() then
        if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then
                gui.show_message("Alien Figurines","Stopped, player has left the session.")
                alienLoop:set_enabled(false)
                return
            end
             model = joaat("vw_prop_vw_colle_alien")
             pickup = joaat("PICKUP_CUSTOM_SCRIPT")
             player_id = network.get_selected_player()
             money_value = 0

            STREAMING.REQUEST_MODEL(model)
            while STREAMING.HAS_MODEL_LOADED(model) == false do
                script:yield()
            end

            if STREAMING.HAS_MODEL_LOADED(model) then
            gui.show_message("RP/Cash Drop Started", "Dropping Alien figurines on "..PLAYER.GET_PLAYER_NAME(player_id))
                 coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(player_id), true)
                 objectIdSpawned = OBJECT.CREATE_AMBIENT_PICKUP(
                    pickup,
                    coords.x,
                    coords.y,
                    coords.z + 1,
                    3,
                    money_value,
                    model,
                    false,
                    false
                )

                 net_id = NETWORK.OBJ_TO_NET(objectIdSpawned)
                NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(objectIdSpawned, true)

                ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(objectIdSpawned)
            end
            ENTITY.SET_ENTITY_NO_COLLISION_ENTITY(objectIdSpawned, player_id, false)
            sleep(0.1) -- Sets the timer in seconds for how long this should pause before sending another figure
        end
    end)
toolTip(dropsPlayerTab, "Drops Alien Figurines on a selected player.")

cardsLoop = dropsPlayerTab:add_checkbox("Casino Cards (On/Off)")
    script.register_looped("casinocardsLoop", function(script)
        if cardsLoop:is_enabled() then
        if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then
                gui.show_message("Casino Cards","Stopped, player has left the session.")
                cardsLoop:set_enabled(false)
                return
            end
             model = joaat("vw_prop_vw_lux_card_01a")
             pickup = joaat("PICKUP_CUSTOM_SCRIPT")
             player_id = network.get_selected_player()
             money_value = 0

            STREAMING.REQUEST_MODEL(model)
            while STREAMING.HAS_MODEL_LOADED(model) == false do
                script:yield()
            end

            if STREAMING.HAS_MODEL_LOADED(model) then
            gui.show_message("RP/Cash Drop Started", "Dropping Casino Cards on "..PLAYER.GET_PLAYER_NAME(player_id))
                 coords = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(player_id), true)
                 objectIdSpawned = OBJECT.CREATE_AMBIENT_PICKUP(
                    pickup,
                    coords.x,
                    coords.y,
                    coords.z + 1,
                    3,
                    money_value,
                    model,
                    false,
                    false
                )

                 net_id = NETWORK.OBJ_TO_NET(objectIdSpawned)
                NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(objectIdSpawned, true)

                ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(objectIdSpawned)
            end
            ENTITY.SET_ENTITY_NO_COLLISION_ENTITY(objectIdSpawned, player_id, false)
            sleep(0.1) -- Sets the timer in seconds for how long this should pause before sending another figure
        end
    end)
toolTip(dropsPlayerTab, "Drops Casino Cards on a selected player.")

dropsPlayerTab:add_separator()
dropsPlayerTab:add_button("Give 25k & Random RP", function()
    script.run_in_fiber(function(tse)
        pid = network.get_selected_player()
        for i = 0, 9 do
            for v = 0, 20 do
                network.trigger_script_event(1 << pid, {968269233, pid, 0, i, v, v, v})
                for n = 0, 16 do
                    network.trigger_script_event(1 << pid, {968269233, pid, n, i, v, v, v})
                end
            end
            network.trigger_script_event(1 << pid, {968269233, pid, 1, i, 1, 1, 1})
            network.trigger_script_event(1 << pid, {968269233, pid, 3, i, 1, 1, 1})
            network.trigger_script_event(1 << pid, {968269233, pid, 10, i, 1, 1, 1})
            network.trigger_script_event(1 << pid, {968269233, pid, 0, i, 1, 1, 1})
            tse:yield()

            gui.show_message("Bless RP", "Blessing "..PLAYER.GET_PLAYER_NAME(pid).." with 25k RP (1 time)")
        end
    end)
end)
toolTip(dropsPlayerTab, "Gives the selected player some Money and RP")
dropsPlayerTab:add_sameline()
 tseTest = dropsPlayerTab:add_checkbox("Super Fast RP")
script.register_looped("tseTest", function()
    if tseTest:is_enabled() == true then
        pid = network.get_selected_player()
        if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then
            gui.show_message("Super Fast RP", "RP Stopped, player has left the session.")
            tseTest:set_enabled(false)
            return
        end
        for i = 0, 24 do
            network.trigger_script_event(1 << pid, {968269233 , pid, 1, 4, i, 1, 1, 1, 1})
        end
    end
end)
toolTip(dropsPlayerTab, "Remotely floods the selected player with RP (about 1 level/sec)")

dropsPlayerTab:add_sameline()
 ezMoney = dropsPlayerTab:add_checkbox("Money ($225k)")
    script.register_looped("ezMoney", function()
        if ezMoney:is_enabled() == true then
             pid = network.get_selected_player()
            if PLAYER.GET_PLAYER_PED(network.get_selected_player()) == PLAYER.PLAYER_PED_ID() then
                gui.show_message("Money ($225k)","Money Stopped, player has left the session.")
                ezMoney:set_enabled(false)
                return
            end
            for n = 0, 10 do
                for l = -10, 10 do
                    network.trigger_script_event(1 << pid, {968269233 , pid, 1, l, l, n, 1, 1, 1})
                end
            end
        end
    end)
toolTip(dropsPlayerTab, "Sometimes works, sometimes doesn't.  Up to 225k")

dropsPlayerTab:add_imgui(function()
    -- Ends the ImGui wrapper, new additions should be added above this.
    ImGui.End()
end)

settingsTab:add_separator()
chatOpt:add_text(""..caesar_decrypt(encodedTwo..": "..encoded, 3).."")
--[[
giftPlayerTab:add_imgui(function()
        ImGui.PushStyleColor(ImGuiCol.TitleBgCollapsed, 0.0, 0.0, 0.5, 1) -- Adjust the color as needed
        ImGui.PushStyleColor(ImGuiCol.WindowBg, 0.0, 0.0, 0.5, 1) -- Adjust the Window background color

        self = PLAYER.GET_PLAYER_NAME(PLAYER.PLAYER_ID())
        selPlayer = PLAYER.GET_PLAYER_NAME(network.get_selected_player())
        if selPlayer == "**Invalid**" then
            selPlayer = "Self"
        end
        if selPlayer == self then
            selPlayer = "Self"
        end
        
        ImGui.SetNextWindowPos(280, 48, ImGuiCond.FirstUseEver)
        ImGui.SetNextWindowCollapsed(true, ImGuiCond.FirstUseEver)
        
        if ImGui.Begin("Zephyr (Vehicle Options) - Target: ".. selPlayer, flags) then
            -- Sets a new window for the options below, theres a wrapper for ImGui.End() at the bottom of the options.
        end
end)

-- Orientation sliders and Spawn X Y Z sliders
vehicleOrientationPitch = 0
vehicleOrientationYaw = 0
vehicleOrientationRoll = 0
vehicleSpawnDistance = { x = 6, y = 6, z = 0 }
vehicleAlpha = 175
vehicleDefaultOrientationPitch = 0
vehicleDefaultOrientationYaw = 0
vehicleDefaultOrientationRoll = 0
vehicleDefaultSpawnDistance = { x = 6, y = 6, z = 0 }
vehicleDefaultAlpha = 175

-- Function to reset sliders to default values
function resetVehicleSliders()
    vehicleOrientationPitch = vehicleDefaultOrientationPitch
    vehicleOrientationYaw = vehicleDefaultOrientationYaw
    vehicleOrientationRoll = vehicleDefaultOrientationRoll
    vehicleSpawnDistance.x = vehicleDefaultSpawnDistance.x
    vehicleSpawnDistance.y = vehicleDefaultSpawnDistance.y
    vehicleSpawnDistance.z = vehicleDefaultSpawnDistance.z
    vehicleAlpha = vehicleDefaultAlpha
end

giftPlayerTab:add_imgui(function()
    vehicleOrientationPitch, _ = ImGui.SliderInt("Pitch", vehicleOrientationPitch, 0, 360)
    toolTip("", "Change the Pitch of the vehicle (Side to Side Axis)")
    vehicleOrientationYaw, _ = ImGui.SliderInt("Yaw", vehicleOrientationYaw, 0, 360)
    toolTip("", "Change the Yaw of the object (Vertical Axis)")
    vehicleOrientationRoll, _ = ImGui.SliderInt("Roll", vehicleOrientationRoll, 0, 360)
    toolTip("", "Change the Roll of the object (Front to Back Axis)")
end)

giftPlayerTab:add_imgui(function()
    vehicleSpawnDistance.x, _ = ImGui.SliderFloat("Spawn Distance X", vehicleSpawnDistance.x, -25, 25)
    toolTip("", "Change the X coordinates of where the object spawns (Left/Right depending on direction you are facing)")
    vehicleSpawnDistance.y, _ = ImGui.SliderFloat("Spawn Distance Y", vehicleSpawnDistance.y, -25, 25)
    toolTip("", "Change the Y coordinates of where the object spawns (Forward/Backwards depending on direction you are facing)")
    vehicleSpawnDistance.z, _ = ImGui.SliderFloat("Spawn Distance Z", vehicleSpawnDistance.z, -25, 25)
    toolTip("", "Change the Z coordinates of where the object spawns (Up/Down)")
    vehicleAlpha, _ = ImGui.SliderFloat("Transparency", vehicleAlpha, 0, 255)
    toolTip("", "Set the preview transparency")
end)

-- Save default values
vehicleDefaultOrientationPitch = vehicleOrientationPitch
vehicleDefaultOrientationYaw = vehicleOrientationYaw
vehicleDefaultOrientationRoll = vehicleOrientationRoll
vehicleDefaultSpawnDistance.x = vehicleSpawnDistance.x
vehicleDefaultSpawnDistance.y = vehicleSpawnDistance.y
vehicleDefaultSpawnDistance.z = vehicleSpawnDistance.z
vehicleDefaultAlpha = vehicleAlpha

-- Reset Sliders button
giftPlayerTab:add_button("Reset Sliders", function()
    resetVehicleSliders()
end)
toolTip(giftPlayerTab, "Reset the sliders to their default values")
giftPlayerTab:add_separator()
function max_vehicle(veh)
    script.run_in_fiber(function(maxM)
        VEHICLE.SET_VEHICLE_MOD_KIT(veh, 0)
        VEHICLE.TOGGLE_VEHICLE_MOD(veh, 18, true) -- MOD_TURBO
        VEHICLE.TOGGLE_VEHICLE_MOD(veh, 23, true) -- MOD_TYRE_SMOKE
        VEHICLE.TOGGLE_VEHICLE_MOD(veh, 22, true) -- MOD_XENON_LIGHTS
        VEHICLE.SET_VEHICLE_WINDOW_TINT(veh, 1)
        VEHICLE.SET_VEHICLE_TYRES_CAN_BURST(veh, false)

        for slot = 0, 20 do
            if slot ~= 48 and slot ~= customWheelsSlot then -- Exclude custom wheels slot
                local count = VEHICLE.GET_NUM_VEHICLE_MODS(veh, slot)
                if count > 0 then
                    local selected_mod = -1
                    for mod = count - 1, -1, -1 do
                        if not VEHICLE.IS_VEHICLE_MOD_GEN9_EXCLUSIVE(veh, slot, mod) then
                            selected_mod = mod
                            break
                        end
                    end

                    if selected_mod ~= -1 then
                        VEHICLE.SET_VEHICLE_MOD(veh, slot, selected_mod, true)
                    end
                end
            end
        end
        maxM:yield()
    end)
end


function max_vehicle_performance(veh)
script.run_in_fiber(function(maxP)
    if request_control(veh) then
        local performance_mods = {11, 12, 13, 15, 16, 18, 20} -- MOD_ENGINE, MOD_BRAKES, MOD_TRANSMISSION, MOD_SUSPENSION, MOD_ARMOR, MOD_NITROUS, MOD_TURBO
        VEHICLE.SET_VEHICLE_MOD_KIT(veh, 0)

        for _, mod_slot in ipairs(performance_mods) do
            if mod_slot ~= 18 and mod_slot ~= 20 then -- Exclude MOD_NITROUS and MOD_TURBO
                VEHICLE.SET_VEHICLE_MOD(veh, mod_slot, VEHICLE.GET_NUM_VEHICLE_MODS(veh, mod_slot) - 1, true)
            else
                VEHICLE.TOGGLE_VEHICLE_MOD(veh, mod_slot, true)
            end
        end
    end
    maxP:yield()
end)
end

function open_wheel(veh, wheelType, wheelStyle)
script.run_in_fiber(function(openW)
    if request_control(veh) then
        VEHICLE.SET_VEHICLE_MOD_KIT(veh, 0)
        local customWheelsSlot = 23
        -- 23 = Front Wheels, 24 = Rear Wheels (Used only for motorcycles)
            VEHICLE.TOGGLE_VEHICLE_MOD(veh, customWheelsSlot, true)
            VEHICLE.SET_VEHICLE_WHEEL_TYPE(veh, wheelType)
            VEHICLE.SET_VEHICLE_MOD(veh, customWheelsSlot, wheelStyle, true)
            VEHICLE.TOGGLE_VEHICLE_MOD(veh, 24, true)
            VEHICLE.SET_VEHICLE_WHEEL_TYPE(veh, 6)
            VEHICLE.SET_VEHICLE_MOD(veh, 24, wheelStyle, true)
    end
    openW:yield()
end)
end

selected_wheel_index = 0
selected_style_index = 0
wheelType = ""
wheelStyle = ""

function displayWheelSelection()
    ImGui.BeginGroup()
            ImGui.Text("Select a Wheel Type:")
            local wheel_types = {}
            for name, _ in pairs(wheelTypes) do
                table.insert(wheel_types, name)
            end
            ImGui.SetNextItemWidth(250)
            selected_wheel_index, changed = ImGui.ListBox(">", selected_wheel_index, wheel_types, #wheel_types + 1)
            if changed then
                local selected_wheel_name = wheel_types[selected_wheel_index + 1]
                local selected_wheel_value = wheelTypes[selected_wheel_name]
                if selected_wheel_value then
                    wheelType = selected_wheel_value -- Update wheelType variable
                    wheelName = selected_wheel_name
                    gui.show_message("Wheel Type", "You've selected "..wheelName.." now scroll down and select the style of wheel you want")
                end
            end
    ImGui.SameLine()
        -- Check if a wheel type is selected
        if wheelName ~= nil then
            -- Display the second listbox for wheel styles
            local wheel_styles = {} -- Assuming wheelStyles is a table containing styles for each wheel type
            for style, _ in pairs(wheelStyles[wheelName]) do
                table.insert(wheel_styles, style)
            end
            ImGui.SetNextItemWidth(250)
            selected_style_index, changed = ImGui.ListBox("Style", selected_style_index, wheel_styles, #wheel_styles + 1)
            if changed then
                local selected_style_name = wheel_styles[selected_style_index + 1]
                local selected_style_value = wheelStyles[wheelName][selected_style_name]
                wheelStyle = selected_style_value
                styleName = selected_style_name
                gui.show_message("Wheel Style", "Your custom wheels - \nType: "..wheelName.. "\nStyle: "..styleName.."\nhave been applied!"..wheelStyle)
            end
        end
    ImGui.EndGroup()
end

-- Function to display the list of vehicle models with search functionality
 searchQuery = ""
 filteredVehicleModels = {}

function updateFilteredVehicleModels()
    filteredVehicleModels = {}
    for _, model in ipairs(vehicleModels) do
        if string.find(string.lower(model), string.lower(searchQuery)) then
            table.insert(filteredVehicleModels, model)
        end
    end
end

function displayVehicleModelsList()
    updateFilteredVehicleModels()
     vehicleModelNames = {}
    for _, item in ipairs(filteredVehicleModels) do
        table.insert(vehicleModelNames, vehicles.get_vehicle_display_name(item))
    end
    selectedObjectIndex, _ = ImGui.ListBox("Vehicle Models", selectedObjectIndex, vehicleModelNames, #vehicleModelNames)
end

-- Add search input field
giftPlayerTab:add_imgui(function()
    if is_typing then
        PAD.DISABLE_ALL_CONTROL_ACTIONS(0)
    end
    searchQuery, _ = ImGui.InputText("Search Vehicles", searchQuery, 128)
    if ImGui.IsItemActive() then
        is_typing = true
    else
        is_typing = false
    end
end)
toolTip(giftPlayerTab, "Search for a vehicle (Example: Adder, Baller, Zentorno)")
giftPlayerTab:add_imgui(displayVehicleModelsList)
giftPlayerTab:add_separator()
giftPlayerTab:add_text("Vehicle Colors")

pColor = giftPlayerTab:add_checkbox("Primary Color", function() end)
giftPlayerTab:add_sameline()
sColor = giftPlayerTab:add_checkbox("Secondary Color", function() end)
giftPlayerTab:add_sameline()
pearlColor = giftPlayerTab:add_checkbox("Pearlescent", function() end)
giftPlayerTab:add_sameline()
wheel_color = giftPlayerTab:add_checkbox("Wheels", function() end)
primary = {}
giftPlayerTab:add_imgui(function()
    if pColor:is_enabled() then -- Only display the color picker if showColorPicker is true
        primary, used1 = ImGui.ColorPicker3("Primary Color", primary)
        if used1 then
            pR = math.floor(primary[1] * 255 + 0.5)
            pG = math.floor(primary[2] * 255 + 0.5)
            pB = math.floor(primary[3] * 255 + 0.5)

            gui.show_message("Primary Color", ""..pR.. ', '.. pG.. ', '.. pB)
        end
    end
end)

secondary = {}
giftPlayerTab:add_imgui(function()
    if sColor:is_enabled() then -- Only display the color picker if showColorPicker is true
        secondary, used2 = ImGui.ColorPicker3("Secondary Color", secondary)
        if used2 then
            sR = math.floor(secondary[1] * 255 + 0.5)
            sG = math.floor(secondary[2] * 255 + 0.5)
            sB = math.floor(secondary[3] * 255 + 0.5)

            gui.show_message("Secondary Color", "".. sR.. ', '.. sG.. ', '.. sB)
        end
    end
end)

-- Function to display Pearlescent color selection
selected_color_index = 0 -- Initialize to 0 since Lua indexing starts from 1
function displayColorSelection()
    ImGui.Text("Select a pearlescent color:")
    local color_names = {}
    for name, _ in pairs(allColors) do
        table.insert(color_names, name)
    end
    selected_color_index, changed = ImGui.ListBox("Pearlescent Color", selected_color_index, color_names, #color_names + 1) -- Add 1 to the length to account for Lua indexing
    if changed then
        local selected_color_name = color_names[selected_color_index + 1] -- Adjust the index by adding 1
        local selected_color_value = allColors[selected_color_name]
        if selected_color_value then
            pearlescent = selected_color_value
            gui.show_message("Pearlescent", selected_color_name)
        end
    end
end


-- Add ImGui function
giftPlayerTab:add_imgui(function()
    if pearlColor:is_enabled() then
        displayColorSelection()
    end
end)

selected_wheel_color_index = 0 -- Initialize to 0 since Lua indexing starts from 1
function displayWheelColorSelection()
    ImGui.Text("Select a wheel color:")
    local wheel_color_names = {}
    for name, _ in pairs(allWheelColors) do
        table.insert(wheel_color_names, name)
    end
    selected_wheel_color_index, changed = ImGui.ListBox("Wheel Color", selected_wheel_color_index, wheel_color_names, #wheel_color_names + 1) -- Add 1 to the length to account for Lua indexing
    if changed then
        local selected_wheel_color_name = wheel_color_names[selected_wheel_color_index + 1] -- Adjust the index by adding 1
        local selected_wheel_color_value = allWheelColors[selected_wheel_color_name]
        if selected_wheel_color_value then
            wheelColor = selected_wheel_color_value
            gui.show_message("Wheel color", selected_wheel_color_name)
            gui.show_message("Wheel Color", "Only works on upgraded wheels")
        end
    end
end

giftPlayerTab:add_imgui(function()
    if wheel_color:is_enabled() then
        displayWheelColorSelection()
    end
end)

-- Function to spawn the vehicle with specified orientation and spawn position
function spawn_veh_with_orientation(vehicle_joaat, pos, pitch, yaw, roll, p1, p2, p3, s1, s2, s3, pearl, wheels)
    script.run_in_fiber(function(script)
         load_counter = 0
        while STREAMING.HAS_MODEL_LOADED(vehicle_joaat) == false do
            STREAMING.REQUEST_MODEL(vehicle_joaat)
            script:yield()
            if load_counter > 100 then
                return
            else
                load_counter = load_counter + 1
            end
        end
         veh = VEHICLE.CREATE_VEHICLE(vehicle_joaat, pos.x, pos.y, pos.z, yaw, true, true, false)
        -- Set vehicle orientation
        ENTITY.SET_ENTITY_ROTATION(veh, pitch, yaw, roll, 1, true)
        VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(veh, p1, p2, p3)
        VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(veh, s1, s2, s3)
        if customWheels:is_enabled() then
            open_wheel(veh, wheelType, wheelStyle)
        end
        if spawnMaxed:is_enabled() then
            max_vehicle(veh)
            max_vehicle_performance(veh)
        end
        VEHICLE.SET_VEHICLE_EXTRA_COLOURS(veh, pearl, wheels)		
		VEHICLE.SET_VEHICLE_ENGINE_ON(veh, true, true, false)
		DECORATOR.DECOR_SET_INT(vehicle, "MPBitset", 0)
		VEHICLE.SET_VEHICLE_IS_STOLEN(vehicle, false)
		
		networkId = NETWORK.VEH_TO_NET(veh)
		if NETWORK.NETWORK_GET_ENTITY_IS_NETWORKED(veh) then
			NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(networkId, true)
		end
		
		if endPollution:is_enabled() then
            ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(veh) -- only use to cut spawned object/vehicle/ped pollution out of sessions, plans for this eventually.
        end
        --script:yield()
    end)
end

-- Add separator
giftPlayerTab:add_separator()
-- Spawn Selected vehicle button with orientation and spawn position
giftPlayerTab:add_button("Spawn Vehicle", function()
    script.run_in_fiber(function(spawnVeh)
    previewVehicles:set_enabled(false)
        selectedModelIndex = selectedObjectIndex + 1
        if selectedModelIndex > 0 then
            selectedVehicleModel = filteredVehicleModels[selectedModelIndex]
            if selectedVehicleModel then
                vehicleHash = MISC.GET_HASH_KEY(selectedVehicleModel)
                selPlayer = network.get_selected_player()
                targetPlayerPed = PLAYER.GET_PLAYER_PED(selPlayer)
                playerName = PLAYER.GET_PLAYER_NAME(selPlayer)
                playerHeading = ENTITY.GET_ENTITY_HEADING(playerPed)
                -- Get the player's forward vector
                playerForward = ENTITY.GET_ENTITY_FORWARD_VECTOR(targetPlayerPed)

                playerPos = ENTITY.GET_ENTITY_COORDS(targetPlayerPed, false)
                playerPos.x = playerPos.x + playerForward.x * vehicleSpawnDistance.x
                playerPos.y = playerPos.y + playerForward.y * vehicleSpawnDistance.y
                playerPos.z = playerPos.z + vehicleSpawnDistance.z

                spawn_veh_with_orientation(vehicleHash, playerPos, vehicleOrientationRoll, vehicleOrientationYaw, playerHeading + vehicleOrientationPitch, pR, pG, pB, sR, sG, sB, pearlescent, wheelColor)
                gui.show_message("Vehicle Spawner", "Spawned "..vehicles.get_vehicle_display_name(vehicleHash).." for "..playerName)
                
            end
        else
            gui.show_message("Vehicle Spawner", "Please select a vehicle model.")
        end
        -- Re-enable the preview checkbox after some time (if desired)
        --previewVehicles:set_enabled(true)
		spawnVeh:yield()
    end)
end)

-- Add a checkbox for enabling/disabling the vehicle preview
giftPlayerTab:add_sameline()
-- Define the checkbox for vehicle preview
previewVehicles = giftPlayerTab:add_checkbox("Preview")

-- Initialize variables for preview
previewSpawned = false
previewVehicle = nil
previousPreview = nil

-- Register a looped function to handle the vehicle preview
script.register_looped("vehiclesPreview", function(vehPreview)
    if not giftPlayerTab:is_selected() then
        previewVehicles:set_enabled(false)
    end
    if previewVehicles:is_enabled() then
        selectedVehicleModel = filteredVehicleModels[selectedObjectIndex + 1]

        if selectedVehicleModel then
            vehicleHash = MISC.GET_HASH_KEY(selectedVehicleModel)

            -- Get the player's ped handle
            playerPed = PLAYER.GET_PLAYER_PED(network.get_selected_player())

            -- Get the player's current position and orientation
            playerPos = ENTITY.GET_ENTITY_COORDS(playerPed, true)
            playerHeading = ENTITY.GET_ENTITY_HEADING(playerPed)
            forwardVector = ENTITY.GET_ENTITY_FORWARD_VECTOR(playerPed)

            -- Calculate the spawn distance and offset
             spawnOffsetX = vehicleSpawnDistance.x * forwardVector.x
             spawnOffsetY = vehicleSpawnDistance.y * forwardVector.y
             spawnOffsetZ = vehicleSpawnDistance.z
            -- Calculate the spawn position based on the offset
             spawnX = playerPos.x + spawnOffsetX
             spawnY = playerPos.y + spawnOffsetY
             spawnZ = playerPos.z + spawnOffsetZ -- Adjust the height if needed

            -- Spawn the vehicle preview
            while not STREAMING.HAS_MODEL_LOADED(vehicleHash) do
                STREAMING.REQUEST_MODEL(vehicleHash)
                coroutine.yield()
            end
            if previousPreview ~= nil then
            sleep(0.5)
                delete_entity(viewVehicle)
                delete_entity(previewVehicle)
                previewSpawned = false
                previewVehicle = nil
            end
            if not previewSpawned then
                viewVehicle = VEHICLE.CREATE_VEHICLE(vehicleHash, spawnX, spawnY, spawnZ, playerHeading, true, true, false)
                request_control(viewVehicle)
                ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(viewVehicle)
                ENTITY.SET_ENTITY_COORDS(vehicleHash, spawnX, spawnY, spawnZ, true, false, false, false)
                ENTITY.SET_ENTITY_ROTATION(viewVehicle, vehicleOrientationRoll, vehicleOrientationYaw, playerHeading + vehicleOrientationPitch, 2, true)
                ENTITY.SET_ENTITY_ALPHA(viewVehicle, vehicleAlpha, true)
                VEHICLE.SET_VEHICLE_MOD_KIT(viewVehicle, 0)
                VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(viewVehicle, pR, pG, pB)
                VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(viewVehicle, sR, sG, sB)
                VEHICLE.SET_VEHICLE_EXTRA_COLOURS(viewVehicle, pearlescent, wheelColor)
                ENTITY.FREEZE_ENTITY_POSITION(viewVehicle)
                open_wheel(viewVehicle, wheelType, wheelStyle)
                
                if spawnMaxed:is_enabled() then
                    max_vehicle(viewVehicle)
                    max_vehicle_performance(viewVehicle)
                end
                VEHICLE.SET_VEHICLE_ON_GROUND_PROPERLY(viewVehicle, 5)
                previewSpawned = true
                previewVehicle = viewVehicle
                sleep(0.01)
            else
                if previewSpawned then
                    request_control(previewVehicle)
                    
                    
                    open_wheel(previewVehicle, wheelType, wheelStyle)
                    
                        if spawnMaxed:is_enabled() then
                            max_vehicle(previewVehicle)
                            max_vehicle_performance(previewVehicle)
                        end
                    VEHICLE.SET_VEHICLE_MOD_KIT(previewVehicle, 0)
                    VEHICLE.SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(previewVehicle, pR, pG, pB)
                    VEHICLE.SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(previewVehicle, sR, sG, sB)
                    VEHICLE.SET_VEHICLE_EXTRA_COLOURS(previewVehicle, pearlescent, wheelColor)
                    ENTITY.SET_ENTITY_COLLISION(previewVehicle, false, true)
                    ENTITY.SET_CAN_CLIMB_ON_ENTITY(previewVehicle, false)
                    ENTITY.SET_ENTITY_COORDS(previewVehicle, spawnX, spawnY, spawnZ, true, false, false, false)
                    ENTITY.FREEZE_ENTITY_POSITION(previewVehicle)
                    rotate = ENTITY.SET_ENTITY_ROTATION(previewVehicle, vehicleOrientationRoll, vehicleOrientationYaw, playerHeading + vehicleOrientationPitch, 2, true)
                    ENTITY.SET_ENTITY_ALPHA(previewVehicle, vehicleAlpha)
                    ENTITY.FREEZE_ENTITY_POSITION(previewVehicle)
                    VEHICLE.SET_VEHICLE_ON_GROUND_PROPERLY(previewVehicle, 5)
                    previousPreview = previewVehicle
                end
            end
        else
            gui.show_message("Vehicle Spawner", "Selected vehicle not found.")
        end
    else
        -- Delete the preview vehicle if preview checkbox is disabled
        if previewVehicle ~= nil then
            if ENTITY.DOES_ENTITY_EXIST(viewVehicle) then 
                delete_entity(viewVehicle) 
            end
        end
            previewSpawned = false
            previewVehicle = nil
            previousPreview = nil
    end

    --vehPreview:yield() -- Yield the loop to avoid consuming too much CPU
end)

toolTip(giftPlayerTab, "Previews the selected vehicle")


giftPlayerTab:add_sameline()
endPollution = giftPlayerTab:add_checkbox("No Pollution")
endPollution:set_enabled(true)
toolTip(giftPlayerTab, "Sets the entity as no longer needed to prevent session pollution of invisible vehicles, turn this off ONLY for gifting cars to others")
toolTip(giftPlayerTab, "If you disable this, make sure you use the delete gun 'Self > Weapons > Custom gun (enabled) > Delete Gun' and delete the gifted car after its been driven into the garage")

giftPlayerTab:add_sameline()
spawnMaxed = giftPlayerTab:add_checkbox("Max Mods/Performance")
spawnMaxed:set_enabled(true)
toolTip(giftPlayerTab, "Spawns the vehicle with max performance and max modifications.")

giftPlayerTab:add_separator()
giftPlayerTab:add_text("Quick Mods")

customWheels = giftPlayerTab:add_checkbox("Custom Wheels")
toolTip(giftPlayerTab, "Wheel type/style selection")

-- Add ImGui function
giftPlayerTab:add_imgui(function()
    if customWheels:is_enabled() then
        displayWheelSelection()
    end
end)

-- Vehicle Gift Options
giftedsucc = false

function giftVehToPlayer(vehicle, playerId, playerName)
script.run_in_fiber(function(script)
    if request_control(vehicle) then
         netHash = NETWORK.NETWORK_HASH_FROM_PLAYER_HANDLE(playerId)

        DECORATOR.DECOR_SET_INT(vehicle, "MPBitset", 8)
		--VEHICLE.SET_VEHICLE_IS_STOLEN(vehicle, false)
        DECORATOR.DECOR_SET_INT(vehicle, "Previous_Owner", netHash)
        DECORATOR.DECOR_SET_INT(vehicle, "Veh_Modded_By_Player", netHash)
        DECORATOR.DECOR_SET_INT(vehicle, "Not_Allow_As_Saved_Veh", 0)
        --DECORATOR.DECOR_SET_INT(vehicle, "Player_Vehicle", netHash)
		
        gui.show_message("Gift Vehicle Success", "Gifted "..VEHICLE.GET_DISPLAY_NAME_FROM_VEHICLE_MODEL(ENTITY.GET_ENTITY_MODEL(vehicle)).." to "..playerName)
        giftedsucc = true
    else
        gui.show_message("Gift Vehicle Failure", "Failed to gain control of the vehicle")
        giftedsucc = false
    end
    script:yield()
end)
end

-- Hexarobi -- Delete any invisible cars that are commonly left over from gifting. Credit to Holy for finding this check
function clear_invisible_vehicles(pid, range)
    if range == nil then range = 50 end
    local player_pos = ENTITY.GET_ENTITY_COORDS(PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid), 1)
    for _, vehicle_handle in ipairs (entities.get_all_vehicles_as_handles()) do
        local entity_pos = ENTITY.GET_ENTITY_COORDS(vehicle_handle, 1)
        local dist = SYSTEM.VDIST(player_pos.x, player_pos.y, player_pos.z, entity_pos.x, entity_pos.y, entity_pos.z)
        if dist <= range then
            if vehicle_handle ~= -1 and not ENTITY.IS_ENTITY_VISIBLE(vehicle_handle) then
                local vehicle_name = VEHICLE.GET_DISPLAY_NAME_FROM_VEHICLE_MODEL(ENTITY.GET_ENTITY_MODEL(vehicle_handle))
                gui.show_message("Deleting invisible vehicle: "..vehicle_name)
                entities.delete(vehicle_handle)
            end
        end
    end
end

giftPlayerTab:add_button("Gift Vehicle", function()

    script.run_in_fiber(function(giftVeh)

        local selectedPlayer = network.get_selected_player()

        -- Check if a player is selected
         targetPlayerPed = PLAYER.GET_PLAYER_PED(selectedPlayer)
         playerName = PLAYER.GET_PLAYER_NAME(selectedPlayer)

        if PED.IS_PED_IN_ANY_VEHICLE(targetPlayerPed, true) then
            local targetVehicle = PED.GET_VEHICLE_PED_IS_IN(targetPlayerPed, true)
            vehName = vehicles.get_vehicle_display_name(ENTITY.GET_ENTITY_MODEL(targetVehicle))
            repeat
                giftVehToPlayer(targetVehicle, selectedPlayer, playerName)
                sleep(0.2)
            until(giftedsucc == true)
            if giftedsucc == true then 
                giftMsg = "Success!"
                giftMsgTwo = "You can now drive into your garage and replace a vehicle!"
                network.send_chat_message_to_player(selectedPlayer, giftMsg.." Gifted Vehicle: "..vehName.." to "..playerName..". "..giftMsgTwo)
                sleep(5)
                clear_invisible_vehicles(PLAYER.PLAYER_ID(), 50)
            end
            giftedsucc = false -- set false to make sure next gifted car doesnt instantly stop repeating when it should still be repeating
        end
        giftVeh:yield()
    end)
end)
toolTip(giftPlayerTab, "Press the gift button after following the Gifting Process and when it reads Success, the gifting has been completed.")
giftPlayerTab:add_sameline()
giftPlayerTab:add_button("Get Vehicle Stats", function()
    script.run_in_fiber(function(vehStats)
        selectedPlayer = network.get_selected_player()
        targetPlayerPed = PLAYER.GET_PLAYER_PED(selectedPlayer)

        if PED.IS_PED_IN_ANY_VEHICLE(targetPlayerPed, true) then
            last_veh = PED.GET_VEHICLE_PED_IS_IN(targetPlayerPed, true)
        end


        if last_veh  then
             playerName = PLAYER.GET_PLAYER_NAME(selectedPlayer)
            gui.show_message("Info",
                " Player:"..PLAYER.GET_PLAYER_NAME(selectedPlayer).."->"..NETWORK.NETWORK_HASH_FROM_PLAYER_HANDLE(selectedPlayer).."->".. joaat(playerName).."\n".. --NETWORK.GET_HASH_KEY(playerName).."\n"..
                " Previous_Owner:"..DECORATOR.DECOR_GET_INT(last_veh , "Previous_Owner").."\n"..
                " Vehicle Model:"..VEHICLE.GET_DISPLAY_NAME_FROM_VEHICLE_MODEL(ENTITY.GET_ENTITY_MODEL(last_veh)).."\n"..
                " Player_Vehicle:"..DECORATOR.DECOR_GET_INT(last_veh , "Player_Vehicle").."\n"..
                " MPBitset:"..DECORATOR.DECOR_GET_INT(last_veh , "MPBitset").."\n"..
                " Veh_Modded_By_Player:"..DECORATOR.DECOR_GET_INT(last_veh , "Veh_Modded_By_Player").."\n"..
                " Not_Allow_As_Saved_Veh:"..DECORATOR.DECOR_GET_INT(last_veh , "Not_Allow_As_Saved_Veh"))
        end
        vehStats:yield()
    end)
end)
toolTip(giftPlayerTab, "Checks to make sure the vehicle stats are what they need to be (Dev testing button)")
giftPlayerTab:add_sameline()
giftPlayerTab:add_button("How To Gift Vehicles (Hover for tooltip!)", function()

end)
toolTip(giftPlayerTab, "To gift vehicles, Make sure all the players vehicles are repaired/returned and that they have a full garage!")
toolTip(giftPlayerTab, "HAVE THEM GO INTO THEIR GARAGE, DRIVE A CAR OUT AND BACK INTO THEIR GARAGE AND THEN COME OUT ON FOOT!")
toolTip(giftPlayerTab, "Spawn the vehicle using Zephyr Vehicle Spawner (UNCHECK THE NO POLLUTION BOX BEFORE PRESSING SPAWN!!)")
toolTip(giftPlayerTab, "Once you are done, have them get in, then Press the Gift Vehicle button, once it returns the success message they can drive it into their garage")
toolTip(giftPlayerTab, "NOTE: Gifted vehicles SHOULD come fully insured, MAKE SURE THEY CHECK IT IN LS CUSTOMS!")

giftPlayerTab:add_imgui(function()
    -- Ends the ImGui wrapper, new additions should be added above this.
    ImGui.End()
end)
]]
----------Config--------------------
saveConfig = false

function presistEntry(tableEntry, value)
    configTable[tableEntry] = value
end

function setEntry(tableEntry, value)
    if value ~= configTable[tableEntry] then
        configTable[tableEntry] = value
        saveConfig = true
    end
end

 persisted_config = io.open("Extras-Addon.json", "r")
if persisted_config == nil then
    configTable = {}
    --Add entries here
    presistEntry("tireParticles", tirePTFX:is_enabled()) --param0 is the entry in the config table, param1 is the value to set the entry in the table(this will be the current value of the component)
    --End Entires
     new_file = io.open("Extras-Addon.json", "w+")
    new_file:write(json.encode(configTable))
    new_file:flush()
    new_file:close()
else
    configTable = json.decode(persisted_config:read("*all"))
    --add entries, they need to be set to the values in the config
    tirePTFX:set_enabled(configTable["tireParticles"]) --sets the value of the component to the value from the config
    --end entries
    persisted_config:close()
end

script.register_looped("Zephyr Config", function(script)
    if gui.is_open() then
        saveConfig = false
        --Each entry should look like this
        setEntry("tireParticles", tirePTFX:is_enabled()) --param0 is the entry in the config table, param1 is the value to set the entry in the table(this will be the current value of the component)
        --End Entries
        if saveConfig then
            gui.show_message("Config", "Saving")
             json_file = io.open("Extras-Addon.json", "w")
            json_file:write(json.encode(configTable))
            json_file:flush()
            json_file:close()
        end
    end
    script:yield()
end)

-- Chat Commands (allows others to type these in chat for various things) by USBMenus
players = {}
player = false

event.register_handler(menu_event.ChatMessageReceived, function (pid, message)
    playerName = PLAYER.GET_PLAYER_NAME(pid)
if chatCommands:is_enabled() then
    if message == '.rp' then
        gui.show_message(playerName.. ' has requested RP')
        for i, p in pairs(players) do
            if p == playerName then
                player = true
            end
        end
        if not player then
            table.insert(players, playerName)
            network.send_chat_message_to_player(pid, playerName.." You are now receiving RP!  Type '.rp stop' to stop gaining RP.")
        end
        player = false
    end
    if message == '.rp stop' then
            table.remove(players, i)
            network.send_chat_message_to_player(pid, playerName.." You are no longer receiving RP.")
    end
    if message == ".$" then
        network.send_chat_message_to_player(pid, playerName.." You are now receiving money!  Type .$ again to get more!")
        script.run_in_fiber(function(script)
            for n = 0, 10 do
                for l = -10, 10 do
                    for v = 0, 1 do
                        network.trigger_script_event(1 << pid, {968269233 , pid, 1, l, l, n, 1, 1, 1})
                        script:sleep(5)
                    end
                end
            end
        end)
    end
end
end)

script.register_looped('rpChatters', function(script)
    for pid = 0, 31 do
        ped = PLAYER.GET_PLAYER_PED(pid)
        if ENTITY.DOES_ENTITY_EXIST(ped) then
            for p, player in pairs(players) do
                if PLAYER.GET_PLAYER_NAME(pid) == player then
                    for i = 21, 24 do
                        network.trigger_script_event(1 << pid, {968269233 , pid, 1, 4, i, 1, 1, 1, 1})
                    end
                end
            end
        end
    end
end)

timeCycleMods = Zephyr:add_tab("TimeCycles")

searchQuery = ""
filteredTimecycleModifiers = {}

function updateFilteredTimecycleModifiers()
    filteredTimecycleModifiers = {}
    for _, modifier in ipairs(timeCycles) do
        if string.find(string.lower(modifier), string.lower(searchQuery)) then
            table.insert(filteredTimecycleModifiers, modifier)
        end
    end
end

selectedModifierIndex = 0 -- initialize selected modifier index

function displayTimecycleModifierSelection()
    updateFilteredTimecycleModifiers()
    timecycleNames = {}
    for _, modifier in ipairs(filteredTimecycleModifiers) do
        table.insert(timecycleNames, modifier)
    end
    selectedModifierIndex = ImGui.ListBox("Timecycle List", selectedModifierIndex, timecycleNames, #timecycleNames)
end

-- Add search input field
timeCycleMods:add_imgui(function()
    if is_typing then
        PAD.DISABLE_ALL_CONTROL_ACTIONS(0)
    end
    searchQuery, _ = ImGui.InputText("Search Timecycles", searchQuery, 128)
    if ImGui.IsItemActive() then
        is_typing = true
    else
        is_typing = false
    end
    displayTimecycleModifierSelection()

    if ImGui.Button("Apply") then
        local selectedTimecycle = timecycleNames[selectedModifierIndex + 1]
        if selectedTimecycle then
            GRAPHICS.SET_TIMECYCLE_MODIFIER(selectedTimecycle)
            gui.show_message("Timecycle Modifier", "Applied: " .. selectedTimecycle)
        else
            gui.show_message("Timecycle Modifier", "No modifier selected")
        end
    end
    
    ImGui.SameLine() -- Places the next button on the same line
    
    if ImGui.Button("Reset") then
        GRAPHICS.CLEAR_TIMECYCLE_MODIFIER()
        gui.show_message("Timecycle Modifier", "Timecycle modifier reset")
    end
end)

-- SCH-Lua Indirect Viewing // Revised by DeadlineEm
spectate = gui.get_tab("")
indirectView = spectate:add_checkbox("Indirect Viewing (Spectate)")
local loopa13 = 0
local specam = nil
local viewDistance = 5
local showSlider = false
script.register_looped("indirectSpectate", function(script)
    if indirectView:is_enabled() and showSlider == false then
        spectate:add_imgui(function()
            viewDistance, used = ImGui.SliderInt("Camera Distance", viewDistance, 5, 25)
            showSlider = true
        end)
    end
    if indirectView:is_enabled() then
        local targetPed = PLAYER.GET_PLAYER_PED(network.get_selected_player())
        if targetPed ~= nil then
            local targetPPos = ENTITY.GET_ENTITY_COORDS(targetPed, false)
            STREAMING.SET_FOCUS_POS_AND_VEL(targetPPos.x, targetPPos.y, targetPPos.z, 0.0, 0.0, 0.0)

            if loopa13 == 0 then
                specam = CAM.CREATE_CAM("DEFAULT_SCRIPTED_CAMERA", false)
                CAM.SET_CAM_ACTIVE(specam, true)
                CAM.RENDER_SCRIPT_CAMS(true, true, 500, true, true, false)
                loopa13 = 1
            end

            local forwardVector = ENTITY.GET_ENTITY_FORWARD_VECTOR(targetPed)
            local camX = targetPPos.x - forwardVector.x * viewDistance
            local camY = targetPPos.y - forwardVector.y * viewDistance
            local camZ = targetPPos.z + 1  -- 1 unit above the target

            CAM.SET_CAM_COORD(specam, camX, camY, camZ)

            local targetRotation = ENTITY.GET_ENTITY_ROTATION(targetPed, 2)
            CAM.SET_CAM_ROT(specam, targetRotation.x, targetRotation.y, targetRotation.z, 2)
        end
    else
        if loopa13 == 1 then
            CAM.SET_CAM_ACTIVE(specam, false)
            CAM.RENDER_SCRIPT_CAMS(false, true, 500, true, true, 0)
            CAM.DESTROY_CAM(specam, false)
            STREAMING.CLEAR_FOCUS()
            loopa13 = 0
            specam = nil
        end
    end
end)
toolTip(spectate, "Spectates the selected player using a less detectable spectate method")
