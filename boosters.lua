
SMODS.Booster {
    key = 'seed_pack',
    loc_txt = {
        name = "Seed Pack",
        text = {
            [1] = 'Choose {C:diamonds}1{} of up to {C:diamonds}3{} {C:green}seed{} cards to be used immediately',
            [2] = 'or to go into consumables area'
        },
        group_name = "Seed Pack"
    },
    config = { extra = 3, choose = 1 },
    cost = 5,
    atlas = "CustomBoosters",
    pos = { x = 0, y = 0 },
    draw_hand = true,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra }
        }
    end,
    create_card = function(self, card, i)
        return {
            set = "seed_cards",
            area = G.pack_cards,
            skip_materialize = true,
            soulable = true,
            key_append = "kulikosr_seed_pack"
        }
    end,
    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, HEX("0ce609"))
        ease_background_colour({ new_colour = HEX('0ce609'), special_colour = HEX("07d74b"), contrast = 2 })
    end,
    particles = function(self)
        G.booster_pack_sparkles = Particles(1, 1, 0, 0, {
            timer = 0.015,
            scale = 0.2,
            initialize = true,
            lifespan = 1,
            speed = 1.1,
            padding = -1,
            attach = G.ROOM_ATTACH,
            colours = { G.C.WHITE, lighten(G.C.PURPLE, 0.4), lighten(G.C.PURPLE, 0.2), lighten(G.C.GOLD, 0.2) },
            fill = true
        })
        G.booster_pack_sparkles.fade_alpha = 1
        G.booster_pack_sparkles:fade(1, 0)
    end,
}
