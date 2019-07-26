-------------------------
--- BadgerBankRobbery ---
-------------------------

robberyActive = false
RegisterNetEvent('BadgerBankRobbery:IsActive:Return')
AddEventHandler('BadgerBankRobbery:IsActive:Return', function(bool)
	robberyActive = bool
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if not robberyActive then
			if (config.enableBanks == true) then
				for _, bankcoords in pairs(config.bankcoords) do
				DrawMarker(27, bankcoords.x, bankcoords.y, bankcoords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 4.0, 4.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
				end
			end

			if (config.enableAmmunations == true) then
				for _, ammunationcoords in pairs(config.ammunationcoords) do
				DrawMarker(27, ammunationcoords.x, ammunationcoords.y, ammunationcoords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.0, 3.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
				end
			end

			if (config.enable247 == true) then
				for _, shopcoords in pairs(config.shopcoords) do
				DrawMarker(27, shopcoords.x, shopcoords.y, shopcoords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.0, 3.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
				end
			end

			if (config.enableGasStations == true) then
				for _, ltdcoords in pairs(config.ltdcoords) do
				DrawMarker(27, ltdcoords.x, ltdcoords.y, ltdcoords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.0, 3.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
				end
			end

			if (config.enableLiquor == true) then
				for _, liquorcoords in pairs(config.liquorcoords) do
				DrawMarker(27, liquorcoords.x, liquorcoords.y, liquorcoords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.0, 3.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
				end
			end

			-- Bank Code
			local ped = GetPlayerPed(-1)
			local pedLocation = GetEntityCoords(ped, 0)
			local coords = GetEntityCoords(GetPlayerPed(-1))
			local soundalarm = false
			for _, bankcoords in pairs(config.bankcoords) do
			if (config.enableBanks == true) then
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, bankcoords.x, bankcoords.y, bankcoords.z, true) < 5.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the bank')
					if IsControlJustReleased(0, 38) then -- E key
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerServerEvent('PrintBR:PrintMessage', bankcoords.alarm)
						soundalarm = true
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * config.timeToRob), -- 1000ms * x seconds
							label = config.robbingStr,
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
								soundalarm = false
								DisplayNotification('~g~Success: You have robbed the bank successfully!')
							end
						end)
					end
				end
			end
			end

			-- Ammunation Code
			local ped = GetPlayerPed(-1)
			local pedLocation = GetEntityCoords(ped, 0)
			local coords = GetEntityCoords(GetPlayerPed(-1))
			for _, ammunationcoords in pairs(config.ammunationcoords) do
			if (config.enableAmmunations == true) then
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, ammunationcoords.x, ammunationcoords.y, ammunationcoords.z) < 5.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the Ammunation')
					if IsControlJustReleased(0, 38) then -- E
						TriggerServerEvent('PrintBR:PrintMessage', ammunationcoords.alarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * config.timeToRob), -- 1000ms * x seconds
							label = config.robbingStr,
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
								DisplayNotification('~g~Success: You have robbed the Ammunation successfully!')
							end
						end)
					end
				end
			end
			end

			-- 24/7 Code
			local ped = GetPlayerPed(-1)
			local pedLocation = GetEntityCoords(ped, 0)
			local coords = GetEntityCoords(GetPlayerPed(-1))
			for _, shopcoords in pairs(config.shopcoords) do
			if (config.enable247 == true) then
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, shopcoords.x, shopcoords.y, shopcoords.z) < 5.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the 24/7')
					if IsControlJustReleased(0, 38) then -- E
						TriggerServerEvent('PrintBR:PrintMessage', shopcoords.alarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * config.timeToRob), -- 1000ms * x seconds
							label = config.robbingStr,
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
								DisplayNotification('~g~Success: You have robbed the 24/7 successfully!')
							end
						end)
					end
				end
			end
			end

			-- LTD Code
			local ped = GetPlayerPed(-1)
			local pedLocation = GetEntityCoords(ped, 0)
			local coords = GetEntityCoords(GetPlayerPed(-1))
			for _, ltdcoords in pairs(config.ltdcoords) do
			if (config.enableGasStations == true) then
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, ltdcoords.x, ltdcoords.y, ltdcoords.z) < 5.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the LTD Gas Station')
					if IsControlJustReleased(0, 38) then -- E
						TriggerServerEvent('PrintBR:PrintMessage', ltdcoords.alarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * config.timeToRob), -- 1000ms * x seconds
							label = config.robbingStr,
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
								DisplayNotification('~g~Success: You have robbed the LTD Gas Station successfully!')
							end
						end)
					end
				end
			end
			end

			-- Liquor Store Code
			local ped = GetPlayerPed(-1)
			local pedLocation = GetEntityCoords(ped, 0)
			local coords = GetEntityCoords(GetPlayerPed(-1))
			for _, liquorcoords in pairs(config.liquorcoords) do
			if (config.enableLiquor == true) then
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, liquorcoords.x, liquorcoords.y, liquorcoords.z) < 5.0 then
					DisplayNotification('~r~Press the ~w~E ~r~key to rob the Liquor Store')
					if IsControlJustReleased(0, 38) then -- E
						TriggerServerEvent('PrintBR:PrintMessage', liquorcoords.alarm)
						TriggerServerEvent('BadgerBankRobbery:SetActive', true)
						TriggerEvent("mythic_progbar:client:progress", {
							name = "RobbingTheBank",
							duration = (1000 * config.timeToRob), -- 1000ms * x seconds
							label = config.robbingStr,
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
								DisplayNotification('~g~Success: You have robbed the Liquor Store successfully!')
							end
						end)
					end
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