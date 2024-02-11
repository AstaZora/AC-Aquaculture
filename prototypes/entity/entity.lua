
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
    base.energy_usage = "120kW"
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
})

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

data:extend({
    createChemical("water-separator", "water-production"),
    createChemical("fish-hatchery", "fish-hatchery"),
    createChemical("algae-farm", "algae-growth"),
    createChemical("fish-drying-rack", "fish-drying-rack"),
    createChemical("fish-smoker", "fish-smoking"),
    createChemical("coral-refinery", "coral-refining"),
    createChemical("fish-oil-extractor", "fish-extraction"),
    createChemical("fish-oil-refinery", "fish-advanced-extraction"),

})