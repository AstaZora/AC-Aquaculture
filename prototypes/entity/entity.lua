
local function deepcopy(orig) -- Since you don't have access to the util table
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

local function createEntity(name, category)
    local base = deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])
    base.name = name
    base.icon = "__base__/graphics/icons/assembling-machine-1.png"
    base.icon_size = 64
    base.flags = {"placeable-neutral", "placeable-player", "player-creation"}
    base.minable = {mining_time = 0.2, result = name}
    base.max_health = 150
    base.crafting_categories = {category}
    base.crafting_speed = 1
    base.energy_usage = "60kW"
    base.energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.05
    }
    base.animation = base.animation or base.animations
    base.subgroup = "production-machine"
    base.order = "a[tree-farm]"
    base.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
    base.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
    base.next_upgrade = nil
    return base
end


local function createChemical(name, category)
    local base = deepcopy(data.raw["assembling-machine"]["chemical-plant"])
    base.name = name
    base.icon = "__base__/graphics/icons/chemical-plant.png"
    base.icon_size = 64
    base.flags = {"placeable-neutral", "placeable-player", "player-creation"}
    base.minable = {mining_time = 0.2, result = name}
    base.max_health = 150
    base.crafting_categories = {category}
    base.crafting_speed = 1
    base.energy_usage = "300kW"
    base.energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.05
    }
    base.animation = base.animation or base.animations
    base.subgroup = "production-machine"
    base.order = "a[tree-farm]"
    base.collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
    base.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
    base.next_upgrade = nil
    return base
end

local function createFurnace(name, category)
    local base = deepcopy(data.raw["furnace"]["stone-furnace"])
    base.name = name
    base.icon = "__base__/graphics/icons/stone-furnace.png"
    base.icon_size = 64
    base.minable = {mining_time = 0.2, result = name}
    base.crafting_categories = {category}
    base.crafting_speed = 1
    base.energy_usage = "90kW"
    base.source_inventory_size = 1
    base.result_inventory_size = 1
    -- Other properties to adjust...
    return base
end

local function createCentrifuge(name, category)
    local base = deepcopy(data.raw["assembling-machine"]["centrifuge"])
    base.name = name
    base.icon = "__base__/graphics/icons/centrifuge.png"
    base.icon_size = 64
    base.minable = {mining_time = 0.2, result = name}
    base.crafting_categories = {category}
    base.crafting_speed = 1
    base.energy_usage = "350kW"
    base.fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = assembler2pipepictures(),
            pipe_covers = pipecoverspictures(),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{ type="input", position = {0, -2} }}
        },
        {
            production_type = "output",
            pipe_picture = assembler2pipepictures(),
            pipe_covers = pipecoverspictures(),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{ type="output", position = {0, 2} }}
        }
    }
    -- Other properties to adjust...
    return base
end

local function createOilRefinery(name, category)
    local base = deepcopy(data.raw["assembling-machine"]["oil-refinery"])
    base.name = name
    base.icon = "__base__/graphics/icons/oil-refinery.png"
    base.icon_size = 64
    base.minable = {mining_time = 0.2, result = name}
    base.crafting_categories = {category}
    base.crafting_speed = 1
    base.emissions_per_minute = 1
    base.energy_usage = "420kW"
    base.module_specification =
    {
        module_slots = 3,
        module_info_icon_shift = {0, 0.8}
    }
    -- Adjust animation or any other necessary properties...
    return base
end

