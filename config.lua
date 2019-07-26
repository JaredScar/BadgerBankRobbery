config = {
	timeToRob = 60, -- In seconds
	robberyCooldown = 15, -- In minutes
	robbingStr = "Breaking into the Safe...",

	displayBlips = true, -- Makes it so when a robbery is started a blip is created and flashes.

	enableAmmunations = true, -- Enables all Ammunations to be robbed.
	enable247 = true, -- Enables all 24/7's to be robbed.
	enableGasStations = true, -- Enables all Gas Stations to be robbed.
	enableBanks = true, -- Enables all Banks to be robbed.
	enableLiquor = true, -- Enables all Liquor Stores to be robbed.

	robberySuccess = "^2^*The robbery was successful. ^5^rNext robbery can be activated in ^1^*15 ^5^rminutes.",
	robberyFailed = "^1^*The robbery has failed. ^5^rNext robbery can be activited in ^1^*15 ^5^rminutes",

	bankcoords = {
		{name = "Paleto Bank Robbery", alarm = "^1^*A silent alarm has been triggered at the ^5Blaine County Savings Bank in Paleto Bay^1! All police units are required to assist!", 
		x = -104.42, y = 6476.56, z=32.51-1.7},

		{name = "Harmony Bank Robbery", alarm = "^1^*A silent alarm has been triggered at the ^5Fleeca Bank Harmony in Harmony^1! All police units are required to assist!", 
		x = 1177.32, y = 2711.79, z = 38.1 - 1},

		{name = "Banham Canyon Bank Robbery", alarm = "^1^*A silent alarm has been triggered at the ^5Bank in Banham Canyon^1! All police units are required to assist!", 
		x = -2957.5, y = 480.97, z = 15.71 - 1},

		{name = "Pillbox Hill Bank Robbery", alarm = "^1^*A silent alarm has been triggered at the ^5Bank in Pillbox Hill^1! All police units are required to assist!", 
		x = 146.46, y = -1044.67, z = 29.38 - 1},
	},

	ammunationcoords = {
		{name = "Paleto Ammunation Robbery", alarm = "^1^*A silent alarm has been triggered at the ^5Ammunation in Paleto Bay^1! All police units are required to assist!", 
		x = -334.27, y = 6082.13, z = 31.45 - 1},

		{name = "Sandy Ammunation Robbery", alarm = "^1^*A silent alarm has been triggered at the ^5Ammunation in Sandy Shores^1! All police units are required to assist!", 
		x = 1689.63, y = 3757.84, z = 34.71 - 1},

		{name = "Route 68 Ammunation Robbery", alarm = "^1^*A silent alarm has been triggered at the ^5Ammunation on Route 68^1! All police units are required to assist!", 
		x = -1121.77, y = 2697.31, z = 18.55 - 1},

		{name = "Chumash Ammunation Robbery", alarm = "^1^*A silent alarm has been triggered at the ^5Ammunation in Chumash^1! All police units are required to assist!", 
		x = -3174.94, y = 1084.96, z = 20.84 - 1},

		{name = "Palomino Fwy Ammunation Robbery", alarm = "^1^*A silent alarm has been triggered at the ^5Ammunation on Palomino Fwy^1! All police units are required to assist!", 
		x = 2571.7, y = 292.58, z = 108.73 - 1},

		{name = "Hawick Ammunation Robbery", alarm = "^1^*A silent alarm has been triggered at the ^5Ammunation in Hawick^1! All police units are required to assist!", 
		x = 254.94, y = -47.05, z = 69.94 - 1},

		{name = "Little Seoul Ammunation Robbery", alarm = "^1^*A silent alarm has been triggered at the ^5Ammunation in Little Seoul^1! All police units are required to assist!", 
		x = -666.1, y = -933.72, z = 21.83 - 1},

		{name = "Pillbox Hill Ammunation Robbery", alarm = "^1^*A silent alarm has been triggered at the ^5Ammunation in Pillbox Hill^1! All police units are required to assist!", 
		x = 12.62, y = -1105.23, z = 29.8 - 1},

		{name = "Cypress Flats Ammunation Robbery", alarm = "^1^*A silent alarm has been triggered at the ^5Ammunation in Cypress Flats^1! All police units are required to assist!", 
		x = 819.6, y = -2155.81, z = 29.62 - 1},

		{name = "Morningwood Ammunation Robbery", alarm = "^1^*A silent alarm has been triggered at the ^5Ammunation in Morningwood^1! All police units are required to assist!", 
		x = -1303.41, y = -391.09, z = 36.7 - 1},

		{name = "La Mesa Ammunation Robbery", alarm = "^1^*A silent alarm has been triggered at the ^5Ammunation in La Mesa^1! All police units are required to assist!", 
		x = 846.1, y = -1035.17, z = 28.26 - 1},
	},

	shopcoords = {
		{name = "24/7 Senora Fwy // Mount Chilliad Robbery", alarm = "^1^*A silent alarm has been triggered at the ^524/7 on Senora Fwy // Mount Chilliad^1! All police units are required to assist!", 
		x = 1734.54, y = 6420.27, z = 35.04 - 1},

		{name = "24/7 on Senora Fwy // Grand Senora Desert Robbery", alarm = "^1^*A silent alarm has been triggered at the ^524/7 on Senora Fwy // Grand Senora Desert^1! All police units are required to assist!", 
		x = 2673.21, y = 3286.36, z = 55.24 - 1},

		{name = "Harmony 24/7 Robbery", alarm = "^1^*A silent alarm has been triggered at the ^524/7 in Harmony^1! All police units are required to assist!", 
		x = 546.35, y = 2663.35, z = 42.16 - 1},

		{name = "Sandy 24/7 Robbery", alarm = "^1^*A silent alarm has been triggered at the ^524/7 in Sandy Shores^1! All police units are required to assist!", 
		x = 1960.71, y = 3748.53, z = 32.36 - 1},

		{name = "Chumash 24/7 Robbery", alarm = "^1^*A silent alarm has been triggered at the ^524/7 in Chumash^1! All police units are required to assist!", 
		x = -3249.52, y = 1004.41, z = 12.83 - 1},

		{name = "Banham Canyon 24/7 Robbery", alarm = "^1^*A silent alarm has been triggered at the ^524/7 in Banham Canyon^1! All police units are required to assist!", 
		x = -3047.39, y = 585.85, z = 7.91 - 1},

		{name = "Palomino Fwy 24/7 Robbery", alarm = "^1^*A silent alarm has been triggered at the ^524/7 on Palomino Fwy^1! All police units are required to assist!", 
		x = 2549.84, y = 384.93, z = 108.64 - 1},

		{name = "Vinewood 24/7 Robbery", alarm = "^1^*A silent alarm has been triggered at the ^524/7 in Vinewood^1! All police units are required to assist!", 
		x = 377.99, y = 332.96, z = 103.57 - 1},

		{name = "Strawberry 24/7 Robbery", alarm = "^1^*A silent alarm has been triggered at the ^524/7 in Strawberry^1! All police units are required to assist!", 
		x = 28.71, y = -1339.51, z = 29.5 - 1},
	},

	ltdcoords = {
		{name = "Grapeseed LTD Robbery", alarm = "^1^*A silent alarm has been triggered at the ^5LTD in Grapeseed^1! All police units are required to assist!", 
		x = 1707.27, y = 4919.77, z = 42.09 - 1},

		{name = "Richman Glen LTD Robbery", alarm = "^1^*A silent alarm has been triggered at the ^5LTD in Richman Glen^1! All police units are required to assist!", 
		x = -1828.57, y = 799.13, z = 138.20 - 1},

		{name = "Little Seoul LTD Robbery", alarm = "^1^*A silent alarm has been triggered at the ^5LTD in Little Seoul^1! All police units are required to assist!", 
		x = -709.11, y = -904.12, z = 19.22 - 1},

		{name = "Davis LTD Robbery", alarm = "^1^*A silent alarm has been triggered at the ^5LTD in Davis^1! All police units are required to assist!", 
		x = -42.99, y = -1748.79, z = 29.42 - 1},

		{name = "Mirror Park LTD Robbery", alarm = "^1^*A silent alarm has been triggered at the ^5LTD in Mirror Park^1! All police units are required to assist!", 
		x = 1160.38, y = -313.88, z = 69.21 - 1},
	},

	liquorcoords = {
		{name = "Vespucci Canals Liquor Store Robbery", alarm = "^1^*A silent alarm has been triggered at the ^5Liquor Store in Vespucci Canals^1! All police units are required to assist!", 
		x = -1220.25, y = -915.79, z = 11.33 - 1},

		{name = "Harmony Liquor Store Robbery", alarm = "^1^*A silent alarm has been triggered at the ^5Liquor Store in Harmony^1! All police units are required to assist!", 
		x = 1168.83, y = 2718.03, z = 37.16 - 1},
	}

	
}