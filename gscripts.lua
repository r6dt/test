spawn(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Hoith95/Pet-99/main/Del-TopBarApp"))()
end)

spawn(function()
wait(68)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Hoith95/Pet-99/main/Event-TimeTrial-2"))()
end)

getgenv().GMAX_MAIL_COST = "1m"
getgenv().GAUTO_UPGRADE_PETS = true
getgenv().GLOOTBOXES = {"All"}
getgenv().GCLEAR_FAVORITE_PETS = true
getgenv().GPROGRESS_MODE = "Hybrid"
getgenv().GGFX_MODE = 2
getgenv().GRANK_TO = 11
getgenv().GZONE_TO = 99
getgenv().GHATCH_SPEED_MS = 0
-- getgenv().GWAIT_AT_GATES_TILL_RANK = 5

getgenv().GMAX_ZONE_UPGRADE_COST = 200000
getgenv().GUSE_ULTIMATES = {"Tsunami", "Tornado", "Pet Surge", "Chest Spell","Ground Pound"}
getgenv().GUSE_FLAGS = {"Hasty Flag"}
getgenv().GPOTIONS = {"Coins","Lucky","Treasure Hunter","Walkspeed","Diamonds","Damage"}
getgenv().GENCHANTS = {"Criticals","Treasure Hunter","Diamonds","Lucky Eggs","Huge Hunter","Tap Power","Strong Pets"}
getgenv().GCOLLECT_FREE_ITEMS = true
getgenv().GPOTIONS_MAX_TIER = 99

-- Extra Gameplay Settings
getgenv().GHOLD_GIFTS = false
getgenv().GHOLD_BUNDLES = false
getgenv().GMAX_EGG_SLOTS = 99
getgenv().GMAX_EQUIP_SLOTS = 99
getgenv().GUSE_SPRINKLERS = true
getgenv().GMASTERY_TO_MAX = "Pets"

-- Discord Webhook Integration
getgenv().GWEBHOOK_USERID = "" -- your discord userID, not your name. numerical id.
-- Mail and Item Filtering
getgenv().GHUGE_COUNT = 0
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/34915da4ad87a5028e1fd64efbe3543f.lua"))()
