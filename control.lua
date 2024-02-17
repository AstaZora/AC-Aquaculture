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

-- Define the list of entities to track
local entitiesToTrack = {
    ["fish-hatchery"] = true,
    ["fish-drill"] = true,
    ["fish-net"] = true,
    -- Add other entities you want to track as needed
}

-- Initialize global variables
script.on_init(function()
    global.fish_breeders = {}
    global.process_queue = {}  -- Queue for newly placed entities
    global.lastProcessedIndex = nil
    global.resetProcessing = false
    global.last_breeder_index = 1  -- For optimized periodic check
    -- game.print("Script initialized.")
end)

-- Ensure global variables are updated for existing saves
script.on_configuration_changed(function()
    if not global.process_queue then
        global.process_queue = {}
        -- game.print("Updated global: process_queue initialized.")
    end
    if not global.last_breeder_index then
        global.last_breeder_index = 1
        -- game.print("Updated global: last_breeder_index initialized.")
    end
    -- Initialize or update any other necessary global variables here
end)

-- Function to add entities to the processing queue if they match the criteria
local function addToProcessQueueIfRelevant(entity)
    if entitiesToTrack[entity.name] then
        table.insert(global.process_queue, entity)
        --game.print("Relevant entity added to process queue: " .. entity.name)
    else
        --game.print("Ignored entity: " .. entity.name)  -- Optional, for debugging
    end
end

-- Event handlers for adding entities to the queue
script.on_event(defines.events.on_built_entity, function(event)
    local entity = event.created_entity
    if entity and entity.valid then
        addToProcessQueueIfRelevant(entity)
    end
end)

script.on_event(defines.events.on_robot_built_entity, function(event)
    local entity = event.created_entity
    if entity and entity.valid then
        addToProcessQueueIfRelevant(entity)
    end
end)

