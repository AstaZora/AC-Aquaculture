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
]]  



--[[ Initialize the global table
script.on_init(function()
    global.fish_breeders = {}
end)

-- Add the built fish breeders to the global table
script.on_event(defines.events.on_built_entity, function(event)
    local entity = event.created_entity
    if entity.name == "fish-hatchery" then
        table.insert(global.fish_breeders, entity)
    end
end)

-- Remove the destroyed fish breeders from the global table
script.on_event(defines.events.on_entity_died, function(event)
    local entity = event.entity
    if entity.name == "fish-hatchery" then
        for i, breeder in ipairs(global.fish_breeders) do
            if breeder == entity then
                table.remove(global.fish_breeders, i)
                break
            end
        end
    end
end)

-- Check every few seconds instead of every tick for performance
for _, breeder in pairs(global.fish_breeders) do
    local inventory = breeder.get_inventory(defines.inventory.assembling_machine_input)
    local recipe = breeder.get_recipe()

    -- Check if the recipe exists and the ingredient and result counts are sufficient
    if recipe and inventory.get_item_count(recipe.result) % 5 == 0 then
        -- Place 1 fish of the specified type directly in front of the machine
        local position = breeder.position
        local direction = breeder.direction
        local offset = {x = 0, y = 0}
        if direction == defines.direction.north then
            offset.y = -1
        elseif direction == defines.direction.east then
            offset.x = 1
        elseif direction == defines.direction.south then
            offset.y = 1
        elseif direction == defines.direction.west then
            offset.x = -1
        end
        local spawn_position = {x = position.x + offset.x, y = position.y + offset.y}
        breeder.surface.create_entity({name = recipe.result, position = spawn_position})

        -- Remove the required ingredients from the inventory
        inventory.remove({name = recipe.result, count = 5})
    elseif recipe and inventory.get_item_count(recipe.name) >= 5 and inventory.get_item_count(recipe.result) >= 5 then
        -- Place 1 fish of the specified type directly in front of the machine
        local position = breeder.position
        local direction = breeder.direction
        local offset = {x = 0, y = 0}
        if direction == defines.direction.north then
            offset.y = -1
        elseif direction == defines.direction.east then
            offset.x = 1
        elseif direction == defines.direction.south then
            offset.y = 1
        elseif direction == defines.direction.west then
            offset.x = -1
        end
        local spawn_position = {x = position.x + offset.x, y = position.y + offset.y}
        breeder.surface.create_entity({name = recipe.result, position = spawn_position})

        -- Remove the required ingredients from the inventory
        for _, ingredient in pairs(recipe.ingredients) do
            inventory.remove({name = ingredient.name, count = ingredient.amount})
        end
    end
end

Potentially outdated]]