data:extend({
    createEntity("fish-fillet-machine", "fish-processing"),
    createEntity("fish-sorter", "fish-sorting"),
    createEntity("fish-packer", "fish-packing"),
    createEntity("fish-feeder", "fish-feeding"),
    createEntity("seaweed-harvester", "bio-harvesting"),
    createEntity("fish-aquarium", "fish-chemicals"),
    createEntity("coral-aquarium", "coral-chemicals"),
    createEntity("hydroponics", "hydroponics"),
    createEntity("coral-farm", "bio-growth"),
    createEntity("hydroponics-bay", "advanced-hydroponics"),
    createEntity("coral-harvester", "coral-harvesting"),
    createEntity("coral-planter", "coral-planting"),
    createEntity("marine-research-lab", "biology-research"),

    createChemical("water-separator", "water-production"),
    createChemical("fish-hatchery", "fish-hatchery"),
    createChemical("algae-farm", "algae-growth"),
    createChemical("fish-drying-rack", "fish-drying-rack"),
    createChemical("coral-refinery", "coral-refining"),
    createChemical("fish-oil-extractor", "fish-extraction"),
    createChemical("fish-oil-refinery", "fish-advanced-extraction"),
  --createChemical("composite-preparer", "binding-material-production"),

    createFurnace("ore-conditioner", "pre-smelting"),
    createFurnace("fish-smoker", "fish-smoking"),

    createCentrifuge("enhanced-ore-polisher", "ore-preparation"),

})


local fish_drill = table.deepcopy(data.raw["mining-drill"]["burner-mining-drill"])
fish_drill.name = "fish-drill"
fish_drill.icon = "__base__/graphics/icons/stone-furnace.png"
fish_drill.minable = {mining_time = 0.2, result = "fish-drill"}
fish_drill.max_health = 300
fish_drill.type = "furnace"
fish_drill.module_specification = {
    module_slots = 2,
    module_info_icon_shift = {0, 0.8}
}
fish_drill.allowed_effects = {"speed", "productivity"}
fish_drill.source_inventory_size = 1
fish_drill.result_inventory_size = 1
fish_drill.crafting_categories = {"fish-breeding"}
fish_drill.energy_source = {
    type = "burner",
    fuel_category = "fish-eggs",
    effectivity = 1,
    emissions_per_minute = 10,
    fuel_inventory_size = 1,
}
fish_drill.energy_usage = "80kW"
fish_drill.crafting_speed = 1
-- Adjust animations to fit the burner mining drill functionality
fish_drill.animation = {
    north = {
        layers = {
            {
                priority = "high",
                width = 87,  -- Width of a single frame of animation
                height = 95,  -- Height of a single frame of animation
                line_length = 4,  -- Number of frames in a single row of the sprite sheet
                frame_count = 32,  -- Total number of frames of animation
                shift = util.by_pixel(0, -12),  -- Offset of the sprite relative to the entity's position
                filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-N.png",
                hr_version = {
                    priority = "high",
                    width = 173,  -- Width for HR image
                    height = 188,  -- Height for HR image
                    line_length = 4,
                    frame_count = 32,
                    shift = util.by_pixel(0, -12),  -- Adjusted for HR, might need to be doubled
                    scale = 0.5,  -- HR images are double the resolution, so scale is halved
                    filename = "__base__/graphics/entity/burner-mining-drill/hr-burner-mining-drill-N.png",
                }
            },
            -- Shadow layer here, similar structure with appropriate shadow image paths and properties
        }
    },
    -- Definitions for other directions (east, south, west) follow...
}

-- Remove the working_visualisations section entirely if no active animation is needed.
fish_drill.working_visualisations = nil

-- Make sure to adjust the ingredient_count, ingredient_lists, result_count, etc., to match the expected behavior and appearance.

-- Finally, add your custom entity to the game
data:extend({fish_drill})


local fast_inserter_copy = table.deepcopy(data.raw["inserter"]["fast-inserter"])
fast_inserter_copy.name = "bronze-inserter"
fast_inserter_copy.rotation_speed = 0.033
fast_inserter_copy.extension_speed = 0.045
fast_inserter_copy.minable = {mining_time = 0.1, result = "bronze-inserter"}

data:extend({fast_inserter_copy})

local longhanded_inserter_copy = table.deepcopy(data.raw["inserter"]["long-handed-inserter"])
longhanded_inserter_copy.name = "bronze-long-handed-inserter"
longhanded_inserter_copy.rotation_speed = 0.025
longhanded_inserter_copy.extension_speed = 0.075
longhanded_inserter_copy.minable = {mining_time = 0.1, result = "bronze-long-handed-inserter"}

