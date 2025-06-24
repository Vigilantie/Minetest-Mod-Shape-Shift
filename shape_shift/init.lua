local modpath = minetest.get_modpath("shape_shift")
dofile(modpath .. "/mobs_animal.lua")
dofile(modpath .. "/animalia.lua")
dofile(modpath .. "/mobs_monster.lua")

-- Settings
local health_setting = minetest.settings:get_bool("mob_health", true)
local speed_setting = minetest.settings:get_bool("mob_speed", true)
local breath_setting = minetest.settings:get_bool("mob_breath", true)
local gravity_setting = minetest.settings:get_bool("mob_gravity", true)

-- Getting the mod's that are enabled
local mobs_animal = minetest.get_modpath("mobs_animal")
local animalia = minetest.get_modpath("animalia")
local mobs_monster = minetest.get_modpath("mobs_monster")

-- Making the privledge
minetest.register_privilege("shape_shift", {
    description = "Allows use of shape shifting",
})

--[[
TODO: Add compatibility for mobs_skeletons, mob_mese_monster, and nssm
TODO: Add a chatcommand that allows admins to change the apearence of other players (Maybe)
]]

local valid_characters = {
    normal = true,
    help = true,
    showname = true,
    hidename = true,
    bee = true,
    bunny = true,
    chicken = true,
    cow = true,
    kitten = true,
    rat = true,
    panda = true,
    penguin = true,
    pumba = true,
    --Animalia
    bear = true,
    cat = true,
    chicken1 = true,
    cow1 = true,
    fox = true,
    frog = true,
    bullfrog = true,
    dartfrog = true,
    horse = true,
    opossum = true,
    owl = true,
    pig = true,
    mouse = true,
    reindeer = true,
    sheep = true,
    clownfish = true,
    angelfish = true,
    turkey = true,
    wolf = true,
    bird = true,
    dirtmonster = true,
    dungeonmaster = true,
    landguard = true,
    lavaflan = true,
    mesemonster = true,
    oerkki = true,
    sandmonster = true,
    spider = true,
    stonemonster = true,
    treemonster = true,
}

