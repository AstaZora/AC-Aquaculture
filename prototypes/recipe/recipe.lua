require "prototypes.categories.fluid-recipes"
require "prototypes.categories.recipe-category"


data:extend({
    {
        type = "recipe",
        name = "water-separator",
        enabled = true,
        energy_required = 5,
        ingredients = {
            {"pump", 4},
            {"advanced-circuit", 5},
            {"pipe", 10}
        },
        result = "water-separator"
    },
    -- Machine 1: Fish Hatchery
    {
        type = "recipe",
        name = "fish-hatchery",
        enabled = true,
        energy_required = 10,
        ingredients = {
            {"iron-plate", 10},
            {"copper-cable", 5},
            {"electronic-circuit", 2}
        },
        result = "fish-hatchery"
    },
    -- Machine 2: Algae Farm
    {
        type = "recipe",
        name = "algae-farm",
        enabled = true,
        energy_required = 15,
        ingredients = {
            {"steel-plate", 10},
            {"iron-gear-wheel", 5},
            {"electronic-circuit", 3}
        },
        result = "algae-farm"
    },
    -- Machine 3: Fish Feeder
    {
        type = "recipe",
        name = "fish-feeder",
        enabled = true,
        energy_required = 8,
        ingredients = {
            {"iron-plate", 8},
            {"copper-cable", 4},
            {"electronic-circuit", 2}
        },
        result = "fish-feeder"
    },
    -- Machine 4: Fish Sorter
    {
        type = "recipe",
        name = "fish-sorter",
        enabled = true,
        energy_required = 12,
        ingredients = {
            {"steel-plate", 12},
            {"iron-gear-wheel", 6},
            {"electronic-circuit", 3}
        },
        result = "fish-sorter"
    },
    -- Machine 5: Fish Fillet Machine
    {
        type = "recipe",
        name = "fish-fillet-machine",
        enabled = false,
        energy_required = 15,
        ingredients = {
            {"steel-plate", 15},
            {"iron-gear-wheel", 8},
            {"advanced-circuit", 4}
        },
        result = "fish-fillet-machine"
    },
    -- Machine 6: Fish Drying Rack
    {
        type = "recipe",
        name = "fish-drying-rack",
        enabled = true,
        energy_required = 10,
        ingredients = {
            {"iron-plate", 10},
            {"copper-cable", 5},
            {"advanced-circuit", 3}
        },
        result = "fish-drying-rack"
    },
    -- Machine 7: Fish Oil Extractor
    {
        type = "recipe",
        name = "fish-oil-extractor",
        enabled = true,
        energy_required = 12,
        ingredients = {
            {"steel-plate", 12},
            {"iron-gear-wheel", 6},
            {"advanced-circuit", 4}
        },
        result = "fish-oil-extractor"
    },
    --Fish Oil Refinery
    {
        type = "recipe",
        name = "fish-oil-refinery",
        enabled = true,
        energy_required = 15,
        ingredients = {
            {"steel-plate", 15},
            {"iron-gear-wheel", 8},
            {"processing-unit", 2}
        },
        result = "fish-oil-refinery"
    },
    -- Machine 8: Seaweed Harvester
    {
        type = "recipe",
        name = "seaweed-harvester",
        enabled = true,
        energy_required = 15,
        ingredients = {
            {"steel-plate", 15},
            {"iron-gear-wheel", 8},
            {"advanced-circuit", 5}
        },
        result = "seaweed-harvester"
    },
    -- Machine 9: Fish Packaging Machine
    {
        type = "recipe",
        name = "fish-packaging-machine",
        enabled = true,
        energy_required = 12,
        ingredients = {
            {"steel-plate", 12},
            {"iron-gear-wheel", 6},
            {"processing-unit", 2}
        },
        result = "fish-packer"
    },
    -- Machine 10: Fish Aquarium
    {
        type = "recipe",
        name = "fish-aquarium",
        enabled = true,
        energy_required = 20,
        ingredients = {
            {"steel-plate", 20},
            {"iron-gear-wheel", 10},
            {"processing-unit", 3}
        },
        result = "fish-aquarium"
    },
    --Fish Smoker
    {
        type = "recipe",
        name = "fish-smoker",
        enabled = true,
        energy_required = 15,
        ingredients = {
            {"steel-plate", 15},
            {"iron-gear-wheel", 8},
            {"processing-unit", 2}
        },
        result = "fish-smoker"
    },
    --Hydrponics
    {
        type = "recipe",
        name = "hydroponics",
        enabled = true,
        energy_required = 10,
        ingredients = {
            {"iron-plate", 10},
            {"copper-cable", 5},
            {"electronic-circuit", 2}
        },
        result = "hydroponics"
    },
    --Hydroponics Bay
    {
        type = "recipe",
        name = "hydroponics-bay",
        enabled = true,
        energy_required = 15,
        ingredients = {
            {"steel-plate", 10},
            {"iron-gear-wheel", 5},
            {"electronic-circuit", 3}
        },
        result = "hydroponics-bay"
    },
    --Coral Farm
    {
        type = "recipe",
        name = "coral-farm",
        enabled = true,
        energy_required = 35,
        ingredients = {
            {"iron-plate", 20},
            {"advanced-circuit", 6}
        },
        result = "coral-farm"
    },
    --Coral Harvester
    {
        type = "recipe",
        name = "coral-harvester",
        enabled = true,
        energy_required = 25,
        ingredients = {
            {"steel-plate", 15},
            {"iron-gear-wheel", 8},
            {"advanced-circuit", 4}
        },
        result = "coral-harvester"
    },
    --Coral Refinery
    {
        type = "recipe",
        name = "coral-refinery",
        enabled = true,
        energy_required = 20,
        ingredients = {
            {"steel-plate", 20},
            {"iron-gear-wheel", 10},
            {"processing-unit", 3}
        },
        result = "coral-refinery"
    },
    --Coral Planter
    {
        type = "recipe",
        name = "coral-planter",
        enabled = true,
        energy_required = 15,
        ingredients = {
            {"steel-plate", 15},
            {"iron-gear-wheel", 8},
            {"advanced-circuit", 5}
        },
        result = "coral-planter"
    },
    --Coral Aquarium
    {
        type = "recipe",
        name = "coral-aquarium",
        enabled = true,
        energy_required = 20,
        ingredients = {
            {"steel-plate", 20},
            {"iron-gear-wheel", 10},
            {"processing-unit", 3}
        },
        result = "coral-aquarium"
    },
    --Marine Research Lab
    {
        type = "recipe",
        name = "marine-research-lab",
        enabled = true,
        energy_required = 40,
        ingredients = {
            {"processing-unit", 5},
            {"lab", 1},
            {"steel-plate", 20}
        },
        result = "marine-research-lab"
    },
    --Pond Water
    {
        type = "recipe",
        name = "pond-water",
        icon = "__base__/graphics/icons/landfill.png",
        icon_size = 64,
        category = "water-production",
        energy_required = 1,
        ingredients = {{type="fluid", name="water", amount=100}},
        results = {
            {type = "item", name="pond-water", amount=1}
        }

    },


    -- recipes
    {
        type = "recipe",
        name = "fish-filleting",
        category = "fish-processing",
        allowed_machine = "fish-filleting-machine",  -- Custom field for demonstration, not native to Factorio data structure.
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="raw-fish", amount=1}
        },
        results = {
            {type="item", name="fish-fillet", amount=5}
        }

    },
    
    
})