data:extend({longhanded_inserter_copy})

local bronze_filter_inserter = table.deepcopy(data.raw["inserter"]["filter-inserter"])
bronze_filter_inserter.name = "bronze-filter-inserter"
bronze_filter_inserter.rotation_speed = 0.03
bronze_filter_inserter.extension_speed = 0.07
bronze_filter_inserter.filter_count = 3
bronze_filter_inserter.minable = {mining_time = 0.1, result = "bronze-filter-inserter"}

data:extend({bronze_filter_inserter})

local bronze_pipe_to_ground = table.deepcopy(data.raw["pipe-to-ground"]["pipe-to-ground"])
bronze_pipe_to_ground.name = "bronze-pipe-to-ground"
bronze_pipe_to_ground.minable = {mining_time = 0.1, result = "bronze-pipe-to-ground"}

data:extend({bronze_pipe_to_ground})

local bronze_pump = table.deepcopy(data.raw["pump"]["pump"])
bronze_pump.name = "bronze-pump"
bronze_pump.pumping_speed = 200
bronze_pump.minable = {mining_time = 0.1, result = "bronze-pump"}

data:extend({bronze_pump})

local bronze_storage_tank = table.deepcopy(data.raw["storage-tank"]["storage-tank"])
bronze_storage_tank.name = "bronze-storage-tank"
bronze_storage_tank.fluid_box.base_area = 80
bronze_storage_tank.minable = {mining_time = 0.1, result = "bronze-storage-tank"}

data:extend({bronze_storage_tank})

local bronze_pipe = table.deepcopy(data.raw["pipe"]["pipe"])
bronze_pipe.name = "bronze-pipe"
bronze_pipe.minable = {mining_time = 0.1, result = "bronze-pipe"}

data:extend({bronze_pipe})

data:extend({
    {
        type = "container",
        name = "fish-net",
        icon = "__AC-Aquaculture__/graphics/entity/fish-net.png",
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        collision_mask = {"ground-tile"},
        icon_size = 128,
        minable = {mining_time = 1, result = "fish-net"},
        max_health = 100,
        inventory_size = 1,  -- minimum inventory size?
        picture = {
            filename = "__AC-Aquaculture__/graphics/entity/fish-net.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            shift = {0.0, -0.0},
            scale = 0.75,  --Adjusted because original file is 128x
        },
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.4, -1.4}, {1.4, 1.4}},
    },
    {
        type = "assembling-machine",
        name = "marine-research-lab",
        icon = "__base__/graphics/icons/assembling-machine-2.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "marine-research-lab"},
        max_health = 300,
        crafting_categories = {"biology-research"},
        crafting_speed = 1,
        energy_usage = "420kW",
        energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1,
        },
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.4, -1.4}, {1.4, 1.4}},
        fluid_boxes = {
            -- Adjusting input positions to be exactly one tile away from the entity's edge
            {
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                base_level = -1,
                pipe_connections = {{ type="input", position = {-1, -2} }},
            },
            {
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                base_level = -1,
                pipe_connections = {{ type="input", position = {1, -2} }},
            },
            {
                production_type = "input",
                pipe_covers = pipecoverspictures(),
                base_level = -1,
                pipe_connections = {{ type="input", position = {0, 2} }},
            },
            off_when_no_fluid_recipe = false
        },
        animation = {
            filename = "__base__/graphics/entity/lab/lab.png",
            width = 98,
            height = 87,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1/3,
            shift = util.by_pixel(0, 1.5),
            hr_version = {
                filename = "__base__/graphics/entity/lab/hr-lab.png",
                width = 194,
                height = 174,
                frame_count = 33,
                line_length = 11,
                animation_speed = 1/3,
                shift = util.by_pixel(0, 1.5),
                scale = 0.5
            }
        },
        
    },      
})