--[[-- Initialize the global table
script.on_init(function()
    global.fish_breeders = {}
end)

-- Function to update global reference when fish hatcheries are built or removed
local function updateFishBreeder(event, isAdding)
    local entity = event.created_entity or event.entity
    if entity and entity.valid and entity.name == "fish-hatchery" then
        if isAdding then
            table.insert(global.fish_breeders, entity)
        else
            for i, breeder in ipairs(global.fish_breeders) do
                if breeder == entity then
                    table.remove(global.fish_breeders, i)
                    break
                end
            end
        end
    end
end

-- Add the built fish breeders to the global table
script.on_event(defines.events.on_built_entity, function(event)
    updateFishBreeder(event, true)
end)

-- Remove the destroyed fish breeders from the global table
script.on_event(defines.events.on_entity_died, function(event)
    updateFishBreeder(event, false)
end)

-- Periodic check for fish breeding
-- Periodic check for fish breeding in fish hatcheries
script.on_event(defines.events.on_tick, function(event)
    -- Reduce performance impact by checking every 300 ticks (5 seconds)
    if event.tick % 300 == 0 then
        for _, breeder in pairs(global.fish_breeders) do
            if breeder.valid then
                -- Access the correct inventory for a chemical refinery-based entity
                -- Assuming 'breeder' is your entity
                local input_inventory_index = defines.inventory.chemical_plant_output or defines.inventory.assembling_machine_output
                local inventory = breeder.get_inventory(input_inventory_index)
                if inventory then
                    local currentRecipe = breeder.get_recipe()
                    if currentRecipe then
                        -- Extract fish type from recipe name, assuming it starts with "ac-breed-"
                        local fishType = string.gsub(currentRecipe.name, "ac%-breed%-", "")
                        local fishCount = inventory.get_item_count(fishType)
                        game.print(fishCount)
                        game.print(fishType)

                        if fishCount >= 5 then
                            local groupsOfFive = math.floor(fishCount / 5)
                            local spawnCount = groupsOfFive
                            local frontPosition = breeder.position
                            local directionVector = {{0, -4}, {4, 0}, {0, 4}, {-4, 0}} -- N, E, S, W
                            local direction = breeder.direction / 2
                            local spawnPosition = {x = frontPosition.x + directionVector[direction + 1][1], y = frontPosition.y + directionVector[direction + 1][2]}
                            log("about to place fish")
                            -- Check if the tile in front of the breeder is water or shallow water
                            local tile = breeder.surface.get_tile(spawnPosition.x, spawnPosition.y)
                            if tile.name == "water" or tile.name == "deepwater" or tile.name == "water-shallow" then
                                -- Spawn the fish entity
                                for i = 1, spawnCount do
                                    breeder.surface.create_entity({name = fishType, position = spawnPosition, amount = 1})
                                end
                                -- Remove the used fish items from the inventory
                                inventory.remove({name = fishType, count = spawnCount * 5})
                            end
                        end
                    end
                else
                    -- Log or handle the case where the inventory couldn't be accessed
                    log("Failed to access input inventory for fish-hatchery")
                end
            end
        end
    end
end)
]]

--[[REDACTED CODE INCOMPLETE
-- Initialize the global table
script.on_init(function()
    global.fish_drills = {} -- New table for tracking the new type of entity
end)

-- Function to update global reference when drills are built or removed
local function updateDrill(event, isAdding)
    local entity = event.created_entity or event.entity
    if entity and entity.valid and entity.name == "fish-drill" then -- Assuming "fish-drill" is your entity's name
        if isAdding then
            table.insert(global.fish_drills, entity)
        else
            for i, breeder in ipairs(global.fish_drills) do
                if breeder == entity then
                    table.remove(global.fish_drills, i)
                    break
                end
            end
        end
    end
end

-- Adjust event handlers to track drills only
script.on_event(defines.events.on_built_entity, function(event)
    updateDrill(event, true)
end)

script.on_event(defines.events.on_entity_died, function(event)
    updateDrill(event, false)
end)

-- Periodic check for fish drilling
script.on_event(defines.events.on_tick, function(event)
    -- Reduce performance impact by checking every 300 ticks (5 seconds)
    if event.tick % 300 == 0 then
        if global.fish_drills then
            for _, drill in ipairs(global.fish_drills) do -- Use ipairs instead of pairs to iterate over the table
                if drill and drill.valid then
                    local currentRecipe = drill.get_recipe()
                if currentRecipe and currentRecipe.name:find("ac%-breed%-") then -- Check if the recipe is for fish drilling
                    local fishType = string.gsub(currentRecipe.name, "ac%-breed%-", "") -- Extract fish type from recipe name
                    local outputPosition = drill.position
                    local outputDirection = drill.direction
                    local outputOffset = {x = 0, y = 0}
                    
                    -- Adjust output position based on output direction
                    if outputDirection == defines.direction.north then
                        outputOffset.y = -1
                    elseif outputDirection == defines.direction.east then
                        outputOffset.x = 1
                    elseif outputDirection == defines.direction.south then
                        outputOffset.y = 1
                    elseif outputDirection == defines.direction.west then
                        outputOffset.x = -1
                    end

                    local spawnPosition = {x = outputPosition.x + outputOffset.x, y = outputPosition.y + outputOffset.y}
                        local tile = drill.surface.get_tile(spawnPosition.x, spawnPosition.y)
                        if tile and (tile.name == "water" or tile.name == "deepwater" or tile.name == "water-shallow" or tile.name == "pond-water") then
                            drill.surface.create_entity({name = fishType, position = spawnPosition})
                        else
                            game.print("Fish drilling failed: Invalid tile type")
                        end
                    else
                        game.print("Fish drilling failed: Invalid recipe")
                    end
                end
            end
        end
    end
end)]]