local character_textures = {
    -- Mobs Animal
    bee = {"mobs_bee.png"},
    bunny = {"mobs_bunny_grey.png","mobs_bunny_brown.png","mobs_bunny_white.png"},
    chicken = {"mobs_chicken.png"},
    cow = {"mobs_cow.png"},
    kitten = {"mobs_kitten_striped.png", "mobs_kitten_splotchy.png", "mobs_kitten_ginger.png", "mobs_kitten_sandy.png"},
    rat = {"mobs_rat.png"},
    panda = {"mobs_panda.png"},
    penguin = {"mobs_penguin.png"},
    pumba = {"mobs_pumba.png"},
    -- Animalia
    bear = {"animalia_bear_grizzly.png"},
    cat = {"animalia_cat_1.png", "animalia_cat_2.png", "animalia_cat_3.png", "animalia_cat_4.png", "animalia_cat_5.png", "animalia_cat_6.png", "animalia_cat_7.png", "animalia_cat_8.png", "animalia_cat_9.png", "animalia_cat_ash.png", "animalia_cat_birch.png",},
    chicken1 = {"animalia_rooster_1.png", "animalia_rooster_2.png", "animalia_rooster_3.png", "animalia_chicken_1.png", "animalia_chicken_2.png", "animalia_chicken_3.png"},
    cow1 = {"animalia_cow_1.png", "animalia_cow_2.png", "animalia_cow_3.png", "animalia_cow_4.png", "animalia_cow_5.png", "animalia_cow_1.png^animalia_cow_udder.png", "animalia_cow_2.png^animalia_cow_udder.png", "animalia_cow_3.png^animalia_cow_udder.png", "animalia_cow_4.png^animalia_cow_udder.png", "animalia_cow_5.png^animalia_cow_udder.png"},
    fox = {"animalia_fox_1.png"},
    frog = {"animalia_tree_frog.png"},
    bullfrog = {"animalia_bull_frog.png"},
    dartfrog = {"animalia_dart_frog_1.png", "animalia_dart_frog_2.png", "animalia_dart_frog_3.png"},
    horse = {"animalia_horse_1.png", "animalia_horse_2.png", "animalia_horse_3.png", "animalia_horse_4.png", "animalia_horse_5.png"},
    opossum = {"animalia_opossum.png"},
    owl = {"animalia_owl.png"},
    pig = {"animalia_pig_1.png^animalia_pig_tusks.png", "animalia_pig_2.png^animalia_pig_tusks.png", "animalia_pig_3.png^animalia_pig_tusks.png", "animalia_pig_1.png", "animalia_pig_2.png", "animalia_pig_3.png", "animalia_pig_1.png", "animalia_pig_2.png", "animalia_pig_3.png"},
    mouse = {"animalia_rat_1.png","animalia_rat_2.png","animalia_rat_3.png"},
    reindeer = {"animalia_reindeer.png", "animalia_reindeer_calf.png"},
    sheep = {"animalia_sheep.png^animalia_sheep_wool.png"},
    clownfish = {"animalia_clownfish.png", "animalia_blue_tang.png"},
    angelfish = {"animalia_angelfish.png"},
    turkey = { "animalia_turkey_tom.png","animalia_turkey_hen.png","animalia_turkey_chick.png"},
    wolf = {"animalia_wolf_1.png","animalia_wolf_2.png","animalia_wolf_3.png","animalia_wolf_4.png"},
    bird = {"animalia_cardinal.png", "animalia_bluebird.png", "animalia_goldfinch.png"},
    -- Mobs Monster
    dirtmonster = {"mobs_dirt_monster.png", "mobs_dirt_monster2.png"},
    dungeonmaster = {"mobs_dungeon_master.png","mobs_dungeon_master2.png","mobs_dungeon_master3.png"},
    landguard = {"mobs_land_guard.png", "mobs_land_guard2.png", "mobs_land_guard3.png"},
    lavaflan = {"zmobs_lava_flan.png", "zmobs_lava_flan2.png", "zmobs_lava_flan3.png"},
    mesemonster = {"mobs_mese_monster_red.png", "mobs_mese_monster_green.png", "mobs_mese_monster_blue.png", "mobs_mese_monster_purple.png"},
    oerkki = {"mobs_oerkki.png", "mobs_oerkki2.png", "mobs_oerkki3.png"},
    sandmonster = {"mobs_sand_monster.png", "mobs_sand_monster2.png"},
    spider = {"mobs_spider_mese.png", "mobs_spider_orange.png", "mobs_spider_snowy.png", "mobs_spider_grey.png", "mobs_spider_crystal.png"},
    stonemonster = {"mobs_stone_monster.png", "mobs_stone_monster2.png"},
    treemonster = {"mobs_tree_monster.png", "mobs_tree_monster2.png"},
}

local character_speed = {
    bunny = 2.0,
    rat = 1.5,
    mouse = 1.5,
    horse = 3,
    bird = 1.5,
    owl = 1.5
}

local character_breath = {
    clownfish = 20000,
    angelfish = 20000,
}

local character_gravity = {
    chicken=.1,
    chicken1=.1,
}

local character_health = {
    -- Mobs Animal
    bee = 2,
    bunny = 4,
    chicken = 10,
    cow = 20,
    kitten = 10,
    panda = 24,
    penguin = 10,
    rat = 4,
    warthog = 15,
    -- Animalia
    bear = 20,
    cat=10,
    chicken1 = 5,
    cow1 = 20,
    fox = 10,
    frog = 5,
    horse = 40,
    opossum = 5,
    pig = 20,
    mouse = 5,
    reindeer = 15,
    sheep = 15,
    clowfish = 5,
    turkey = 8,
    wolf = 20,
    bird = 2,
    -- Mobs Monster
    dirtmonster = 27,
    dungeonmaster = 75,
    landguard = 65,
    lavaflan = 35,
    mesemonster = 40,
    oerkki = 34,
    sandmonster = 20,
    spider = 30,
    stonemonster = 35,
    treemonster = 40,
}

local bird_characters = {
    bird = true,
    owl = true,
}

