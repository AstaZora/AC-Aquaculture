script.on_event(defines.events.on_research_finished, function(event)
        if event.research.name == "ac-fish-harvesting" then
            give_player_rewards(event.research.force)
        end
    end)
    function give_player_rewards(force)
        local player = force.players[1] -- Assuming single-player or giving to the first player in a multiplayer scenario
        if player and player.character then
            -- Power Armor
            player.insert({name = "power-armor", count = 1})
            -- Portable Solar Panels
            for i = 1, 7 do
                player.insert({name = "solar-panel-equipment"})
            end
            -- Portable Fusion Reactor
            player.insert({name = "fusion-reactor-equipment"})
            -- Personal Battery MK2
            for i = 1, 5 do
                player.insert({name = "battery-mk2-equipment"})
            end
            -- Roboport MK2
            for i = 1, 4 do
                player.insert({name = "personal-roboport-mk2-equipment"})
            end
            -- Construction Robots
            player.insert({name = "construction-robot", count = 80})
        else
            player.print("Not enough space in inventory. Please make space for your fish harvesting reward.")
        end
    end

    -- Assuming `global.fish_spawned` is a table where keys are fish names and values are counts

--[[ Initialize the global table
script.on_init(function()
    global.fish_spawned = {}
end)

-- Function to determine which fish to spawn
local function determine_fish_to_spawn()
    local spawn_threshold = 100 -- Number of fish before switching type
    local fish_types = {"glowfin-trenchers", "mukmoux", "neon-nocturne", "silverscale-glider", "spiral-shellfish", "silent-drifter", "twilight-tetra", "starfin-darters", "stream-sifter", -- etc...
                        "fish"} -- Keep the vanilla fish last in the list

    -- Loop through the fish types and find which one to spawn next
    for _, fish_name in pairs(fish_types) do
        local count = global.fish_spawned[fish_name] or 0
        if count < spawn_threshold or fish_name == "fish" then
            -- Increment the count for the chosen fish type
            global.fish_spawned[fish_name] = count + 1
            return fish_name
        end
    end
end

-- Event handler for spawning fish
script.on_event(defines.events.on_chunk_generated, function(event)
    local surface = event.surface

    -- Your custom logic to decide how many fish to spawn, etc.
    local fish_to_spawn = determine_fish_to_spawn()

    -- Spawn the fish
    if fish_to_spawn then
        local x = event.area.left_top.x + math.random(0, event.area.right_bottom.x - event.area.left_top.x)
        local y = event.area.left_top.y + math.random(0, event.area.right_bottom.y - event.area.left_top.y)
        surface.create_entity({name = fish_to_spawn, position = {x = x, y = y}})
    end
end)
  


script.on_event(defines.events.on_tick, function(event)
    -- Check every few seconds instead of every tick for performance
    if event.tick % (60 * 15) == 0 then
        for _, breeder in pairs(global.fish_breeders) do
            -- Assuming you have a way to track all fish breeders
            local inventory = breeder.get_inventory(defines.inventory.assembling_machine_input)
            local recipe = breeder.get_recipe()
            if recipe and inventory.get_item_count(recipe.name) >= 5 then
                local position = breeder.position
                local surface = breeder.surface
                -- Create the fish entities in water around the breeder
                for _ = 1, 5 do
                    local fish_to_spawn = determine_fish_to_spawn()
                    if fish_to_spawn then
                        local x = position.x + math.random(-1, 1)
                        local y = position.y + math.random(-1, 1)
                        surface.create_entity({name = fish_to_spawn, position = {x = x, y = y}})
                    end
                end
                -- Remove 5 fish from the breeder's inventory
                inventory.remove({name = recipe.name, count = 5})
            end
        end
    end
end)

]]