-- List of logistic chest types
local chest_types = {
    "logistic-chest-storage",
    "logistic-chest-requester",
    "logistic-chest-passive-provider",
    "logistic-chest-active-provider",
    "logistic-chest-buffer"
}

-- Iterate over each chest type and create a modified version
for _, chest_type in ipairs(chest_types) do
    -- Deepcopy the existing chest
    local custom_chest = table.deepcopy(data.raw["logistic-container"][chest_type])

    -- Modify the chest properties
    custom_chest.name = "ceramic-"..chest_type
    custom_chest.icon = "__base__/graphics/icons/"..chest_type..".png"
    custom_chest.icon_size = 64
    custom_chest.icon_mipmaps = 4
    custom_chest.inventory_size = 5
    -- Adjust logistic_slots_count for chests that support it
    if
        chest_type == "logistic-chest-storage" or
        chest_type == "logistic-chest-requester" or
        chest_type == "logistic-chest-buffer" or
        chest_type == "logistic-chest-passive-provider" or
        chest_type == "logistic-chest-active-provider" then
        custom_chest.logistic_slots_count = 5
        -- Update requester and buffer chest request slots to 5
        if chest_type == "logistic-chest-requester" or chest_type == "logistic-chest-buffer" then
            custom_chest.request_slot_count = 5
        end
    end
    -- Add the modified chest to the game
    data:extend({custom_chest})
end
--Early Roboport
local early_roboport = table.deepcopy(data.raw["roboport"]["roboport"])
early_roboport.name = "simple-roboport"
early_roboport.icon = "__base__/graphics/icons/roboport.png"
early_roboport.icon_size = 64
early_roboport.icon_mipmaps = 4
early_roboport.minable.result = "simple-roboport"
early_roboport.logistics_radius = 15
early_roboport.construction_radius = 30
early_roboport.energy_source = {
    type = "electric",
    usage_priority = "secondary-input",
    input_flow_limit = "5MW",
    buffer_capacity = "100MJ",
    drain = "2MW"
}
early_roboport.energy_usage = "50kW"
early_roboport.recharge_minimum = "1MJ"
early_roboport.recharge_maximum = "5MJ"
early_roboport.robot_slots_count = 3
early_roboport.material_slots_count = 3

data:extend({early_roboport})

-- Fish-Brain Construction Robot
local fish_brain_robot = table.deepcopy(data.raw["construction-robot"]["construction-robot"])
fish_brain_robot.name = "biological-construction-robot"
fish_brain_robot.icon = "__base__/graphics/icons/construction-robot.png"
fish_brain_robot.icon_size = 64
fish_brain_robot.icon_mipmaps = 4
fish_brain_robot.minable.result = "biological-construction-robot"
fish_brain_robot.max_payload_size = 1
fish_brain_robot.speed = 0.02
fish_brain_robot.energy_per_move = "7.5kJ"
fish_brain_robot.energy_per_tick = "0.1kJ"
fish_brain_robot.speed_multiplier_when_out_of_energy = 1
fish_brain_robot.max_energy = "0.5MJ"

data:extend({fish_brain_robot})

--Fish-Brain Logistic Robot
local fish_brain_logistic_robot = table.deepcopy(data.raw["logistic-robot"]["logistic-robot"])
fish_brain_logistic_robot.name = "biological-logistic-robot"
fish_brain_logistic_robot.icon = "__base__/graphics/icons/logistic-robot.png"
fish_brain_logistic_robot.icon_size = 64
fish_brain_logistic_robot.icon_mipmaps = 4
fish_brain_logistic_robot.minable.result = "biological-logistic-robot"
fish_brain_logistic_robot.max_payload_size = 1
fish_brain_logistic_robot.speed = 0.02
fish_brain_logistic_robot.energy_per_move = "7.5kJ"
fish_brain_logistic_robot.energy_per_tick = "0.1kJ"
fish_brain_logistic_robot.speed_multiplier_when_out_of_energy = 1
fish_brain_logistic_robot.max_energy = "0.5MJ"

data:extend({fish_brain_logistic_robot})