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
getgenv().GGFX_MODE = 1
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
getgenv().GMAIL_ITEMS = {
    -- ["Normal Hippomelon Ball"] = {Class = "Pet", Id = "Hippomelon Ball", MinAmount = 1},
    -- ["Golden Hippomelon Ball"] = {Class = "Pet", Id = "Hippomelon Ball", MinAmount = 1, IsGold = true},
    -- ["RB Hippomelon Ball"] = {Class = "Pet", Id = "Hippomelon Ball", MinAmount = 1, IsRainbow = true},
    ["Hype Egg 2"] = {Class = "Lootbox", Id = "Hype Egg 2", MinAmount = 1},
    ["All Huges"] = {Class = "Pet", Id = "All Huges", MinAmount = 1},
    ["Send Diamonds"] = {Class = "Currency", Id = "Diamonds", KeepAmount = "5m", MinAmount = "50m"},
    ["Hype Egg 2"] = {Class = "Lootbox", Id = "Hype Egg 2", MinAmount = 1},
    ["Daycare egg 5"] = {Class = "Egg", Id = "Huge Machine Egg 5", MinAmount = 1},
    ["Secret pet1"] = {Class = "Pet", Id = "Rainbow Swirl", MinAmount = 1, AllVariants = true},
    ["Secret pet2"] = {Class = "Pet", Id = "Banana", MinAmount = 1, AllVariants = true},
    ["Secret pet3"] = {Class = "Pet", Id = "Coin", MinAmount = 1, AllVariants = true},
    ["Secret pet4"] = {Class = "Pet", Id = "Yellow Lucky Block", MinAmount = 1, AllVariants = true},
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/34915da4ad87a5028e1fd64efbe3543f.lua"))()
