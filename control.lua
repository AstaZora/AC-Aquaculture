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
    global.fish_breeders = global.fish_breeders or {}
    global.fish_drills = global.fish_drills or {}
    global.fish_nets = global.fish_nets or {}
    global.breeder_index = 1
    global.drill_index = 1
    global.net_index = 1
    global.process_queue = global.process_queue or {}  -- Queue for newly placed entities
    global.lastProcessedIndex = nil
    global.resetProcessing = false
    global.process_index = 1  -- This is new and needs to be incorporated based on how you plan to use it
    -- game.print("Script initialized.")
end)


--- Ensure global variables are correctly initialized or reset after configuration changes
script.on_configuration_changed(function()
    -- Reinitialize or ensure the existence of all global variables as done in script.on_init
    global.fish_breeders = global.fish_breeders or {}
    global.fish_drills = global.fish_drills or {}
    global.fish_nets = global.fish_nets or {}
    
    -- Make sure the indices for each entity type exist and are set to a valid starting point
    global.breeder_index = global.breeder_index or 1
    global.drill_index = global.drill_index or 1
    global.net_index = global.net_index or 1

    -- Ensure the process queue and related variables are also correctly initialized
    global.process_queue = global.process_queue or {}
    global.lastProcessedIndex = global.lastProcessedIndex or nil
    global.resetProcessing = global.resetProcessing or false
    global.process_index = global.process_index or 1  -- If this variable is intended for new logic

    -- Optionally, include any other necessary checks or initializations for variables introduced in your script
    -- This ensures your mod remains robust to configuration changes and updates.
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

local function processQueue()
    local process_per_tick = 5  -- Number of entities to process each tick
    local processed = 0
    --game.print("Processing queue. Queue length: " .. #global.process_queue)

    -- Process entities from the queue
    while processed < process_per_tick and #global.process_queue > 0 do
        local entity = table.remove(global.process_queue, 1)  -- Get and remove the first entity from the queue

        if entity and entity.valid then
            -- Depending on the entity type, process and add to the corresponding list
            if entity.name == "fish-hatchery" then
                table.insert(global.fish_breeders, entity)
                -- Additional processing logic for fish hatchery can go here
            elseif entity.name == "fish-net" then
                table.insert(global.fish_nets, entity)
                -- Additional processing logic for fish net can go here
            elseif entity.name == "fish-drill" then
                table.insert(global.fish_drills, entity)
                -- Additional processing logic for fish drill can go here
            end
            --game.print("Processed and added to list: " .. entity.name .. " at (" .. entity.position.x .. ", " .. entity.position.y .. ")")
            processed = processed + 1
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

function extract_fish_name(recipe_name)
-- Check for breeding egg recipes
local match = string.match(recipe_name, "^ac%-breed%-(.-)%-egg$")

-- If not found, check for breeding fish recipes
if not match then
    match = string.match(recipe_name, "^ac%-breed%-(.-)$")
end

-- If still not found, check for the process eggs for fish recipes
if not match then
    match = string.match(recipe_name, "^ac%-process%-(.-)%-eggs%-for%-fish$")
end

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
"silverscale-glider",
"neon-nocturne",
"silent-drifter",
"spiral-shellfish",
"starfin-darters",
"stream-sifter",
"twilight-tetra",
-- Add all your fish types here
}
-- Assuming global variables are initialized as follows:
-- global.fish_breeders, global.fish_nets, global.fish_drills, and global.process_queue

-- Periodic event handler to trigger the queue processing and entity checks
script.on_event(defines.events.on_tick, function(event)
    if event.tick % 60 == 0 then
        processQueue()  -- Call the processing function each tick or at certain intervals
    end
    if event.tick % 60 == 0 then  -- Every 300 ticks, perform checks on breeders, nets, and drills
        checkFishBreeders()
        checkFishNets()
        checkFishDrills()
    end
end)
function checkFishBreeders()
    if not global.breeder_index then
        global.breeder_index = 1
    end
    if not global.fish_breeders then
        global.fish_breeders = {}
    end
    local processed = 0
    local max_to_process = 3

    while processed < max_to_process and global.breeder_index <= #global.fish_breeders do
        local breeder = global.fish_breeders[global.breeder_index]
        if breeder and breeder.valid then
            local inventory_index = defines.inventory.chemical_plant_output or defines.inventory.furnace_result
            local inventory = breeder.get_inventory(inventory_index)
            if inventory and not inventory.is_empty() then
                local currentRecipe = breeder.get_recipe()
                if currentRecipe then
                    local fishType = extract_fish_name(currentRecipe.name)
                    if fishType then
                        local fishCount = inventory.get_item_count(fishType)
                        if fishCount >= 5 then
                            local spawnCount = math.floor(fishCount / 5)
                            local spawnPosition = calculateSpawnPosition(breeder)
                            spawnFish(breeder, spawnPosition, fishType, spawnCount)
                            inventory.remove({name = fishType, count = spawnCount * 5})
                            processed = processed + 1
                            break -- Exit the loop after processing a fish breeder
                        end
                    end
                end
            end
        end

        global.breeder_index = global.breeder_index + 1
        if global.breeder_index > #global.fish_breeders then
            global.breeder_index = 1  -- Loop back to start if the end is reached
            break  -- Exit the loop to avoid unnecessary iterations
        end
    end

    --game.print("Processed " .. processed .. " fish breeders this tick.")
end

function checkFishDrills()
    if type(global.drill_index) ~= "number" then
        global.drill_index = 1
    end
    if not global.fish_drills then
        global.fish_drills = {}
    end

    local processed = 0
    local max_to_process = 3
    while processed < max_to_process and global.drill_index <= #global.fish_drills do
        local drill = global.fish_drills[global.drill_index]
        if drill and drill.valid then
            local inventory = drill.get_inventory(defines.inventory.furnace_result)
            if inventory and not inventory.is_empty() then
                for _, fishType in ipairs(fishTypes) do
                    local fishCount = inventory.get_item_count(fishType)
                    if fishCount >= 5 then
                        local spawnCount = math.floor(fishCount / 5)
                        local spawnPosition = calculateDrillSpawnPosition(drill)
                        spawnFish(drill, spawnPosition, fishType, spawnCount)
                        inventory.remove({name = fishType, count = spawnCount * 5})
                        --game.print("Drill at [" .. drill.position.x .. ", " .. drill.position.y .. "] spawned " .. spawnCount .. " " .. fishType)
                        processed = processed + 1
                        if processed >= max_to_process then
                            break
                        end
                    end
                end
            end
        end
        global.drill_index = global.drill_index + 1
        if global.drill_index > #global.fish_drills then
            global.drill_index = 1 -- Loop back to start
        break
    end
    --game.print("Processed " .. processed .. " fish drills.")
end
end
--game.print("Checking fish nets for live fish...")
function checkFishNets()
    if type(global.net_index) ~= "number" then
        global.net_index = 1
    end
    if not global.fish_nets then
        global.fish_nets = {}
    end

    local processed = 0
    local max_to_process = 3
    while processed < max_to_process and global.net_index <= #global.fish_nets do
        local fishNet = global.fish_nets[global.net_index]
        if fishNet and fishNet.valid then
            local inventory = fishNet.get_inventory(defines.inventory.chest)
            local maxFishCountPerNet = 200

            local search_area = {{fishNet.position.x - 2, fishNet.position.y - 2}, {fishNet.position.x + 2, fishNet.position.y + 2}}
            for _, fishType in ipairs(fishTypes) do
                local liveFish = fishNet.surface.find_entities_filtered({name = fishType, area = search_area})
                for _, fish in pairs(liveFish) do
                    local currentFishCount = inventory.get_item_count(fishType)
                    if currentFishCount + 5 <= maxFishCountPerNet then
                        local inserted = inventory.insert({name = fishType, count = 5})
                        if inserted > 0 then
                            fish.destroy()
                            --game.print("Net at [" .. fishNet.position.x .. ", " .. fishNet.position.y .. "] caught 5 " .. fishType .. ". Total now: " .. (currentFishCount + inserted))
                            processed = processed + 1
                            if processed >= max_to_process then
                                break
                            end
                        end
                    else
                        --game.print("Net at [" .. fishNet.position.x .. ", " .. fishNet.position.y .. "] is full. Not enough space to catch more " .. fishType .. ".")
                    end
                end
                if processed >= max_to_process then
                    break
                end
            end
        else
            --game.print("Net at [" .. fishNet.position.x .. ", " .. fishNet.position.y .. "] is not valid (maybe destroyed).")
        end
        global.net_index = global.net_index + 1
        if global.net_index > #global.fish_nets then
            global.net_index = 1 -- Loop back to start
        break
        end
    --game.print("Processed " .. processed .. " fish nets.")
    end
end


function calculateSpawnPosition(entity)
    local directionVectors = {
        [defines.direction.north] = {0, 2.5},
        [defines.direction.east] = {-2.5, 0},
        [defines.direction.south] = {0, -2.5},
        [defines.direction.west] ={2.5, 0}
    }                                   
    local direction = entity.direction
    local vector = directionVectors[direction] or {0, -2.5} -- Default to north if undefined
    return {x = entity.position.x + vector[1], y = entity.position.y + vector[2]}
end
function calculateDrillSpawnPosition(drill)
    -- Assuming drills are 2x2 and spawn fish directly south of their position
    return {x = drill.position.x, y = drill.position.y + 3} -- Adjust as needed for exact positioning
end
function spawnFish(entity, position, fishType, count)
    for i = 1, count do
        entity.surface.create_entity({
            name = fishType, -- Assuming fishType is the correct entity name to spawn
            position = position,
            amount = 1 -- Assuming 1 represents the amount to spawn at once; adjust if needed
        })
    end
    -- Optionally, print a message with details about the spawned fish
    -- game.print("Spawned " .. count .. " of " .. fishType .. " at position: " .. position.x .. ", " .. position.y)
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