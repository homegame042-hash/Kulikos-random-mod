SMODS.Rarity {
    key = "but",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0.019,
    badge_colour = HEX('00ffe0'),
    loc_txt = {
        name = "But"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}