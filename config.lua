_G.RAM = {
	["Roblox Account Manager"] = {
		["Auto Sending"] = false,
		["Delay Log"] = 5,
	},
}

_G.Loader = {
	["Version"] = "3",
	["Lock Fps"] = 10, -- Recommend 10 - 15 Fps ++
	["Allow Reconnect"] = true,
	["Manager Fishing"] = {
		["Fishing Location"] = {
			["Main Position"] = CFrame.new(1375.31616, -603.46405, 2337.57251, 0.942536652, 5.14034149e-08, -0.33410278, -6.6218206e-08, 1, -3.29529435e-08, 0.33410278, 5.31830437e-08, 0.942536652),
		},
		["Level Location"] = {
			["Allow Doing When"] = "Ethereal Prism Rod",
			["Level Position"] = CFrame.new(1375.31616, -603.46405, 2337.57251, 0.942536652, 5.14034149e-08, -0.33410278, -6.6218206e-08, 1, -3.29529435e-08, 0.33410278, 5.31830437e-08, 0.942536652),
		},
		["Sell Setting"] = {
			["Allow Sell Event Fish"] = true,
			["Allow Sell Exotic Fish"] = true,
			["Allow Sell Mythical Fish"] = true,
			["Allow Sell Legendary Fish"] = true,
			["Allow Sell Secret Fish"] = false,
		},
	},
	["Manager Ping"] = { 
		["Enable"] = true,
		["Select Type"] = "Rejoin",
		["Max Ping"] = 20000,
	}, 
	["Manager Nuke"] = { 
		["Enable"] = true,
		["Select Type"] = "Normal Using",
	}, 
	["Manager Enchant"] = {
		["Enable"] = true,
		["Minimum Money"] = 100000,
		["Select Type Enchant"] = {
			["Aurora Rod"] = {"Hasty","Clever"},
			["Poseidon Rod"] = {"Hasty"},
			["Ethereal Prism Rod"] = {"Clever"},
			["Great Rod of Oscar"] = {"Clever"},
		},
	},  
	["Manager Doing"] = {
		["Effect Luck"] = {
			["Allow Buying"] = true,
			["Minimum Money"] = 50000,
		},
		["Allow Equip"] = {
			"Carbon Rod",
			"Rapid Rod",
			"Aurora Rod",
			"Poseidon Rod",
			"Ethereal Prism Rod",
			"Great Rod of Oscar",
		},
		["Allow Buying"] = {
			["Data"] = {
				"Firework Rod", "Rod Of The Zenith", "Wicked Fang Rod",
				"Ethereal Prism Rod", "Zeus Rod", "Treasure Rod",
				"Frog Rod", "The Boom Ball", "Avalanche Rod",
				"Summit Rod", "Lucky Rod", 
				"Destiny Rod", "Cerulean Fang Rod", "Azure Of Lagoon",
				"Arctic Rod", "Tempest Rod", "Leviathan's Fang Rod",
				"Heaven's Rod", "Paper Fan Rod", "Abyssal Specter Rod",
				"Aurora Rod", "Verdant Shear Rod",
				"Rapid Rod", "Fungal Rod", "Fortune Rod",
				"Mythical Rod", "Magnet Rod", "Rainbow Cluster Rod",
				"Scurvy Rod", "Nocturnal Rod",
				"Blazebringer Rod", "Free Spirit Rod", "Plastic Rod",
				"Midas Rod", "Reinforced Rod", "Depthseeker Rod",
				"Sunken Rod", "Great Dreamer Rod", "Seraphic Rod",
				"Kings Rod", "Crystallized Rod", "Great Rod of Oscar",
				"Champions Rod", "Challenger's Rod", "Carbon Rod",
				"Kraken Rod", "Training Rod", "Volcanic Rod",
				"Fast Rod", "No-Life Rod", "Scarlet Spincaster Rod",
				"Trident Rod", "Magma Rod", "Frostbane Rod",
				"Merchant Rod", "Wildflower Rod", "Poseidon Rod",
				"Carrot Rod", "Phoenix Rod", "Steady Rod",
				"Stone Rod", "Firefly Rod", "Long Rod",
				"Luminescent Oath"
			},
			["Buying After"] = { 
				["Level"] = 1000,
			},
		},
		["Default Buying"] = {
			["Carbon Rod"] = false,
			["Rapid Rod"] = true,
			["Aurora Rod"] = true,
			["Kraken Rod"] = false,
			["Poseidon Rod"] = true,
			["Ethereal Prism Rod"] = true,
			["Great Rod of Oscar"] = true,
		},
		-- // Quest Rod
		["Leviathan's Fang Rod"] = {
			["Enable"] = true,
			["Doing After"] = {
				["Level"] = 500,
				["Money"] = 1200000,
			},
		},
		["Rod Of The Forgotten Fang"] = {
			["Enable"] = true,
			["Doing After"] = {
				["Level"] = 1000,
				["Money"] = 5050000,
			},
		},
		["Rod Of The Zenith"] = {
			["Enable"] = true,
			["Doing After"] = {
				["Level"] = 1000,
				["Money"] = 10000000,
			},
		},
		["Duskwire"] = {
			["Enable"] = true,
			["Doing After"] = {
				["Level"] = 1000,
				["Money"] = 7500000,
			},
		},
		["Rod Of The Eternal King"] = {
			["Enable"] = true,
			["Doing After"] = {
				["Level"] = 1000,
				["Money"] = 500000,
			},
		},
		["Magma Rod"] = {
			["Enable"] = true,
			["Doing After"] = {
				["Level"] = 1000,
				["Money"] = 10000,
			},
		},
		["Ruinous Oath"] = { 
			["Enable"] = true,
			["Doing After"] = {
				["Level"] = 1000,
				["Money"] = 30000000,
			},
		},
		["Wicked Fang Rod"] = { 
			["Enable"] = true,
			["Doing After"] = {
				["Level"] = 1000,
				["Money"] = 3900000,
			},
		},
		["Heaven's Rod"] = {
			["Enable"] = false,
			["Doing After"] = {
				["Level"] = 1000,
				["Money"] = 5500000,
			},
		},
	},
}