local player_current_character = {}
local had_fly_priv = {}

-- The chat command
minetest.register_chatcommand("ss", {
    params = "<ss> [mob]",
    description = "Possible Subcommands: normal, -------Mobs Animal: bee, bunny, chicken, cow, kitten, panda, penguin, rat, warthog, pumba, -------Animalia: bear, cat, chicken1, cow1, fox, frog, bullfrog, dartfrog, horse, opossum, pig, mouse, reindeer, sheep, clownfish, angelfish, turkey, wolf, bird, -------Mobs Monster: dirtmonster, dungeonmaster, landguard, mesemonster, lavaflan, mesemonster, oerkki, sandmonster, spider, stonemonster, treemonster",
    privs = {shape_shift = true},
    func = function(name, param)
        local args = param:split(" ")
        local subcmd = args[1]
        local player = minetest.get_player_by_name(name)
        local privs = minetest.get_player_privs(name)
        if not player then
            return false, "Player not found."
        end

        local function get_random_texture(subcmd)
            local textures = character_textures[subcmd]
            if textures then
            return {textures[math.random(#textures)]}
            end
        end

        local function set_breath(player, subcmd)
            if not breath_setting then return end
                local breath = character_breath[subcmd] or 10
                player:set_properties({ breath_max = breath })
                player:set_breath(breath)
        end

        local function set_health(player, subcmd)
            if not health_setting then return end
                local health = character_health[subcmd] or 20
                player:set_properties({ hp_max = health })
                player:set_hp(health)
        end

        local function set_gravity(player, subcmd)
            if not gravity_setting then return end
                local gravity = character_gravity[subcmd] or 1
                player:set_physics_override({gravity = gravity})
        end

        local function set_speed(player, subcmd)
            if not speed_setting then return end
                local speed = character_speed[subcmd] or 1.0
                player:set_physics_override({speed = speed})
        end

        local function characteristics()
            player:set_properties({textures = get_random_texture(subcmd)})
            player_current_character[name] = subcmd
            player:set_nametag_attributes({color = {a = 0, r = 255, g = 255, b = 255}})
            set_breath(player, subcmd)
            set_speed(player, subcmd)
            set_health(player, subcmd)
            set_gravity(player, subcmd)
        end

        local function mob_models()
            -- Put you back to normal
            if subcmd == "normal" then
                player_api.set_model(player, "character.b3d")
                characteristics()
                player:set_nametag_attributes({color = {a = 255, r = 255, g = 255, b = 255}})
                return true, "You are now normal again!"
            -- Mobs Animal
            elseif subcmd == "bee" and mobs_animal then
                player_api.set_model(player, "mobs_bee.b3d")
                characteristics()
                return true, "You are now a Bee!"
            elseif subcmd == "bunny" and mobs_animal then
                player_api.set_model(player, "mobs_bunny.b3d")
                characteristics()
                return true, "You are now a Bunny!"
            elseif subcmd == "chicken" and mobs_animal then
                player_api.set_model(player, "mobs_chicken.b3d")
                characteristics()
                return true, "You are now a Chicken!"
            elseif subcmd == "cow" and mobs_animal then
                player_api.set_model(player, "mobs_cow.b3d")
                characteristics()
                return true, "You are now a Cow!"
            elseif subcmd == "kitten" and mobs_animal then
                player_api.set_model(player, "mobs_kitten.b3d")
                characteristics()
                return true, "You are now a Kitten!"
            elseif subcmd == "panda" and mobs_animal then
                player_api.set_model(player, "mobs_panda.b3d")
                characteristics()
                return true, "You are now a Panda!"
            elseif subcmd == "penguin" and mobs_animal then
                player_api.set_model(player, "mobs_penguin.b3d")
                characteristics()
                return true, "You are now a Penguin!"
            elseif subcmd == "rat" and mobs_animal then
                player_api.set_model(player, "mobs_rat.b3d")
                characteristics()
                return true, "You are now a Rat!"
            elseif subcmd == "warthog" and mobs_animal then
                player_api.set_model(player, "mobs_pumba.b3d")
                characteristics()
                return true, "You are now a Warthog!"
            elseif subcmd == "pumba" and mobs_animal then
                player_api.set_model(player, "mobs_pumba.b3d")
                characteristics()
                return true, "You are now Pumba!"
            -- Animalia
            elseif subcmd == "bear" and animalia then
                player_api.set_model(player, "animalia_bear.b3d")
                characteristics()
                return true, "You are now a Bear!"
            elseif subcmd == "cat" and animalia then
                player_api.set_model(player, "animalia_cat.b3d")
                characteristics()
                return true, "You are now a Cat!"
            elseif subcmd == "chicken1" and animalia then
                player_api.set_model(player, "animalia_chicken.b3d")
                characteristics()
                return true, "You are now a Chicken!"
            elseif subcmd == "cow1" and animalia then
                player_api.set_model(player, "animalia_cow.b3d")
                characteristics()
                return true, "You are now a Cow!"
            elseif subcmd == "fox" and animalia then
                player_api.set_model(player, "animalia_fox.b3d")
                characteristics()
                return true, "You are now a Fox!"
            elseif subcmd == "frog" and animalia then
                player_api.set_model(player, "animalia_frog.b3d")
                characteristics()
                return true, "You are now a Frog!"
            elseif subcmd == "bullfrog" and animalia then
                player_api.set_model(player, "animalia_bull_frog.b3d")
                characteristics()
                return true, "You are now a Bull Frog!"
            elseif subcmd == "dartfrog" and animalia then
                player_api.set_model(player, "animalia_dart_frog.b3d")
                characteristics()
                return true, "You are now a Dart Frog!"
            elseif subcmd == "horse" and animalia then
                player_api.set_model(player, "animalia_horse.b3d")
                characteristics()
                return true, "You are now a Horse!"
            elseif subcmd == "opossum" and animalia then
                player_api.set_model(player, "animalia_opossum.b3d")
                characteristics()
                return true, "You are now a Opossum!"
            elseif subcmd == "owl" and animalia then
                player_api.set_model(player, "animalia_owl.b3d")
                characteristics()
                return true, "You are now a Owl!"
            elseif subcmd == "pig" and animalia then
                player_api.set_model(player, "animalia_pig.b3d")
                characteristics()
                return true, "You are now a Pig!"
            elseif subcmd == "mouse" and animalia then
                player_api.set_model(player, "animalia_rat.b3d")
                characteristics()
                return true, "You are now a Rat!"
            elseif subcmd == "reindeer" and animalia then
                player_api.set_model(player, "animalia_reindeer.b3d")
                characteristics()
                return true, "You are now a Reindeer!"
            elseif subcmd == "sheep" and animalia then
                player_api.set_model(player, "animalia_sheep.b3d")
                characteristics()
                return true, "You are now a Sheep!"
            elseif subcmd == "clownfish" and animalia then
                player_api.set_model(player, "animalia_clownfish.b3d")
                characteristics()
                return true, "You are now a Clown Fish!"
            elseif subcmd == "angelfish" and animalia then
                player_api.set_model(player, "animalia_angelfish.b3d")
                characteristics()
                return true, "You are now a Angel Fish!"
            elseif subcmd == "turkey" and animalia then
                player_api.set_model(player, "animalia_turkey.b3d")
                characteristics()
                return true, "You are now a Turkey!"
            elseif subcmd == "wolf" and animalia then
                player_api.set_model(player, "animalia_wolf.b3d")
                characteristics()
                return true, "You are now a Wolf!"
            elseif subcmd == "bird" and animalia then
                player_api.set_model(player, "animalia_bird.b3d")
                characteristics()
                return true, "You are now a Bird!"
            -- Mobs Monster
            elseif subcmd == "dirtmonster" and mobs_monster then
                player_api.set_model(player, "mobs_stone_monster.b3d")
                characteristics()
                return true, "You are now a Dirt Monster!"
            elseif subcmd == "dungeonmaster" and mobs_monster then
                player_api.set_model(player, "mobs_dungeon_master.b3d")
                characteristics()
                return true, "You are now a Dungeon Master!"
            elseif subcmd == "landguard" and mobs_monster then
                player_api.set_model(player, "mobs_dungeon_master.b3d")
                characteristics()
                return true, "You are now a Land Guard!"
            elseif subcmd == "lavaflan" and mobs_monster then
                player_api.set_model(player, "zmobs_lava_flan.x")
                characteristics()
                return true, "You are now a Lava Flan!"
            elseif subcmd == "mesemonster" and mobs_monster then
                player_api.set_model(player, "mobs_mese_monster.b3d")
                characteristics()
                return true, "You are now a Mese Monster!"
            elseif subcmd == "oerkki" and mobs_monster then
                player_api.set_model(player, "mobs_oerkki.b3d")
                characteristics()
                return true, "You are now a Oerkki!"
            elseif subcmd == "sandmonster" and mobs_monster then
                player_api.set_model(player, "mobs_sand_monster.b3d")
                characteristics()
                return true, "You are now a Sand Man!"
            elseif subcmd == "spider" and mobs_monster then
                player_api.set_model(player, "mobs_spider.b3d")
                characteristics()
                return true, "You are now a Spider!"
            elseif subcmd == "stonemonster" and mobs_monster then
                player_api.set_model(player, "mobs_stone_monster.b3d")
                characteristics()
                return true, "You are now a Stone Monster!"
            elseif subcmd == "treemonster" and mobs_monster then
                player_api.set_model(player, "mobs_tree_monster.b3d")
                characteristics()
                return true, "You are now a Tree Monster!"
            elseif subcmd == "hidename" then
                player:set_nametag_attributes({color = {a = 0, r = 255, g = 255, b = 255}})
            elseif subcmd == "showname" then
                player:set_nametag_attributes({color = {a = 255, r = 255, g = 255, b = 255}})
            elseif subcmd == "help" then
                minetest.chat_send_player(name, "Default Command: normal")
                minetest.chat_send_player(name, " ")
                minetest.chat_send_player(name, "Mobs Animal: bee, bunny, chicken, cow, kitten, panda, penguin, rat, warthog, pumba")
                minetest.chat_send_player(name, " ")
                minetest.chat_send_player(name, "Animalia: bear, cat, chicken1, cow1, fox, frog, bullfrog, dartfrog, horse, opossum, pig, mouse, reindeer, sheep, clownfish, angelfish, turkey, wolf, bird")
                minetest.chat_send_player(name, " ")
                minetest.chat_send_player(name, "Mobs Monster: dirtmonster, dungeonmaster, landguard, mesemonster, lavaflan, mesemonster, oerkki, sandmonster, spider, stonemonster, treemonster")
                minetest.chat_send_player(name, " ")
            else
                return false, "Unknown subcommand or mobs_animal mod not enabled. Usage: /ss"
            end
        end

        if not valid_characters[subcmd] then
            return false, "Unknown character."
        end
        -- Fly priv stuff
        if bird_characters[subcmd] then
            -- Save if player already had fly
            if had_fly_priv[name] == nil then
                had_fly_priv[name] = privs.fly or false
            end
            -- Grant fly priv
            if not privs.fly then
                privs.fly = true
                minetest.set_player_privs(name, privs)
            end
            mob_models()
            -- Send chat message after transformation
            minetest.chat_send_player(name, "You are now a " .. player_current_character[name] .. "!")
            return true
        else
            -- If we previously granted fly, revoke it
            if had_fly_priv[name] ~= nil and not had_fly_priv[name] then
                privs.fly = nil
                minetest.set_player_privs(name, privs)
            end
            had_fly_priv[name] = nil
            mob_models()
            minetest.chat_send_player(name, "You are now a " .. player_current_character[name] .. "!")
            return true
        end
    end,
})

-- Revoke the fly priv if player left game as a bird
minetest.register_on_leaveplayer(function(player)
    local name = player:get_player_name()
    if had_fly_priv[name] ~= nil and not had_fly_priv[name] then
        -- Only revoke if we granted it (player didn't have it before)
        local privs = minetest.get_player_privs(name)
        privs.fly = nil
        minetest.set_player_privs(name, privs)
    end
    had_fly_priv[name] = nil
end)