-- Process a portion of the queue each tick
local function processQueue()
    local process_per_tick = 5  -- Number of entities to process each tick; adjustable for performance
    for i = 1, math.min(process_per_tick, #global.process_queue) do
        local entity = table.remove(global.process_queue, 1)
        if entity and entity.valid then
            -- Here, futureproof. Might be able to add more entities for various purposes
            table.insert(global.fish_breeders, entity)  -- Add to fish breeders for periodic processing
            -- game.print("Entity processed and added to fish breeders: " .. entity.name)
        end
    end
end

-- Function to remove an entity from a list
local function removeFromList(entity, list)
    for i, listedEntity in ipairs(list) do
        if listedEntity == entity then
            table.remove(list, i)
            -- game.print("Entity removed from list: " .. entity.name)
            return true
        end
    end
    return false
end

-- Event handler for entity removal
local function onEntityRemoved(event)
    local entity = event.entity
    if entity and entity.valid then
        local removedFromQueue = removeFromList(entity, global.process_queue)
        if not removedFromQueue then
            removeFromList(entity, global.fish_breeders)
        end
        -- game.print("Entity removal handled: " .. entity.name)
    end
end

-- Register the removal handler with relevant events
script.on_event(defines.events.on_entity_died, onEntityRemoved)
script.on_event(defines.events.on_robot_mined_entity, onEntityRemoved)
script.on_event(defines.events.on_player_mined_entity, onEntityRemoved)

-- Function to extract fish name from the recipe
function extract_fish_name(recipe_name)
    local match = string.match(recipe_name, "^ac%-breed%-(.-)%-egg$") or string.match(recipe_name, "^ac%-breed%-(.-)$")
    if match then
        -- game.print("Fish name extracted: " .. match)
    else
        -- game.print("Failed to extract fish name from recipe: " .. recipe_name)
    end
    return match
end

local fishTypes = {
    "mukmoux",
    "glowfin-trenchers",
    -- Add all your fish types here
}

local function isFish(itemName)
    game.print("Checking if " .. itemName .. " is a fish")
    for _, fishName in pairs(fishTypes) do
        if itemName == fishName then
            return true
        end
    end
    return false
end


-- Optimized periodic check for fish breeding in fish hatcheries
script.on_event(defines.events.on_tick, function(event)
    -- Continue processing the queue of new entities as before
    processQueue()

    -- Combined: Check fish-nets for fish collection and fish breeders at specified intervals
    if event.tick % 60 == 0 then
        --game.print("Starting periodic check for both fish breeders and fish nets...")

        -- Check for fish breeding in fish hatcheries (previously included logic)
        --game.print("Checking fish breeders...")
        for _, breeder in pairs(global.fish_breeders) do
            if breeder.valid then
                local input_inventory_index = defines.inventory.chemical_plant_output or defines.inventory.furnace_result
                local inventory = breeder.get_inventory(input_inventory_index)
                if inventory then
                    local currentRecipe = breeder.get_recipe()
                    if currentRecipe then
                        local fishType = extract_fish_name(currentRecipe.name)
                        if fishType then
                            local fishCount = inventory.get_item_count(fishType)
                            
                            if fishCount >= 5 then
                                local groupsOfFive = math.floor(fishCount / 5)
                                local spawnCount = groupsOfFive
                                local directionVector = {{0, -3}, {3, 0}, {0, 3}, {-3, 0}}
                                local direction = breeder.direction / 2
                                local spawnPosition = {
                                    x = breeder.position.x + directionVector[direction + 1][1],
                                    y = breeder.position.y + directionVector[direction + 1][2]
                                }
                                
                                local tile = breeder.surface.get_tile(spawnPosition.x, spawnPosition.y)
                                if tile.valid and (tile.name == "water" or tile.name == "deepwater" or tile.name == "water-shallow" or tile.name == "pond-water") then
                                    for i = 1, spawnCount do
                                        breeder.surface.create_entity({
                                            name = fishType,
                                            position = spawnPosition,
                                            amount = 1
                                        })
                                    end
                                    inventory.remove({name = fishType, count = spawnCount * 5})
                                    --game.print("Spawned " .. spawnCount .. " fish at breeder: " .. breeder.name)
                                end
                            end
                        else
                            --game.print("Failed to find fish type for recipe: " .. currentRecipe.name)
                        end
                    end
                end
            end
        end
        --game.print("Fish breeder check completed.")

        -- Now also check fish-nets for fish collection
        --game.print("Checking fish nets...")
        checkFishNets()
        --game.print("Fish net check completed.")
    end
end)

function checkFishNets()
    --game.print("Checking fish nets for live fish...")
    local surfaces = game.surfaces
    for _, surface in pairs(surfaces) do
        local fishNets = surface.find_entities_filtered({name = "fish-net"})
        for _, fishNet in pairs(fishNets) do
            local inventory = fishNet.get_inventory(defines.inventory.chest)
            local maxFishCountPerNet = 100  -- Max number of fish items the inventory can hold

            local search_area = {{fishNet.position.x - 2, fishNet.position.y - 2}, {fishNet.position.x + 2, fishNet.position.y + 2}}
            for _, fishType in pairs(fishTypes) do
                local liveFish = surface.find_entities_filtered({name = fishType, area = search_area})
                for _, fish in pairs(liveFish) do
                    local currentFishCount = inventory.get_item_count(fishType)
                    if currentFishCount + 5 <= maxFishCountPerNet then  -- Ensure adding 5 won't exceed max
                        -- Simulate catching the fish: add 5 fish items for the entity and remove the entity
                        local inserted = inventory.insert({name = fishType, count = 5})
                        if inserted > 0 then
                            fish.destroy()  -- Remove the fish entity after "catching"
                            --game.print("Caught a live fish (" .. fishType .. ") with fish-net. Total now: " .. (currentFishCount + inserted))
                        end
                    else
                        --game.print("Not enough space to catch more fish (" .. fishType .. ").")
                    end
                end
            end
        end
    end
    --game.print("Fish net checking completed.")
end




















--[[ This function sets all evolution factors to zero.
local function disable_evolution()
    game.map_settings.enemy_evolution.time_factor = 0
    game.map_settings.enemy_evolution.destroy_factor = 0
    game.map_settings.enemy_evolution.pollution_factor = 0
end

-- This event handler runs once when the game/mod is initialized.
script.on_init(function()
    disable_evolution()
end)

-- This event handler runs every time the game/mod configuration changes, e.g., when mods are added or updated.
script.on_configuration_changed(function()
    disable_evolution()
end)

-- Optionally, create a periodic function to ensure evolution stays at zero, addressing any potential external modifications.
script.on_event(defines.events.on_tick, function(event)
    -- For performance reasons, you might not want to check this every tick.
    -- Here, as an example, we check every 10 minutes (36000 ticks = 10 minutes at 60 ticks per second).
    if event.tick % 36000 == 0 then
        if game.forces["enemy"].evolution_factor ~= 0 then
            game.forces["enemy"].evolution_factor = 0
            -- Logging for debugging purposes; remove or comment out for production.
            game.print("Evolution factor reset to 0.")
        end
    end
end)
]]
