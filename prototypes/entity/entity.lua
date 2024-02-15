
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