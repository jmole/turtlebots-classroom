local register_item = core.register_item


register_item(':', {
    type = 'none',
    wield_image = 'void_hand_hand.png',
    wield_scale = {x = 0.5, y = 1, z = 4},
    tool_capabilities = {
        full_punch_interval = 0.9,
        max_drop_level = 0,
        groupcaps = {
            crumbly = {
                times = {[2] = 3.00, [3] = 0.70},
                uses = 0,
                maxlevel = 1,
            },
            snappy = {
                times = {[3] = 0.40},
                uses = 0,
                maxlevel = 1,
            },
            oddly_breakable_by_hand = {
                times = {[1] = 3.50, [2] = 2.00, [3] = 0.70},
                uses = 0,
            },
        },
        damage_groups = {fleshy = 1},
    }
})

-- Function to set up hotbar
local function setup_hotbar(player)
    local inv = player:get_inventory()
    -- Clear all hotbar slots
    for i = 1, 8 do
        inv:set_stack("main", i, "")
    end
    -- Set first slot to turtlebots:on
    inv:set_stack("main", 1, "turtlebots:on")
end

-- Set up player's hotbar when they join
core.register_on_joinplayer(function(player)
    setup_hotbar(player)
    -- Hide health bar from HUD
    player:hud_set_flags({
        healthbar = false
    })
    -- Set hotbar to show only 2 slots
    player:hud_set_hotbar_itemcount(2)
    -- disable node damage and drowning
    player:set_flags({node_damage = false, drowning = false})
end)

-- Disable all player HP changes
core.register_on_player_hpchange(function(player, hp_change, reason) return 0, true end, true)

-- Ensure players only have 1 turtlebot and 1 empty slot (for the hand)
core.register_globalstep(function(dtime)
    for _, player in ipairs(core.get_connected_players()) do
        setup_hotbar(player)
        player:set_hp(1000)
        -- Make it look nice outside (sunrise)
        player:override_day_night_ratio(0.8)
        core.set_timeofday(0.25)
    end
end)

