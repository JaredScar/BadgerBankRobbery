-------------------------
--- BadgerBankRobbery ---
-------------------------

--- Config ---
timeToRob = 60 -- In seconds
robbingStr = "Breaking into the Safe..."
enableAmmunation = true -- Enables all Ammunations to be robbed.
enable247 = true -- Enables all 24/7's to be robbed.
enableGasStation = true -- Enables all Gas Stations to be robbed.
enableBank = true -- Enables all Banks to be robbed.
enableLiquor = true -- Enables all Liquor Stores to be robbed.

paletobankSilentAlarm = "^1^*A silent alarm has been triggered at the ^5Blaine County Savings Bank in Paleto Bay^1! All police units are required to assist!"
harmonybankSilentAlarm = "^1^*A silent alarm has been triggered at the ^5Fleeca Bank Harmony in Harmony^1! All police units are required to assist!"
banhamcanyonbankSilentAlarm = "^1^*A silent alarm has been triggered at the ^5Bank in Banham Canyon^1! All police units are required to assist!"
pillboxbankSilentAlarm = "^1^*A silent alarm has been triggered at the ^5Bank in Banham Canyon^1! All police units are required to assist!"

paletoammoSilentAlarm = "^1^*A silent alarm has been triggered at the ^5Ammunation in Paleto Bay^1! All police units are required to assist!"
senora24SilentAlarm = "^1^*A silent alarm has been triggered at the ^524/7 on Senora Fwy // Mount Chilliad^1! All police units are required to assist!"
senora242SilentAlarm = "^1^*A silent alarm has been triggered at the ^524/7 on Senora Fwy // Grand Senora Desert^1! All police units are required to assist!"
harmony24SilentAlarm = "^1^*A silent alarm has been triggered at the ^524/7 in Harmony^1! All police units are required to assist!"
sandy24SilentAlarm = "^1^*A silent alarm has been triggered at the ^524/7 in Sandy Shores^1! All police units are required to assist!"
chumash24SilentAlarm = "^1^*A silent alarm has been triggered at the ^524/7 in Chumash^1! All police units are required to assist!"
banhamcanyon24SilentAlarm = "^1^*A silent alarm has been triggered at the ^524/7 in Banham Canyon^1! All police units are required to assist!"
palomino24SilentAlarm = "^1^*A silent alarm has been triggered at the ^524/7 on Palomino Fwy^1! All police units are required to assist!"
vinewood24SilentAlarm = "^1^*A silent alarm has been triggered at the ^524/7 in Vinewood^1! All police units are required to assist!"
strawberry24SilentAlarm = "^1^*A silent alarm has been triggered at the ^524/7 in Strawberry^1! All police units are required to assist!"

sandyammoSilentAlarm = "^1^*A silent alarm has been triggered at the ^5Ammunation in Sandy Shores^1! All police units are required to assist!"
ammo68SilentAlarm = "^1^*A silent alarm has been triggered at the ^5Ammunation on Route 68^1! All police units are required to assist!"
chumashammoSilentAlarm = "^1^*A silent alarm has been triggered at the ^5Ammunation in Chumash^1! All police units are required to assist!"
palominoammoSilentAlarm = "^1^*A silent alarm has been triggered at the ^5Ammunation on Palomino Fwy^1! All police units are required to assist!"
hawickammoSilentAlarm = "^1^*A silent alarm has been triggered at the ^5Ammunation in Hawick^1! All police units are required to assist!"
littleseoulammoSilentAlarm = "^1^*A silent alarm has been triggered at the ^5Ammunation in Little Seoul^1! All police units are required to assist!"
pillboxammoSilentAlarm = "^1^*A silent alarm has been triggered at the ^5Ammunation in Pillbox Hill^1! All police units are required to assist!"
cypressammoSilentAlarm = "^1^*A silent alarm has been triggered at the ^5Ammunation in Cypress Flats^1! All police units are required to assist!"

grapeseedltdSilentAlarm = "^1^*A silent alarm has been triggered at the ^5LTD in Grapeseed^1! All police units are required to assist!"
richmanltdSilentAlarm = "^1^*A silent alarm has been triggered at the ^5LTD in Richman Glen^1! All police units are required to assist!"
littleseoulltdSilentAlarm = "^1^*A silent alarm has been triggered at the ^5LTD in Little Seoul^1! All police units are required to assist!"
davisltdSilentAlarm = "^1^*A silent alarm has been triggered at the ^5LTD in Davis^1! All police units are required to assist!"
mirrorparkltdSilentAlarm = "^1^*A silent alarm has been triggered at the ^5LTD in Mirror Park^1! All police units are required to assist!"

