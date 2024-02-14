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
    {
        type = "recipe",
        name = "ac-advanced-circuitry",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {"fiberboard-circuitry", 10},
            {"copper-cable", 5},
            {"resin", 2}
        },
        result = "advanced-circuit"
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
    {
        type = "recipe",
        name = "ac-green-wire",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {"copper-cable", 1},
            {"resin", 1}
        },
        result = "green-wire"
    },
    {
        type = "recipe",
        name = "ac-red-wire",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {"copper-cable", 1},
            {"resin", 1}
        },
        result = "red-wire"
    },
-- Arithmetic Combinator
{
    type = "recipe",
    name = "ac-arithmetic-combinator",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {"copper-cable", 5},
        {"electronic-circuit", 5},
        {"iron-plate", 2}
    },
    result = "arithmetic-combinator"
},

-- Decider Combinator
{
    type = "recipe",
    name = "ac-decider-combinator",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {"copper-cable", 5},
        {"electronic-circuit", 5},
        {"iron-plate", 2}
    },
    result = "decider-combinator"
},

-- Constant Combinator
{
    type = "recipe",
    name = "ac-constant-combinator",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {"copper-cable", 5},
        {"electronic-circuit", 5},
        {"iron-plate", 2}
    },
    result = "constant-combinator"
},
    
    --Fish Parts
    --Glowfin Trenchers
    --Glowfin Filleting
    {
        type = "recipe",
        name = "glowfin-trenchers-filleting",
        icon = "__AC-Aquaculture__/graphics/icons/fish/fillet.png",
        icon_size = 128,
        category = "fish-processing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="glowfin-trenchers", amount=1}
        },
        results = {
            {type="item", name="glowfin-trenchers-fillet", amount=5},
            {type = "item", name = "glowfin-trenchers-egg", amount=1, probability=0.1}
        }
    },
    --Glowfin Trenchers Packing
    {
        type = "recipe",
        name = "glowfin-trenchers-packing",
        icon = "__AC-Aquaculture__/graphics/icons/fish/glowfin-trenchers-package.png",
        icon_size = 64,
        category = "fish-packing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="glowfin-trenchers-fillet", amount=5}
        },
        results = {
            {type="item", name="glowfin-trenchers-package", amount=1}
        }
    },
    --Glowfin Package Processing
    {
        type = "recipe",
        name = "glowfin-trenchers-package-processing",
        icon = "__AC-Aquaculture__/graphics/icons/fish/pressure-scales.png",
        icon_size = 128,
        category = "fish-sorting",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="glowfin-trenchers-package", amount=1}
        },
        results = {
            {type="item", name = "pressure-scales", amount=2},
            {type = "item", name = "egg-casings", amount=5},
        }
    },
    --Glowfin Scale Sorting
    {
        type = "recipe",
        name = "glowfin-trenchers-scale-filleting",
        icon = "__AC-Aquaculture__/graphics/icons/fish/egg-casings.png",
        icon_size = 128,
        category = "fish-processing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="pressure-scales", amount=2},
            {type = "item", name = "glowfin-trenchers-fillet", amount=1}
        },
        results = {
            {type="item", name="egg-casings", amount=10}
        }
    },
    --Glowfin Oil Extraction
    {
        type = "recipe",
        name = "glowfin-trenchers-oil-extraction",
        icon = "__AC-Aquaculture__/graphics/icons/fish/fluids/glowfin-oil.png",
        icon_size = 128,
        category = "fish-extraction",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="glowfin-trenchers-egg", amount=20}
        },
        results = {
            {type="fluid", name="glowfin-oil", amount=10}
        }
    },
    --Glowfin Oil Encapsulation
    {
        type = "recipe",
        name = "glowfin-trenchers-oil-encapsulation",
        icon = "__AC-Aquaculture__/graphics/icons/fish/glowfin-oil-capsule.png",
        icon_size = 128,
        category = "fish-packing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="fluid", name="glowfin-oil", amount=10},
            {type="item", name="egg-casings", amount=4}
        },
        results = {
            {type="item", name="glowfin-oil-capsule", amount=1}
        }
    },
    --Glowfin Luminescence Gel
    {
        type = "recipe",
        name = "glowfin-trenchers-luminescence-capsule",
        icon = "__AC-Aquaculture__/graphics/icons/fish/glowfin-luminescence-capsule.png",
        icon_size = 128,
        category = "fish-advanced-extraction",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="glowfin-oil-capsule", amount=10}
        },
        results = {
            {type="item", name="glowfin-luminescence-capsule", amount=5}
        }
    },
    --luminence Gel
    {
        type = "recipe",
        name = "glowfin-trenchers-luminescence-gel",
        icon = "__AC-Aquaculture__/graphics/icons/fish/glowfin-luminescence-gel.png",
        icon_size = 128,
        category = "fish-advanced-extraction",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="glowfin-luminescence-capsule", amount=10}
        },
        results = {
            {type="item", name="glowfin-luminescence-gel", amount=4}
        }
    },
    --Glowfin Oil Refinement
    {
        type = "recipe",
        name = "glowfin-trenchers-oil-refinement",
        icon = "__base__/graphics/icons/fluid/lubricant.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-advanced-extraction",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="glowfin-oil-capsule", amount=10}
        },
        results = {
            {type="fluid", name="lubricant", amount=20}
        }
    },
    --Extraction and Procurement
    --Vision Extraction
    {
        type = "recipe",
        name = "glowfin-trenchers-vision-extraction",
        icon = "__AC-Aquaculture__/graphics/icons/fish/glowfin-trencher-eyes.png",
        icon_size = 128,
        category = "fish-chemicals",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="glowfin-trenchers", amount=5},
            {type="item", name = "pressure-scales", amount = 2},
            {type="item", name = "glowfin-luminescence-gel", amount = 1}
        },
        results = {
            {type="item", name="glowfin-trencher-eyes", amount=10}
        }
    },
    {
        type = "recipe",
        name = "glowfin-enhancer",
        icon = "__AC-Aquaculture__/graphics/icons/fish/glowfin-enhancer.png",
        icon_size = 128,
        category = "fish-chemicals",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="glowfin-trencher-eyes", amount=5},
            {type="item", name = "pressure-scales", amount = 2}
        },
        results = {
            {type="item", name="glowfin-enhancer", amount=5}
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
    if eggSize == "large" then
        eggAmount = 10
        eggVariance = 5
    elseif eggSize == "medium" then
        eggAmount = 20
        eggVariance = 10
    elseif eggSize == "small" then
        eggAmount = 30
        eggVariance = 15
    end

    local minEggAmount = eggAmount - eggVariance
    local maxEggAmount = eggAmount + eggVariance

    table.insert(fishBreedingRecipes, {
        type = "recipe",
        name = "ac-breed-"..fishType,
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64,
        enabled = true,
        category = "fish-hatchery",
        subgroup = "fish-breeding",
        energy_required = 180,
        ingredients = {
            {type="item", name= fishType, amount=20},
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
        energy_required = 60,
        ingredients = {
            {type="item", name= fishType.."-egg", amount=1},
        },
        results = {
            {type="item", name=fishType, amount_min = minEggAmount, amount_max = maxEggAmount}
        }
    })
end

data:extend(fishBreedingRecipes)

