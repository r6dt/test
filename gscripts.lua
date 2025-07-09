getgenv().GRANK_FIRST = true
getgenv().GEVENT_FPS = 5
getgenv().GMAX_MAIL_COST = "1m"
getgenv().GUSE_BOOSTS = true

getgenv().GHATCH_CHARGED_EGGS = true
getgenv().GDO_GYM_EVENT = true
getgenv().GGYM_EVENT_STOP_AFTER_BENCH = 20
getgenv().GGYM_EVENT_STAT_CONFIG = {
    ["Stamina"] = 0,
    ["CritChance"] = 0,
    ["Strength"] = 100,
    ["Size"] = 1
}

getgenv().GENCHANTS = {
    "Lucky Eggs", "Lucky Eggs", "Lucky Eggs", "Lucky Eggs",
    "Lucky Eggs", "Lucky Eggs", "Lucky Eggs", "Lucky Eggs",
    "Lucky Eggs", "Lucky Eggs", "Lucky Eggs"
    } -- apparently others dont work
getgenv().GAUTO_UPGRADE_PETS = true
getgenv().GLOOTBOXES = {"All"}
getgenv().GCLEAR_FAVORITE_PETS = true
getgenv().GPROGRESS_MODE = "Hybrid"
getgenv().GGFX_MODE = 1
getgenv().GRANK_TO = 8
getgenv().GZONE_TO = 999
getgenv().GHATCH_SPEED_MS = 0
getgenv().GWAIT_AT_GATES_TILL_RANK = 5

getgenv().GMAX_ZONE_UPGRADE_COST = 200000
getgenv().GUSE_ULTIMATES = {"Tsunami", "Tornado", "Pet Surge", "Chest Spell","Ground Pound"}
getgenv().GUSE_FLAGS = {"Fortune Flag","Diamonds Flag","Coins Flag"}
getgenv().GPOTIONS = {"Coins","Lucky","Treasure Hunter","Walkspeed","Diamonds","Damage"}
-- getgenv().GENCHANTS = {"Criticals","Treasure Hunter","Diamonds","Lucky Eggs","Huge Hunter","Tap Power","Strong Pets"}
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
    ["Send Diamonds"] = {Class = "Currency", Id = "Diamonds", KeepAmount = "5m", MinAmount = "1b"},
    ["Hype Egg 2"] = {Class = "Lootbox", Id = "Hype Egg 2", MinAmount = 1},
    ["Daycare egg 5"] = {Class = "Egg", Id = "Huge Machine Egg 5", MinAmount = 1},
    ["Secret pet1"] = {Class = "Pet", Id = "Rainbow Swirl", MinAmount = 1, AllVariants = true},
    ["Secret pet2"] = {Class = "Pet", Id = "Banana", MinAmount = 1, AllVariants = true},
    ["Secret pet3"] = {Class = "Pet", Id = "Coin", MinAmount = 1, AllVariants = true},
    ["Secret pet4"] = {Class = "Pet", Id = "Yellow Lucky Block", MinAmount = 1, AllVariants = true},
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/sxdasfvas/test/02941832ce3bf5a4cb96b9f8da0c98e08c45546d/gscripts.lua"))()
