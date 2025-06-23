if minetest.get_modpath("mobs_monster") then

    player_api.register_model("mobs_stone_monster.b3d", {
        animation_speed = 15,
        textures = {},
        animations = {
            stand     = {x = 0,   y = 14},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true,
            collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 15, y = 38},
            mine      = {x = 40, y = 63},
            walk_mine = {x = 40, y = 63},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true,
                collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {-0.4, -1, -0.4, 0.4, 0.8, 0.4},
        stepheight = 0.6,
        eye_height = .55,
    })

    player_api.register_model("mobs_dungeon_master.b3d", {
        animation_speed = 15,
        textures = {},
        animations = {
            stand     = {x = 0,   y = 19},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true,
            collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 20, y = 35},
            mine      = {x = 36, y = 48},
            walk_mine = {x = 36, y = 48},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true,
                collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {-0.7, -1, -0.7, 0.7, 1.6, 0.7},
        stepheight = 2.2,
        eye_height = 1.5,
    })

    player_api.register_model("zmobs_lava_flan.x", {
        animation_speed = 15,
        textures = {},
        animations = {
            stand     = {x = 0,   y = 8},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true,
            collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 10, y = 18},
            mine      = {x = 20, y = 28},
            walk_mine = {x = 20, y = 28},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true,
                collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {-0.5, -0.5, -0.5, 0.5, 1.5, 0.5},
        stepheight = .6,
        eye_height = 1,
    })

    player_api.register_model("mobs_mese_monster.b3d", {
        animation_speed = 18,
        textures = {},
        animations = {
            stand     = {x = 60,   y = 83},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true,
            collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 10, y = 41},
            mine      = {x = 175, y = 189},
            walk_mine = {x = 110, y = 113},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true,
                collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {-0.75, -0.5, -0.75, 0.75, 2.5, 0.75},
        visual_size = {x = 10, y = 10},
        stepheight = .6,
        eye_height = 1,
    })

    player_api.register_model("mobs_oerkki.b3d", {
        animation_speed = 15,
        textures = {},
        animations = {
            stand     = {x = 0,   y = 23},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true, collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 24, y = 36},
            mine      = {x = 37, y = 49},
            walk_mine = {x = 37, y = 49},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true, collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {-0.4, -1, -0.4, 0.4, 0.9, 0.4},
        stepheight = .6,
        eye_height = .7,
    })

    player_api.register_model("mobs_sand_monster.b3d", {
        animation_speed = 15,
        textures = {},
        animations = {
            stand     = {x = 0,   y = 39},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true, collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 41, y = 72},
            mine      = {x = 74, y = 105},
            walk_mine = {x = 74, y = 105},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true, collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {-0.4, -1, -0.4, 0.4, 0.8, 0.4},
        stepheight = .6,
        eye_height = .7,
    })

    player_api.register_model("mobs_spider.b3d", {
        animation_speed = 15,
        textures = {},
        animations = {
            stand     = {x = 0,   y = 0},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true, collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 1, y = 21},
            mine      = {x = 25, y = 45},
            walk_mine = {x = 25, y = 45},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true, collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {-0.8, -0.5, -0.8, 0.8, 0, 0.8},
        stepheight = .6,
        eye_height = 0,
    })

    player_api.register_model("mobs_tree_monster.b3d", {
        animation_speed = 15,
        textures = {},
        animations = {
            stand     = {x = 0,   y = 24},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true, collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 25, y = 47},
            mine      = {x = 48, y = 62},
            walk_mine = {x = 48, y = 62},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true, collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {-0.4, -1, -0.4, 0.4, 0.8, 0.4},
        stepheight = .6,
        eye_height = .55,
    })
end

