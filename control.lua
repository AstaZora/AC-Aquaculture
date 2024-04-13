script.on_event(defines.events.on_research_finished, function(event)
    if event.research.name == "ac-fish-harvesting" then
        give_player_rewards(event.research.force)
    end
end)

function give_player_rewards(force)
    local player = force.players[1]
    if player and player.character then
        player.insert({name = "power-armor", count = 1})
        for i = 1, 7 do
            player.insert({name = "solar-panel-equipment"})
        end
        player.insert({name = "fusion-reactor-equipment"})
        for i = 1, 5 do
            player.insert({name = "battery-mk2-equipment"})
        end
        for i = 1, 4 do
            player.insert({name = "personal-roboport-mk2-equipment"})
        end
        player.insert({name = "construction-robot", count = 80})
    else
        player.print("Not enough space in inventory. Please make space for your fish harvesting reward.")
    end
end

-- Initialize global variables
script.on_init(function()
    global.fish_breeders = {}
    global.fish_drills = {}
    global.fish_nets = {}
    global.breeder_index = 1
    global.drill_index = 1
    global.net_index = 1
    global.process_queue = global.process_queue or {}
    global.lastProcessedIndex = nil
    global.resetProcessing = false
    log("Fish Breeding Management Script initialized.")
end)

-- Ensure global variables are correctly initialized or reset after configuration changes
script.on_configuration_changed(function()
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
    log("Fish Breeding Management configuration checked.")
end)

local entitiesToTrack = {
    ["fish-hatchery"] = true,
    ["fish-drill"] = true,
    ["fish-net"] = true,
}

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
}

local function addToProcessQueueIfRelevant(entity)
    if entitiesToTrack[entity.name] and entity.valid then
        table.insert(global.process_queue, entity)
        log("Entity added to processing queue.")
    end
end

-- Simplified event handler for adding entities to the queue
local function handleEntityBuilt(event)
    addToProcessQueueIfRelevant(event.created_entity)
end

script.on_event(defines.events.on_built_entity, handleEntityBuilt)
script.on_event(defines.events.on_robot_built_entity, handleEntityBuilt)

local function removeFromList(entity, list)
    for i, listedEntity in ipairs(list) do
        if listedEntity == entity then
            table.remove(list, i)
            log("Entity removed from list.")
            return true
        end
    end
    return false
end

local function onEntityRemoved(event)
    if not removeFromList(event.entity, global.process_queue) then
        if not removeFromList(event.entity, global.fish_breeders) then
            if not removeFromList(event.entity, global.fish_nets) then
                removeFromList(event.entity, global.fish_drills)
            end
        end
    end
end

script.on_event(defines.events.on_entity_died, onEntityRemoved)
script.on_event(defines.events.on_robot_mined_entity, onEntityRemoved)
script.on_event(defines.events.on_player_mined_entity, onEntityRemoved)

local function processQueue()
    local process_per_tick = 5
    local processed = 0
    while processed < process_per_tick and #global.process_queue > 0 do
        local entity = table.remove(global.process_queue, 1)
        if entity and entity.valid then
            if entity.name == "fish-hatchery" then
                table.insert(global.fish_breeders, entity)
            elseif entity.name == "fish-net" then
                table.insert(global.fish_nets, entity)
            elseif entity.name == "fish-drill" then
                table.insert(global.fish_drills, entity)
            end
            processed = processed + 1
        end
    end
end

local function extract_fish_name(recipe_name)
    local match = string.match(recipe_name, "^ac%-breed%-(.-)%-egg$")
    if not match then
        match = string.match(recipe_name, "^ac%-breed%-(.-)$")
    end
    if not match then
        match = string.match(recipe_name, "^ac%-process%-(.-)%-eggs%-for%-fish$")
    end
    return match
end

local function calculateSpawnPosition(entity)
    local directionVectors = {
        [defines.direction.north] = {0, 2.5},
        [defines.direction.east] = {-2.5, 0},
        [defines.direction.south] = {0, -2.5},
        [defines.direction.west] ={2.5, 0}
    }
    local direction = entity.direction
    local vector = directionVectors[direction] or {0, -2.5}
    return {x = entity.position.x + vector[1], y = entity.position.y + vector[2]}
end

local function calculateDrillSpawnPosition(drill)
    return {x = drill.position.x, y = drill.position.y + 3}
end
local function spawnFish(entity, position, fishType, count)
    for i = 1, count do
        entity.surface.create_entity({
            name = fishType,
            position = position,
            amount = 1
        })
    end