vespucchiliquorSilentAlarm = "^1^*A silent alarm has been triggered at the ^5Liquor Store in Vespucci Canals^1! All police units are required to assist!"
harmonyliquorSilentAlarm = "^1^*A silent alarm has been triggered at the ^5Liquor Store in Harmony^1! All police units are required to assist!"

--- Client ---
--[[
	Paleto Bank Robbery Coords: X= -104.42 Y=6476.56 Z=32.51
	
	Harmony Bank Robbery Coords: X=1177.32 Y=2711.79 Z=38.1
]]--
robberyActive = false
RegisterNetEvent('BadgerBankRobbery:IsActive:Return')
AddEventHandler('BadgerBankRobbery:IsActive:Return', function(bool)
	robberyActive = bool
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		-- Draw the markers
		PaletoBank = {x= -104.42, y= 6476.56, z= 32.51 - 1.7}
		HarmonyBank = {x= 1177.32, y= 2711.79, z= 38.1 - 1}
		BanHamBank = {x= -2957.5, y= 480.97, z= 15.71 - 1}
		PillboxBank = {x= 146.46, y= -1044.67, z= 29.38 - 1}

		PaletoAmmo = {x= -334.27, y= 6082.13, z= 31.45 - 1}
		SandyAmmo = {x= 1689.63, y= 3757.84, z= 34.71 - 1}
		Ammo68 = {x= -1121.77, y= 2697.31, z= 18.55 - 1}
		ChumashAmmo = {x= -3174.94, y= 1084.96, z= 20.84 - 1}
		PalominoAmmo = {x= 2571.7, y= 292.58, z= 108.73 - 1}
		HawickAmmo = {x= 254.94, y= -47.05, z= 69.94 - 1}
		LittleSeoulAmmo = {x= -666.1, y= -933.72, z= 21.83 - 1}
		PillboxAmmo = {x= 12.62, y= -1105.23, z= 29.8 - 1}
		CypressAmmo = {x= 819.6, y= -2155.81, z= 29.62 - 1}

		Senora24 = {x= 1734.54, y= 6420.27, z= 35.04 - 1}
		Senora242 = {x= 2673.21, y= 3286.36, z= 55.24 - 1}
		Harmony24 = {x= 546.35, y= 2663.35, z= 42.16 - 1}
		Sandy24 = {x= 1960.71, y= 3748.53, z= 32.36 - 1}
		Chumash24 = {x= -3249.52, y= 1004.41, z= 12.83 - 1}
		BanHam24 = {x= -3047.39, y= 585.85, z= 7.91 - 1}
		Palomino24 = {x= 2549.84, y= 384.93, z= 108.64 - 1}
		Vinewood24 = {x= 377.99, y= 332.96, z= 103.57 - 1}
		Strawberry24 = {x= 28.71, y= -1339.51, z= 29.5 - 1}

		GrapeseedLTD = {x= 1707.27, y= 4919.77, z= 42.09 - 1}				
		RichmenLTD = {x= -1828.57, y= 799.13, z= 138.20 - 1}
		LittleSeoulLTD = {x= -709.11, y= -904.12, z= 19.22 - 1}
		DavisLTD = {x= -42.99, y= -1748.79, z= 29.42 - 1}
		MirrorParkLTD = {x= 1160.38, y= -313.88, z= 69.21 - 1}
								
		VespucciLiquor = {x= -1220.25, y= -915.79, z= 11.33 - 1}
		HarmonyLiquor = {x= 1168.83, y= 2718.03, z= 37.16 - 1}

		if not robberyActive then
			if enableBank then
			-- Paleto Bank:
			DrawMarker(27, PaletoBank.x, PaletoBank.y, PaletoBank.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 5.0, 5.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Harmony Bank
			DrawMarker(27, HarmonyBank.x, HarmonyBank.y, HarmonyBank.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.0, 3.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Banham Canyon Bank
			DrawMarker(27, BanHamBank.x, BanHamBank.y, BanHamBank.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.0, 3.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Pillbox Hill Bank
			DrawMarker(27, PillboxBank.x, PillboxBank.y, PillboxBank.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.0, 3.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			end

			if enable247 then
			-- Senora Fwy 24/7 // Mount Chilliad
			DrawMarker(27, Senora24.x, Senora24.y, Senora24.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 4.0, 4.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Senora Fwy 24/7 // Grand Senora Desert
			DrawMarker(27, Senora242.x, Senora242.y, Senora242.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 4.0, 4.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Harmony 24/7:
			DrawMarker(27, Harmony24.x, Harmony24.y, Harmony24.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 4.0, 4.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Sandy 24/7:
			DrawMarker(27, Sandy24.x, Sandy24.y, Sandy24.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 4.0, 4.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Chumash 24/7:
			DrawMarker(27, Chumash24.x, Chumash24.y, Chumash24.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 4.0, 4.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Banham Canyon 24/7:
			DrawMarker(27, BanHam24.x, BanHam24.y, BanHam24.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 4.0, 4.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Palomino Fwy 24/7:
			DrawMarker(27, Palomino24.x, Palomino24.y, Palomino24.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 4.0, 4.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Vinewood 24/7:
			DrawMarker(27, Vinewood24.x, Vinewood24.y, Vinewood24.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 4.0, 4.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Strawberry 24/7:
			DrawMarker(27, Strawberry24.x, Strawberry24.y, Strawberry24.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 4.0, 4.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			end

			if enableAmmunation then
			-- Sandy Ammunation:
			DrawMarker(27, SandyAmmo.x, SandyAmmo.y, SandyAmmo.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Paleto Ammunation
			DrawMarker(27, PaletoAmmo.x, PaletoAmmo.y, PaletoAmmo.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Route 68 Ammunation:
			DrawMarker(27, Ammo68.x, Ammo68.y, Ammo68.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Chumash Ammunation:
			DrawMarker(27, ChumashAmmo.x, ChumashAmmo.y, ChumashAmmo.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Palomino Fwy Ammunation:
			DrawMarker(27, PalominoAmmo.x, PalominoAmmo.y, PalominoAmmo.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Hawick Ammunation:
			DrawMarker(27, HawickAmmo.x, HawickAmmo.y, HawickAmmo.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Little Seoul Ammunation:
			DrawMarker(27, LittleSeoulAmmo.x, LittleSeoulAmmo.y, LittleSeoulAmmo.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Pillbox Hill Ammunation:
			DrawMarker(27, PillboxAmmo.x, PillboxAmmo.y, PillboxAmmo.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Cypress Flats Ammunation:
			DrawMarker(27, CypressAmmo.x, CypressAmmo.y, CypressAmmo.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			end

			if enableGasStation then
			-- Grapeseed LTD:
			DrawMarker(27, GrapeseedLTD.x, GrapeseedLTD.y, GrapeseedLTD.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Richmen LTD:
			DrawMarker(27, RichmenLTD.x, RichmenLTD.y, RichmenLTD.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Little Seoul LTD:
			DrawMarker(27, LittleSeoulLTD.x, LittleSeoulLTD.y, LittleSeoulLTD.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Davis LTD:
			DrawMarker(27, DavisLTD.x, DavisLTD.y, DavisLTD.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Mirror Park LTD
			DrawMarker(27, MirrorParkLTD.x, MirrorParkLTD.y, MirrorParkLTD.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			end 

			if enableLiquor then
			-- Vespucci Canals Liquor Store:
			DrawMarker(27, VespucciLiquor.x, VespucciLiquor.y, VespucciLiquor.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Harmony Liquor Store:
			DrawMarker(27, HarmonyLiquor.x, HarmonyLiquor.y, HarmonyLiquor.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			end
			-- Check if player is in, if they are, have them rob the bank
			-- BANK LIST
			-- Paleto Bank
			local coords = GetEntityCoords(GetPlayerPed(-1))
			if enableBank then
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, PaletoBank.x, PaletoBank.y, PaletoBank.z) < 5.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the bank')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', paletobankSilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the bank successfully!')
							end
						end)
					end
				end
			-- Harmony Bank
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, HarmonyBank.x, HarmonyBank.y, HarmonyBank.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the bank')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', harmonybankSilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the bank successfully!')
							end
						end)
					end
				end
			-- Banham Canyon Bank
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, BanHamBank.x, BanHamBank.y, BanHamBank.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the bank')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', banhamcanyonbankSilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the bank successfully!')
							end
						end)
					end
				end
				-- Pillbox Hill Bank
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, PillboxBank.x, PillboxBank.y, PillboxBank.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the bank')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', pillboxbankSilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the bank successfully!')
							end
						end)
					end
				end
			end
			-- AMMUNATION LIST
			-- Paleto Ammunation
			if enableAmmunation then
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, PaletoAmmo.x, PaletoAmmo.y, PaletoAmmo.z) < 5.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', paletoammoSilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
				-- Sandy Ammunation
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, SandyAmmo.x, SandyAmmo.y, SandyAmmo.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', sandyammoSilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
				-- Route 68 Ammunation
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, Ammo68.x, Ammo68.y, Ammo68.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', ammo68SilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
				-- Chumash Ammunation
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, ChumashAmmo.x, ChumashAmmo.y, ChumashAmmo.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', chumashammoSilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
				-- Palomino Fwy Ammunation
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, PalominoAmmo.x, PalominoAmmo.y, PalominoAmmo.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', palominoammoSilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
				-- Hawick Ammunation
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, HawickAmmo.x, HawickAmmo.y, HawickAmmo.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', hawickammoSilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
				-- Little Seoul Ammunation
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, LittleSeoulAmmo.x, LittleSeoulAmmo.y, LittleSeoulAmmo.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', littleseoulammoSilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
				-- Pillbox Hill Ammunation
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, PillboxAmmo.x, PillboxAmmo.y, PillboxAmmo.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', pillboxammoSilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
				-- Cypress Flats Ammunation
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, CypressAmmo.x, CypressAmmo.y, CypressAmmo.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', cypressammoSilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
			end
			-- 24/7 LIST
			if enable247 then
				-- Senora Fwy 24/7 // Mount Chilliad
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, Senora24.x, Senora24.y, Senora24.z) < 5.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', senora24SilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
				-- Senora Fwy 24/7 // Grand Senora Desert
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, Senora242.x, Senora242.y, Senora242.z) < 5.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', senora242SilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
				-- Harmony 24/7
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, Harmony24.x, Harmony24.y, Harmony24.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', harmony24SilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
				-- Sandy 24/7
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, Sandy24.x, Sandy24.y, Sandy24.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', sandy24SilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
				-- Chumash 24/7
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, Chumash24.x, Chumash24.y, Chumash24.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', chumash24SilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
				-- Banham Canyon 24/7
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, BanHam24.x, BanHam24.y, BanHam24.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', banhamcanyon24SilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
				-- Palomino Fwy 24/7
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, Palomino24.x, Palomino24.y, Palomino24.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', palomino24SilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
				-- Vinewood 24/7
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, Vinewood24.x, Vinewood24.y, Vinewood24.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', vinewood24SilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
				-- Strawberry 24/7
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, Strawberry24.x, Strawberry24.y, Strawberry24.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', strawberry24SilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
			end
			-- GAS STATION LIST
			if enableGasStation then
				-- Grapeseed LTD
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, GrapeseedLTD.x, GrapeseedLTD.y, GrapeseedLTD.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', grapeseedltdSilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
				-- Richmen Glen LTD
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, RichmenLTD.x, RichmenLTD.y, RichmenLTD.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', richmanltdSilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
				-- Little Seoul LTD
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, LittleSeoulLTD.x, LittleSeoulLTD.y, LittleSeoulLTD.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', littleseoulltdSilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
				-- Davis LTD
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, DavisLTD.x, DavisLTD.y, DavisLTD.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', davisltdSilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
				-- Mirror Park LTD
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, MirrorParkLTD.x, MirrorParkLTD.y, MirrorParkLTD.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', mirrorparkltdSilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								-- Do Something If Event Wasn't Cancelled
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
			end
			if enableLiquor then
				-- Vespucci Canals Liquor Store
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, VespucciLiquor.x, VespucciLiquor.y, VespucciLiquor.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', vespucchiliquorSilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
				-- Harmony Liquor Store
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, HarmonyLiquor.x, HarmonyLiquor.y, HarmonyLiquor.z) < 3.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the store')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('PrintBR:PrintMessage', harmonyliquorSilentAlarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * timeToRob), -- 1000ms * x seconds
							label = robbingStr,
							useWhileDead = false,
							canCancel = false,
							controlDisables = {
								disableMovement = true,
								disableCarMovement = true,
								disableMouse = false,
								disableCombat = true,
							},
							animation = {
								animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
								anim = "machinic_loop_mechandplayer",
								flags = 49,
							},
							prop = {
								model = "prop_ing_crowbar",
							}
						}, function(status)
							if not status then
								DisplayNotification('~g~Success: You have robbed the store successfully!')
							end
						end)
					end
				end
			end
		end
	end
end)
function DisplayNotification( text )
    SetNotificationTextEntry( "STRING" )
    AddTextComponentString( text )
    DrawNotification( false, false )
end
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		TriggerServerEvent('BadgerBankRobbery:IsActive')
	end
end)
