if minetest.get_modpath("animalia") then
    player_api.register_model("animalia_bear.b3d", {
        animation_speed = 15,
        textures = {},
        animations = {
            stand     = {x = 1,   y = 69},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true,
            collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 61, y = 79},
            mine      = {x = 101, y = 120},
            walk_mine = {x = 0, y = 0},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true,
                collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {0.5, 1.1, 0.2, -0.2, 0, -0.2},
        visual_size = {x = 10, y = 10},
        stepheight = 1.1,
        eye_height = 1,
    })

    player_api.register_model("animalia_cat.b3d", {
        animation_speed = 15,
        textures = {},
        animations = {
            stand     = {x = 1,   y = 60},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true,
            collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 70, y = 89},
            mine      = {x = 101, y = 120},
            walk_mine = {x = 0, y = 0},
            sit       = {x = 130,  y = 139, eye_height = 0.8, override_local = true,
                collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {0.2, .4, 0.2, -0.2, 0, -0.2},
        visual_size = {x = 10, y = 10},
        stepheight = 1.1,
        eye_height = .6,
    })

    player_api.register_model("animalia_chicken.b3d", {
        animation_speed = 15,
        textures = {},
        animations = {
            stand     = {x = 1,   y = 39},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true,
            collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 41, y = 59},
            mine      = {x = 0, y = 0},
            walk_mine = {x = 41, y = 59},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true,
                collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {0.25, .5, 0.25, -0.25, 0, -0.25},
        visual_size = {x = 10, y = 10},
        stepheight = 1.1,
        eye_height = .7,
    })

    player_api.register_model("animalia_cow.b3d", {
        animation_speed = 15,
        textures = {},
        animations = {
            stand     = {x = 1,   y = 59},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true,
            collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 71, y = 89},
            mine      = {x = 0, y = 0},
            walk_mine = {x = 71, y = 89},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true,
                collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {.5, 1.1, .5, -.5, 0, -.5},
        visual_size = {x = 10, y = 10},
        stepheight = 1.1,
        eye_height =1.5,
    })

    player_api.register_model("animalia_fox.b3d", {
        animation_speed = 15,
        textures = {},
        animations = {
            stand     = {x = 1,   y = 39},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true,
            collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 41, y = 59},
            mine      = {x = 0, y = 0},
            walk_mine = {x = 41, y = 59},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true,
                collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {0.35, 0.5, 0.35, -0.35, 0, -0.35},
        visual_size = {x = 10, y = 10},
        stepheight = 1.1,
        eye_height = .6,
    })

    player_api.register_model("animalia_frog.b3d", {
        animation_speed = 50,
        textures = {},
        animations = {
            stand     = {x = 1,   y = 40},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true,
            collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 50, y = 80},
            mine      = {x = 0, y = 0},
            walk_mine = {x = 50, y = 80},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true,
                collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {-0.25, 0, -0.25, 0.2, 0.4, 0.25},
        visual_size = {x = 10, y = 10},
        stepheight = 1.1,
        eye_height = .4,
    })

    player_api.register_model("animalia_bull_frog.b3d", {
        animation_speed = 50,
        textures = {},
        animations = {
            stand     = {x = 1,   y = 40},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true, collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 50, y = 79},
            mine      = {x = 140, y = 160},
            walk_mine = {x = 140, y = 160},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true, collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {-0.4, 0, -0.4, 0.4, 0.5, 0.4},
        visual_size = {x = 10, y = 10},
        stepheight = 1.1,
        eye_height = .4,
    })

    player_api.register_model("animalia_dart_frog.b3d", {
        animation_speed = 50,
        textures = {},
        animations = {
            stand     = {x = 1,   y = 40},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true, collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 50, y = 69},
            mine      = {x = 0, y = 0},
            walk_mine = {x = 50, y = 69},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true, collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {-0.15, 0, -0.15, 0.15, 0.3, 0.15},
        visual_size = {x = 10, y = 10},
        stepheight = 1.1,
        eye_height = .4,
    })

    player_api.register_model("animalia_horse.b3d", {
        animation_speed = 10,
        textures = {},
        animations = {
            stand     = {x = 1,   y = 59},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true, collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 70, y = 89},
            mine      = {x = 170, y = 205},
            walk_mine = {x = 70, y = 89},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true, collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {.5, 2, .5, -.5, -.1, -.5 },
        visual_size = {x = 10, y = 10},
        stepheight = 1.1,
        eye_height = 2,
    })

    player_api.register_model("animalia_opossum.b3d", {
        animation_speed = 10,
        textures = {},
        animations = {
            stand     = {x = 1,   y = 59},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true, collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 70, y = 89},
            mine      = {x = 171, y = 200},
            walk_mine = {x = 70, y = 89},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true, collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {.25, .4, .25, -.25, 0, -.25 },
        visual_size = {x = 10, y = 10},
        stepheight = 1.1,
        eye_height = .4,
    })

    player_api.register_model("animalia_owl.b3d", {
        animation_speed = 20,
        textures = {},
        animations = {
            stand     = {x = 1,   y = 60},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true, collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 101, y = 119},
            mine      = {x = 0, y = 0},
            walk_mine = {x = 71, y = 89},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true, collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {.15, .3, .15, -.15, 0, -.15 },
        visual_size = {x = 10, y = 10},
        stepheight = 1.1,
        eye_height = .8,
    })

    player_api.register_model("animalia_pig.b3d", {
        animation_speed = 20,
        textures = {},
        animations = {
            stand     = {x = 1,   y = 60},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true, collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 70, y = 89},
            mine      = {x = 0, y = 0},
            walk_mine = {x = 70, y = 89},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true, collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {.35, .75, .35, -.35, 0, -.35 },
        visual_size = {x = 10, y = 10},
        stepheight = 1.1,
        eye_height = .7,
    })

    player_api.register_model("animalia_rat.b3d", {
        animation_speed = 20,
        textures = {},
        animations = {
            stand     = {x = 1,   y = 39},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true, collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 51, y = 69},
            mine      = {x = 111, y = 119},
            walk_mine = {x = 51, y = 69},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true, collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {.15, .3, .15, -.15, 0, -.15 },
        visual_size = {x = 10, y = 10},
        stepheight = 1.1,
        eye_height = .2,
    })

    player_api.register_model("animalia_reindeer.b3d", {
        animation_speed = 20,
        textures = {},
        animations = {
            stand     = {x = 1,   y = 59},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true, collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 70, y = 89},
            mine      = {x = 0, y = 0},
            walk_mine = {x = 70, y = 89},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true, collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {.45, 1.4, .45, -.45, 0, -.45 },
        visual_size = {x = 10, y = 10},
        stepheight = 1.1,
        eye_height = 1.5,
    })

    player_api.register_model("animalia_sheep.b3d", {
        animation_speed = 20,
        textures = {},
        animations = {
            stand     = {x = 1,   y = 59},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true, collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 70, y = 89},
            mine      = {x = 0, y = 0},
            walk_mine = {x = 70, y = 89},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true, collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {.4, 1.1, .4, -.4, 0, -.4 },
        visual_size = {x = 10, y = 10},
        stepheight = 1.1,
        eye_height = 1,
    })

    player_api.register_model("animalia_clownfish.b3d", {
        animation_speed = 20,
        textures = {},
        animations = {
            stand     = {x = 30,   y = 40},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true, collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 1, y = 20},
            mine      = {x = 0, y = 0},
            walk_mine = {x = 1, y = 20},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true, collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {.15, .3, .15, -.15, 0, -.15 },
        visual_size = {x = 10, y = 10},
        stepheight = 1.1,
        eye_height = .2,
    })

    player_api.register_model("animalia_angelfish.b3d", {
        animation_speed = 20,
        textures = {},
        animations = {
            stand     = {x = 30,   y = 40},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true, collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 1, y = 20},
            mine      = {x = 0, y = 0},
            walk_mine = {x = 1, y = 20},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true, collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {.15, .3, .15, -.15, 0, -.15 },
        visual_size = {x = 10, y = 10},
        stepheight = 1.1,
        eye_height = .2,
    })

    player_api.register_model("animalia_turkey.b3d", {
        animation_speed = 20,
        textures = {},
        animations = {
            stand     = {x = 0,   y = 0},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true, collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 10, y = 30},
            mine      = {x = 0, y = 0},
            walk_mine = {x = 10, y = 30},
            sit       = {x = 0,  y = 0, eye_height = 0.8, override_local = true, collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {.3, 1.1, .3, -.3, 0, -.3 },
        visual_size = {x = 10, y = 10},
        stepheight = 1.1,
        eye_height = 1.1,
    })

    player_api.register_model("animalia_wolf.b3d", {
        animation_speed = 30,
        textures = {},
        animations = {
            stand     = {x = 1,   y = 60},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true, collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 70, y = 89},
            mine      = {x = 0, y = 0},
            walk_mine = {x = 10, y = 30},
            sit       = {x = 130,  y = 139, eye_height = 0.8, override_local = true, collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {.35, .7, .35, -.35, 0, -.35 },
        visual_size = {x = 10, y = 10},
        stepheight = 1.1,
        eye_height = .9,
    })

    player_api.register_model("animalia_bird.b3d", {
        animation_speed = 30,
        textures = {},
        animations = {
            stand     = {x = 1,   y = 100},
            lay       = {x = 0, y = 0, eye_height = 0.3, override_local = true, collisionbox = {-0.6, 0.0, -0.6, 0.6, 0.3, 0.6}},
            walk      = {x = 110, y = 130},
            mine      = {x = 0, y = 0},
            walk_mine = {x = 140, y = 160},
            sit       = {x = 130,  y = 139, eye_height = 0.8, override_local = true, collisionbox = {-0.3, 0.0, -0.3, 0.3, 1.0, 0.3}}
        },
        collisionbox = {.2, .4, .2, -.2, 0, -.2 },
        visual_size = {x = 10, y = 10},
        stepheight = 1.1,
        eye_height = .6,
    })




end

-- minx, miny, minz, maxx, maxy, maxz
