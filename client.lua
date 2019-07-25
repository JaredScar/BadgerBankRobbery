-------------------------
--- BadgerBankRobbery ---
-------------------------

--- Config ---
timeToRob = 60 -- In seconds
robbingStr = "Breaking into safes..."

harmonySilentAlarm = "^1^*A silent alarm has been triggered at ^5Harmony Fleeca Bank^1! All police forces are required to assist!"
paletoSilentAlarm = "^1^*A silent alarm has been triggered at ^5Paleto Bank^1! All police forces are required to assist!"

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
		local xPaleto = -104.42
		local yPaleto = 6476.56
		local zPaleto = 32.51 - 1.7
		
		local xHarmony = 1177.32
		local yHarmony = 2711.79 
		local zHarmony = 38.1 - 1
		if not robberyActive then
			-- Paleto:
			DrawMarker(27, xPaleto, yPaleto, zPaleto, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 5.0, 5.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			--DrawMarker(Config.MarkerType, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.0, 3.0, 1.0, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, nil, nil, false)
			-- Harmony:
			DrawMarker(27, xHarmony, yHarmony, zHarmony, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.0, 3.0, .2, 255, 0, 0, 255, false, true, 2, false, nil, nil, false)
			-- Check if player is in, if they are, have them rob the bank
			-- Paleto
			local coords = GetEntityCoords(GetPlayerPed(-1))
			if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, xPaleto, yPaleto, zPaleto) < 5.0 then
				DisplayNotification('~r~Press the ~w~E ~r~key to rob the bank')
				if IsControlJustReleased(0, 38) then -- E key
					TriggerServerEvent('PrintBR:PrintMessage', paletoSilentAlarm)
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
			-- Harmony
			if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, xHarmony, yHarmony, zHarmony) < 3.0 then
				DisplayNotification('~r~Press the ~w~E ~r~key to rob the bank')
				if IsControlJustReleased(0, 38) then -- E key
					TriggerServerEvent('PrintBR:PrintMessage', harmonySilentAlarm)
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