end
local function checkFishBreeders()
    if not global.breeder_index then
        global.breeder_index = 1
    end
    if not global.fish_breeders then
        global.fish_breeders = {}
    end
    if global.breeder_index > #global.fish_breeders then
        global.breeder_index = 1 -- Reset index if it's out of bounds
    end

    local processed = 0
    local max_to_process = 5
    local inventory_index = defines.inventory.assembling_machine_output or defines.inventory.chemical_plant_output
    local breeder, inventory, currentRecipe, fishType, fishCount, spawnCount, spawnPosition, tile

    while processed < max_to_process and global.breeder_index <= #global.fish_breeders do
        breeder = global.fish_breeders[global.breeder_index]
        if not breeder or not breeder.valid or breeder.name ~= "fish-hatchery" then
            goto continue_loop
        end

        inventory = breeder.get_inventory(inventory_index)
        if not inventory or inventory.is_empty() then
            goto continue_loop
        end

        currentRecipe = breeder.get_recipe()
        if not currentRecipe then
            goto continue_loop
        end

        fishType = extract_fish_name(currentRecipe.name)
        if not fishType or inventory.get_item_count(fishType) < 5 then
            goto continue_loop
        end

        fishCount = inventory.get_item_count(fishType)
        spawnCount = math.floor(fishCount / 5)
        spawnPosition = calculateSpawnPosition(breeder)
        tile = breeder.surface.get_tile(spawnPosition.x, spawnPosition.y)

        if not tile.valid or not (tile.name == "water" or tile.name == "deepwater" or tile.name == "water-shallow" or tile.name == "pond-water") then
            goto continue_loop
        end

        for i = 1, spawnCount do
            breeder.surface.create_entity({name = fishType, position = spawnPosition, amount = 1})
        end

        if inventory.remove({name = fishType, count = spawnCount * 5}) > 0 then
            processed = processed + 1
        end

        ::continue_loop::
        global.breeder_index = global.breeder_index + 1
        if global.breeder_index > #global.fish_breeders then
            global.breeder_index = 1
            break
        end
    end
end


local function processFishNet(fishNet)
    local inventory = fishNet.get_inventory(defines.inventory.chest)
    local maxFishCountPerNet = 1000
    local fishSpawned = false

    local searchArea = {{fishNet.position.x - 2, fishNet.position.y - 2}, {fishNet.position.x + 2, fishNet.position.y + 2}}
    for _, fishType in ipairs(fishTypes) do
        local liveFish = fishNet.surface.find_entities_filtered({name = fishType, area = searchArea})
        if #liveFish > 0 then
            local currentFishCount = inventory.get_item_count(fishType)
            local spaceAvailable = maxFishCountPerNet - currentFishCount
            local fishToCatch = math.min(#liveFish, math.floor(spaceAvailable / 5))
            if fishToCatch > 0 then
                local inserted = inventory.insert({name = fishType, count = fishToCatch * 5})
                if inserted > 0 then
                    fishSpawned = true
                    for i = 1, fishToCatch do
                        if liveFish[i] then liveFish[i].destroy() end
                    end
                end
            end
        end
    end
    return fishSpawned
end

local function checkFishNets()
    -- Initialize or validate global variables
    global.fish_nets = global.fish_nets or {}
    global.net_index = global.net_index or 1
    if global.net_index > #global.fish_nets then
        global.net_index = 1  -- Reset index if it's out of bounds
    end
    local netsProcessed = 0
    local max_to_process = 10
    while netsProcessed < max_to_process and global.net_index <= #global.fish_nets do
        local fishNet = global.fish_nets[global.net_index]
        if not fishNet or not fishNet.valid then
            goto continue_net_loop
        end
        if not processFishNet(fishNet) then
            goto continue_net_loop 
        end
        netsProcessed = netsProcessed + 1
        ::continue_net_loop::
        global.net_index = global.net_index + 1
        if global.net_index > #global.fish_nets then
            global.net_index = 1
            break
        end
    end
end
local function checkFishDrills()
    global.fish_drills = global.fish_drills or {}
    global.drill_index = global.drill_index or 1
    if global.drill_index > #global.fish_drills then
        global.drill_index = 1  -- Reset index if it's out of bounds
    end

    local processed = 0
    local max_to_process = 5
    local drill, inventory, fishSpawned, fishCount, spawnCount, spawnPosition

    -- Declare variables before any goto statements

    while processed < max_to_process and global.drill_index <= #global.fish_drills do
        drill = global.fish_drills[global.drill_index]
        if not drill or not drill.valid then
            goto continue_drill_loop  -- Skip to next iteration if invalid
        end

        inventory = drill.get_inventory(defines.inventory.furnace_result)
        if not inventory or inventory.is_empty() then
            goto continue_drill_loop  -- Skip if no inventory or empty
        end

        fishSpawned = false
        for _, fishType in ipairs(fishTypes) do
            fishCount = inventory.get_item_count(fishType)
            if fishCount >= 5 then
                spawnCount = math.floor(fishCount / 5)
                spawnPosition = calculateDrillSpawnPosition(drill)
                local tile = drill.surface.get_tile(spawnPosition.x, spawnPosition.y)
                if tile.valid and (tile.name == "water" or tile.name == "deepwater" or tile.name == "water-shallow" or tile.name == "pond-water") then
                    if inventory.remove({name = fishType, count = spawnCount * 5}) > 0 then
                        spawnFish(drill, spawnPosition, fishType, spawnCount)
                        fishSpawned = true
                        break  -- Exit loop after successful operation
                    end
                end
            end
        end

        if fishSpawned then
            processed = processed + 1  -- Only increment if fish were successfully spawned
        end

        ::continue_drill_loop::
        global.drill_index = global.drill_index + 1
        if global.drill_index > #global.fish_drills then
            global.drill_index = 1  -- Reset to start once end is reached
            break  -- Optionally break if you've looped through all once
        end
    end
end


script.on_event(defines.events.on_tick, function(event)
    if event.tick % 60 == 0 then
        processQueue()
        checkFishBreeders()
        checkFishNets()
        checkFishDrills()
    end
end)