local fishTypes = {"glowfin-trenchers", "mukmoux", "neon-nocturne", "silverscale-glider", "spiral-shellfish", "silent-drifter", "twilight-tetra", "starfin-darters", "stream-sifter"}
local fishBreedingRecipes = {}
local fishEggSizes = {
    ["glowfin-trenchers"] = "small",
    ["twilight-tetra"] = "small",
    ["starfin-darters"] = "small",
    ["silverscale-glider"] = "medium",
    ["neon-nocturne"] = "medium",
    ["spiral-shellfish"] = "medium",
    ["mukmoux"] = "large",
    ["stream-sifter"] = "large",
    ["silent-drifter"] = "large"
}

for _, fishType in ipairs(fishTypes) do
    local eggSize = fishEggSizes[fishType]
    local eggAmount = 10
    local eggVariance = 5 -- Adjust this value to control the variance in egg returns

    if eggSize == "medium" then
        eggAmount = 20
        eggVariance = 10
    elseif eggSize == "large" then
        eggAmount = 30
        eggVariance = 15
    end

    local minEggAmount = eggAmount - eggVariance
    local maxEggAmount = eggAmount + eggVariance

    table.insert(fishBreedingRecipes, {
        type = "recipe",
        name = "ac-breed-"..fishType.."-egg",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64,
        enabled = true,
        category = "fish-hatchery",
        subgroup = "fish-breeding",
        energy_required = 300,
        ingredients = {
            {type="item", name= fishType, amount=10},
        },
        results = {
            {type="item", name=fishType.."-egg", amount_min = minEggAmount, amount_max = maxEggAmount}
        }
    })

    table.insert(fishBreedingRecipes, {
        type = "recipe",
        name = "ac-breed-"..fishType,
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64,
        enabled = true,
        category = "fish-hatchery",
        subgroup = "fish-breeding",
        energy_required = 300,
        ingredients = {
            {type="item", name= fishType, amount=10},
        },
        results = {
            {type="item", name=fishType, amount_min = 5, amount_max = 15},
            {type="item", name=fishType.."-egg", amount_min = minEggAmount, amount_max = maxEggAmount}
        }
    })

    table.insert(fishBreedingRecipes, {
        type = "recipe",
        name = "ac-breed-"..fishType.."-egg",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64,
        enabled = true,
        category = "fish-breeding",
        subgroup = "fish-breeding",
        energy_required = 300,
        ingredients = {
            {type="item", name= fishType.."-egg", amount=1},
        },
        results = {
            {type="item", name=fishType, amount_min = minEggAmount, amount_max = maxEggAmount}
        }
    })
end

data:extend(fishBreedingRecipes)

