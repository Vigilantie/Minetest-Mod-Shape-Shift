if minetest.get_modpath("mobs_animal") then

    player_api.register_model("mobs_bee.b3d", {
        animation_speed = 15,
        textures = {},
        animations = {
            stand     = {x = 0,   y = 30},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true,
            collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 35, y = 65},
            mine      = {x = 0, y = 0},
            walk_mine = {x = 0, y = 0},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true,
                collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {-0.2, -0.01, -0.2, 0.2, 0.5, 0.2},
        stepheight = 0.6,
        eye_height = .2,
    })

    player_api.register_model("mobs_bunny.b3d", {
        animation_speed = 15,
        textures = {},
        animations = {
            stand     = {x = 1,   y = 15},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true,
            collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 16, y = 24},
            mine      = {x = 16, y = 24},
            walk_mine = {x = 0, y = 0},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true,
                collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {-0.268, -0.5, -0.268, 0.268, 0.167, 0.268},
        stepheight = 0.6,
        eye_height = .2,
    })

    player_api.register_model("mobs_chicken.b3d", {
        animation_speed = 15,
        textures = {},
        animations = {
            stand     = {x = 1,   y = 30},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true,
            collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 71, y = 90},
            mine      = {x = 0, y = 0},
            walk_mine = {x = 0, y = 0},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true,
                collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {-0.3, -0.75, -0.3, 0.3, 0.1, 0.3},
        stepheight = 0.6,
        eye_height = .00001,
    })

    player_api.register_model("mobs_cow.b3d", {
        animation_speed = 15,
        textures = {},
        animations = {
            stand     = {x = 35,   y = 75},
            lay       = {x = 165, y = 185, eye_height = 0.3, override_local = true,
            collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 85, y = 114},
            mine      = {x = 145, y = 160},
            walk_mine = {x = 0, y = 0},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true,
                collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.2, 0.4},
        stepheight = 0.6,
        eye_height = 1.25,
    })

    player_api.register_model("mobs_kitten.b3d", {
        animation_speed = 42,
        textures = {},
        animations = {
            stand     = {x = 97,   y = 192},
            lay       = {x = 165, y = 185, eye_height = 0.3, override_local = true,
            collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 0, y = 96},
            mine      = {x = 0, y = 0},
            walk_mine = {x = 0, y = 0},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true,
                collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {-0.3, -0.3, -0.3, 0.3, 0.1, 0.3},
        visual_size={x=.5,y=.5},
        stepheight = 1.1,
        eye_height = .4,
    })

    player_api.register_model("mobs_panda.b3d", {
        animation_speed = 15,
        textures = {},
        animations = {
            stand     = {x = 130,   y = 270},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true,
            collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 10, y = 70},
            mine      = {x = 80, y = 120},
            walk_mine = {x = 0, y = 0},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true,
                collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {-0.4, -0.45, -0.4, 0.4, 0.45, 0.4},
        stepheight = .6,
        eye_height = .2,
    })

    player_api.register_model("mobs_penguin.b3d", {
        animation_speed = 15,
        textures = {},
        animations = {
            stand     = {x = 1,   y = 20},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true,
            collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 25, y = 45},
            mine      = {x = 0, y = 0},
            walk_mine = {x = 0, y = 0},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true,
                collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {-0.2, -0.0, -0.2,  0.2, 0.5, 0.2},
        visual_size = {x = 0.25, y = 0.25},
        stepheight = 1.1,
        eye_height = .55,
    })

    player_api.register_model("mobs_rat.b3d", {
        animation_speed = 15,
        textures = {},
        animations = {
            stand     = {x = 0,   y = 0},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true,
            collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 0, y = 0},
            mine      = {x = 0, y = 0},
            walk_mine = {x = 0, y = 0},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true,
                collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {-0.2, -1, -0.2, 0.2, -0.8, 0.2},
        stepheight = .6,
        eye_height = -.7,
    })

    player_api.register_model("mobs_pumba.b3d", {
        animation_speed = 15,
        textures = {},
        animations = {
            stand     = {x = 25,   y = 55},
            lay       = {x = 1, y = 2, eye_height = 0.3, override_local = true,
            collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 70, y = 100},
            mine      = {x = 70, y = 100},
            walk_mine = {x = 0, y = 0},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true,
                collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {-0.4, -0.01, -0.4, 0.4, 0.95, 0.4},
        stepheight = .6,
        eye_height = .5,
    })


end