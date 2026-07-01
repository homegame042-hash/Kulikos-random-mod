
SMODS.Enhancement {
    key = 'booster_6j7elv',
    pos = { x = 0, y = 0 },
    config = {
        extra = {
            xmult0 = 2,
            dollars0 = 1,
            dollars = 10
        }
    },
    loc_txt = {
        name = '???',
        text = {
            [1] = 'You have no idea what this card is',
            [2] = 'but it gives {C:red}2X Mult{} and {C:red}-1${} when played',
            [3] = 'BUT if you discard this card',
            [4] = 'it will take away {C:money}10${}',
            [5] = 'Also this card counts for {C:attention}every{} suit.'
        }
    },
    atlas = 'CustomEnhancements',
    any_suit = true,
    replace_base_card = true,
    no_rank = false,
    no_suit = false,
    always_scores = false,
    unlocked = true,
    discovered = true,
    no_collection = false,
    weight = 5,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            return {
                Xmult = 2,
                extra = {
                    
                    func = function()
                        
                        local current_dollars = G.GAME.dollars
                        local target_dollars = G.GAME.dollars - 1
                        local dollar_value = target_dollars - current_dollars
                        ease_dollars(dollar_value)
                        card_eval_status_text(card, 'extra', nil, nil, nil, {message = "-"..tostring(1), colour = G.C.MONEY})
                        return true
                    end,
                    colour = G.C.MONEY
                }
            }
        end
        if context.discard and context.other_card == card then
            return {
                
                func = function()
                    
                    local current_dollars = G.GAME.dollars
                    local target_dollars = G.GAME.dollars - 10
                    local dollar_value = target_dollars - current_dollars
                    ease_dollars(dollar_value)
                    card_eval_status_text(card, 'extra', nil, nil, nil, {message = "-"..tostring(10), colour = G.C.MONEY})
                    return true
                end
            }
        end
    end
}