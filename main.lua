SMODS.Atlas({
    key = "modicon", 
    path = "ModIcon.png", 
    px = 34,
    py = 34,
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "CustomJokers", 
    path = "CustomJokers.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "CustomConsumables", 
    path = "CustomConsumables.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "CustomBoosters", 
    path = "CustomBoosters.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "CustomEnhancements", 
    path = "CustomEnhancements.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "CustomDecks", 
    path = "CustomDecks.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

local NFS = require("nativefs")
to_big = to_big or function(a) return a end
lenient_bignum = lenient_bignum or function(a) return a end
-- this function is used to load everything within a folder.-- Jokerforge doesnt use it because it doesnt make loading order easy
local function load_folder(path)
    local files = NFS.getDirectoryItemsInfo(mod_path .. "/" .. path)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file(path .. file_name))()
        end
    end
end
-- load the jokers
if true then
    assert(SMODS.load_file("jokers/uueajoker.lua"))()
    assert(SMODS.load_file("jokers/jokr.lua"))()
    assert(SMODS.load_file("jokers/hypernova.lua"))()
    assert(SMODS.load_file("jokers/zoomin.lua"))()
    assert(SMODS.load_file("jokers/fertilizer.lua"))()
    assert(SMODS.load_file("jokers/photolarp.lua"))()
    assert(SMODS.load_file("jokers/hanginglarp.lua"))()
    assert(SMODS.load_file("jokers/circle.lua"))()
    assert(SMODS.load_file("jokers/apanofcringles.lua"))()
    assert(SMODS.load_file("jokers/trojan.lua"))()
    assert(SMODS.load_file("jokers/upgrader.lua"))()
    assert(SMODS.load_file("jokers/maasdam.lua"))()
    assert(SMODS.load_file("jokers/oopsall7s.lua"))()
    assert(SMODS.load_file("jokers/triangle.lua"))()
    assert(SMODS.load_file("jokers/square.lua"))()
end
-- load the consumables
if true then
    assert(SMODS.load_file("consumables/carrot.lua"))()
    assert(SMODS.load_file("consumables/bonana.lua"))()
    assert(SMODS.load_file("consumables/apple.lua"))()
    assert(SMODS.load_file("consumables/cucumber.lua"))()
    assert(SMODS.load_file("consumables/potato.lua"))()
    assert(SMODS.load_file("consumables/cherryandhisadoptedbrother.lua"))()
    assert(SMODS.load_file("consumables/tree.lua"))()
    assert(SMODS.load_file("consumables/lemon.lua"))()
    assert(SMODS.load_file("consumables/purpletomato.lua"))()
    assert(SMODS.load_file("consumables/watermelon.lua"))()
end
--load the sets
assert(SMODS.load_file("consumables/sets.lua"))()
-- load the enhancements
if true then
    assert(SMODS.load_file("enhancements/booster_6j7elv.lua"))()
end

-- load the decks
if true then
    assert(SMODS.load_file("decks/grow_a_garden.lua"))()
end



assert(SMODS.load_file("rarities.lua"))()


-- load boosters
assert(SMODS.load_file("boosters.lua"))()
SMODS.ObjectType({
    key = "kulikosr_food",
    cards = {
        ["j_gros_michel"] = true,
        ["j_egg"] = true,
        ["j_ice_cream"] = true,
        ["j_cavendish"] = true,
        ["j_turtle_bean"] = true,
        ["j_diet_cola"] = true,
        ["j_popcorn"] = true,
        ["j_ramen"] = true,
        ["j_selzer"] = true
    },
})

SMODS.ObjectType({
    key = "kulikosr_mycustom_jokers",
    cards = {
        ["j_kulikosr_uueajoker"] = true,
        ["j_kulikosr_jokr"] = true,
        ["j_kulikosr_hypernova"] = true,
        ["j_kulikosr_upgrader"] = true
    },
})

SMODS.ObjectType({
    key = "kulikosr_kulikosr_jokers",
    cards = {
        ["j_kulikosr_zoomin"] = true,
        ["j_kulikosr_fertilizer"] = true,
        ["j_kulikosr_photolarp"] = true,
        ["j_kulikosr_circle"] = true,
        ["j_kulikosr_apanofcringles"] = true,
        ["j_kulikosr_trojan"] = true,
        ["j_kulikosr_oopsall7s"] = true,
        ["j_kulikosr_triangle"] = true,
        ["j_kulikosr_square"] = true
    },
})

SMODS.ObjectType({
    key = "kulikosr_maasdam",
    cards = {
        ["j_kulikosr_maasdam"] = true
    },
})


SMODS.current_mod.optional_features = function()
    return {
        cardareas = {} 
    }
end