-- Initialize the global table BEST FUNCTIONAL CODE
script.on_init(function()
    global.fish_breeders = {}
end)

-- Function to update global reference when fish hatcheries are built or removed
local function updateFishBreeder(event, isAdding)
    local entity = event.created_entity or event.entity
    if entity and entity.valid and (entity.name == "fish-hatchery" or entity.name == "fish-drill") then
        if isAdding then
            table.insert(global.fish_breeders, entity)
        else
            for i, breeder in ipairs(global.fish_breeders) do
                if breeder == entity then
                    table.remove(global.fish_breeders, i)
                    break
                end
            end
        end
    end
end

-- Add the built fish breeders to the global table
script.on_event(defines.events.on_built_entity, function(event)
    updateFishBreeder(event, true)
end)

-- Remove the destroyed fish breeders from the global table
script.on_event(defines.events.on_entity_died, function(event)
    updateFishBreeder(event, false)
end)

-- Define the function to extract the fish name from the recipe
function extract_fish_name(recipe_name)
    -- Try to match both patterns: with and without "-egg" suffix
    local match = string.match(recipe_name, "^ac%-breed%-(.-)%-egg$") or string.match(recipe_name, "^ac%-breed%-(.-)$")
    return match
  end
  
  -- Periodic check for fish breeding in fish hatcheries
  script.on_event(defines.events.on_tick, function(event)
      -- Reduce performance impact by checking every 1800 ticks (30 seconds)
      if event.tick % 1800 == 0 then
          for _, breeder in pairs(global.fish_breeders) do
              if breeder.valid then
                local input_inventory_index = defines.inventory.chemical_plant_output or defines.inventory.furnace_result
                local inventory = breeder.get_inventory(input_inventory_index)
                  if inventory then
                      local currentRecipe = breeder.get_recipe()
                      if currentRecipe then
                          -- Extract fish type from recipe name, considering recipes with "-egg" suffix
                          local fishType = extract_fish_name(currentRecipe.name)
                          local fishCount = inventory.get_item_count(fishType)
  
                          if fishCount >= 5 then
                              local groupsOfFive = math.floor(fishCount / 5)
                              local spawnCount = groupsOfFive
                              local directionVector = {{0, -3}, {3, 0}, {0, 3}, {-3, 0}} -- N, E, S, W
                              local direction = breeder.direction / 2
                              local spawnPosition = {
                                  x = breeder.position.x + directionVector[direction + 1][1],
                                  y = breeder.position.y + directionVector[direction + 1][2]
                              }
  
                              local tile = breeder.surface.get_tile(spawnPosition.x, spawnPosition.y)
                              if tile.valid and tile.name == "water" or tile.name == "deepwater" or tile.name == "water-shallow" then
                                  for i = 1, spawnCount do
                                      breeder.surface.create_entity({
                                          name = fishType,
                                          position = spawnPosition,
                                          amount = 1
                                      })
                                  end
                                  -- Remove the used fish items from the inventory
                                  inventory.remove({name = fishType, count = spawnCount * 5})
                              end
                          end
                      end
                  end
              end
          end
      end
  end)
  