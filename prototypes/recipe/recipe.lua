require "prototypes.categories.fluid-recipes"
require "prototypes.categories.recipe-category"


data:extend({
    {
        type = "recipe",
        name = "water-separator",
        enabled = true,
        energy_required = 5,
        ingredients = {
            {"bronze-pump", 4},
            {"advanced-circuit", 5},
            {"pipe", 10}
        },
        result = "water-separator"
    },
    -- Machine 1: Fish Hatchery
    {
        type = "recipe",
        name = "fish-hatchery",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"bronze-plate", 10},
            {"copper-cable", 5},
            {"fiberboard-circuitry", 2}
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
        enabled = false,
        energy_required = 8,
        ingredients = {
            {"bronze-plate", 8},
            {"copper-cable", 4},
            {"fiberboard-circuitry", 2}
        },
        result = "fish-feeder"
    },
    --Fish Drill
    {
        type = "recipe",
        name = "fish-drill",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {"bronze-plate", 10},
            {"bronze-gear", 5},
            {"fiberboard-circuitry", 3}
        },
        result = "fish-drill"
    },
    -- Machine 4: Fish Sorter
    {
        type = "recipe",
        name = "fish-sorter",
        enabled = true,
        energy_required = 12,
        ingredients = {
            {"bronze-plate", 5},
            {"bronze-gear", 6},
            {"advanced-circuit", 3}
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
            {"bronze-plate", 15},
            {"bronze-gear", 8},
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
            {"bronze-plate", 12},
            {"bronze-gear", 6},
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
            {"bronze-plate", 15},
            {"bronze-gear", 8},
            {"advanced-circuit", 2}
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
            {"bronze-plate", 8},
            {"bronze-gear", 3},
            {"advanced-circuit", 2}
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
            {"bronze-plate", 8},
            {"bronze-gear", 3},
            {"advanced-circuit", 2}
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
            {"bronze-plate", 15},
            {"bronze-gear", 8},
            {"advanced-circuit", 2}
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
        enabled = false,
        energy_required = 40,
        ingredients = {
            {"advanced-circuit", 5},
            {"lab", 1},
            {"bronze-plate", 20}
        },
        result = "marine-research-lab"
    },
    --Enhanced Ore Polisher
    {
        type = "recipe",
        name = "enhanced-ore-polisher",
        enabled = true,
        energy_required = 20,
        ingredients = {
            {"advanced-circuit", 5},
            {"lab", 1},
            {"iron-plate", 20}
        },
        result = "enhanced-ore-polisher"
    },    
    --Pond Water
    {
        type = "recipe",
        name = "pond-water",
        icon = "__base__/graphics/icons/landfill.png",
        icon_size = 64,
        category = "water-production",
        energy_required = 10,
        ingredients = {{type="fluid", name="water", amount=100}},
        results = {
            {type = "item", name="pond-water", amount=1}
        }
    },
    --Fish Net
    {
        type = "recipe",
        name = "ac-fish-net",
        enabled = true,
        energy_required = 5,
        ingredients = {
            {"wood", 5},
            {"iron-stick", 5},
            {"copper-cable", 5} -- Update this later to be something made from fish, like fish rope or fibers?
        },
        result = "fish-net"
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
    --leather Transport Belts
    {
        type = "recipe",
        name = "leather-transport-belt",
        category = "advanced-crafting",
        enabled = false,
        energy_required = 2,
        ingredients = {
            {type="item", name="mukmoux-hard-leather", amount=2},
            {type="item", name="bronze-gear", amount=4},
            {type="fluid", name="lubricant", amount=5},
            {type="item", name="wooden-transport-belt", amount=1},
        },
        result = "leather-transport-belt"
    },
    {
        type = "recipe",
        name = "leather-transport-belt-to-ground",
        category = "advanced-crafting",
        enabled = false,
        energy_required = 2,
        ingredients = {
            {type="item", name="wooden-underground-belt", amount=2},
            {type="item", name="bronze-gear", amount=5},
            {type="item", name="bronze-plate", amount=5}
        },
        result = "leather-underground-belt",
        result_count = 2
    },
    {
        type = "recipe",
        name = "leather-splitter",
        category = "advanced-crafting",
        enabled = false,
        energy_required = 2,
        ingredients = {
            {type="item", name="advanced-circuit", amount=2},
            {type="item", name="bronze-gear", amount=5},
            {type="item", name="wooden-splitter", amount=1}
        },
        result = "leather-splitter"
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

--Ore Powder Refining
    {
        type = "recipe",
        name = "ac-mixed-ore-refining",
        icon = "__base__/graphics/icons/stone.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "ore-preparation",
        subgroup = "ab-ore-refinery",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type="item", name="mixed-ore-powder", amount=5},
            {type="item", name="mukmoux-polishing-stone", amount=1}
        },
        results = {
            {type="item", name="stone", amount=2},
            {type="item", name="iron-ore", amount=5},
            {type="item", name="copper-ore", amount=5},
            {type="item", name="tin-ore", amount=5}
        }
    },
    --AB Compatibility Recipes
    
    --Bronze Inserter
    {
        type = "recipe",
        name = "ac-bronze-inserter",
        category = "advanced-crafting",
        energy_required = 0.5,
        ingredients = {
            {type = "item", name = "wooden-inserter", amount = 1},
            {type = "item", name = "fiberboard-circuitry", amount = 2},
            {type = "item", name = "bronze-gear", amount = 3},
            {type = "fluid", name = "mukmoux-sealant", amount = 20}
        },
        result = "bronze-inserter",
        result_count = 1,
        enabled = false
    },
    --Bronze Long Handed Inserter
    {
        type = "recipe",
        name = "ac-bronze-long-handed-inserter",
        category = "advanced-crafting",
        energy_required = 0.5,
        ingredients = {
            {type = "item", name = "wooden-inserter", amount = 1},
            {type = "item", name = "fiberboard-circuitry", amount = 2},
            {type = "item", name = "bronze-gear", amount = 4},
            {type = "fluid", name = "mukmoux-sealant", amount = 20}
        },
        result = "bronze-long-handed-inserter",
        result_count = 1,
        enabled = false
    },
    --Bronze Filter Inserter
    {
        type = "recipe",
        name = "ac-bronze-filter-inserter",
        category = "advanced-crafting",
        energy_required = 0.5,
        ingredients = {
            {type = "item", name = "slow-filter-inserter", amount = 1},
            {type = "item", name = "advanced-circuit", amount = 2},
            {type = "item", name = "bronze-gear", amount = 4},
            {type = "fluid", name = "mukmoux-sealant", amount = 20}
        },
        result = "bronze-filter-inserter",
        result_count = 1,
        enabled = false
    },
    --Bronze Pump
    {
        type = "recipe",
        name = "ac-bronze-pump",
        category = "crafting",
        energy_required = 1,
        ingredients = {{"bronze-gear", 2},{"bronze-pipe", 2}},
        result = "bronze-pump",
        result_count = 1,
        enabled = false
    },
    --Bronze Pipe
    {
        type = "recipe",
        name = "ac-bronze-pipe",
        category = "crafting",
        energy_required = 1,
        ingredients = {{"bronze-plate", 1}},
        result = "bronze-pipe",
        result_count = 1,
        enabled = false
    },
    --Bronze Pipe to Ground
    {
        type = "recipe",
        name = "ac-bronze-pipe-to-ground",
        category = "crafting",
        energy_required = 1,
        ingredients = {{"bronze-pipe", 5}},
        result = "pipe-to-ground",
        result_count = 2,
        enabled = false
    },
    --Bronze Storage Tank
    {
        type = "recipe",
        name = "ac-bronze-storage-tank",
        category = "crafting",
        energy_required = 1,
        ingredients = {{"bronze-plate", 20},{"bronze-pipe", 5}},
        result = "bronze-storage-tank",
        result_count = 1,
        enabled = false
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
        energy_required = 4,
        enabled = false,
        ingredients = {
            {type="item", name="glowfin-trenchers-egg", amount=20}
        },
        results = {
            {type="fluid", name="glowfin-oil", amount=50}
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
    --Mukmoux Processing Chain
    --Mukmoux Filleting
    {
        type = "recipe",
        name = "mukmoux-filleting",
        icon = "__AC-Aquaculture__/graphics/icons/fish/fillet.png",
        icon_size = 128,
        category = "fish-processing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="mukmoux", amount=1}
        },
        results = {
            {type="item", name="mukmoux-fillet", amount=10},
            {type = "item", name = "mukmoux-egg", amount=1, probability=0.1}
        }
    },
    --Mukmoux Packing
    {
        type = "recipe",
        name = "mukmoux-packing",
        icon = "__base__/graphics/icons/wooden-chest.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-packing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="mukmoux-fillet", amount=20}
        },
        results = {
            {type="item", name="mukmoux-package", amount=1}
        }
    },
    --Mukmoux Package Processing
    {
        type = "recipe",
        name = "mukmoux-package-sorting",
        icon = "__AC-Aquaculture__/graphics/icons/fish/mukmoux-hide.png",
        icon_size = 128,
        category = "fish-sorting",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="mukmoux-package", amount=1}
        },
        results = {
            {type="item", name = "mukmoux-hide", amount = 2, probability=0.05},
            {type = "item", name = "mukmoux-fat", amount = 5},
        }
    },
    --Mukmoux Fat Processing
    {
        type = "recipe",
        name = "mukmoux-fat-processing",
        icon = "__AC-Aquaculture__/graphics/icons/fish/fluids/mukmoux-mucous.png",
        icon_size = 128,
        category = "fish-drying-rack",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="mukmoux-fat", amount=5},
            {type="item", name="mukmoux-egg", amount=20}
        },
        results = {
            {type="fluid", name="mukmoux-mucous", amount=20}
        }
    },
    --Mukmoux Stone Gathering
    {
        type = "recipe",
        name = "mukmoux-stone-gathering",
        icon = "__AC-Aquaculture__/graphics/icons/fish/mukmoux-stones.png",
        icon_size = 128,
        category = "fish-drying-rack",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="mukmoux", amount=5},
            {type="item", name="mukmoux-fat", amount=5}
    },
        results = {
            {type="item", name="mukmoux-stones", amount=10}
        }
    },
    --Mukmoux Stone Polishing
    {
        type = "recipe",
        name = "mukmoux-stone-polishing",
        icon = "__AC-Aquaculture__/graphics/icons/fish/mukmoux-polishing-stone.png",
        icon_size = 128,
        category = "ore-preparation",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="mukmoux-stones", amount=4},
            {type="fluid", name="mukmoux-mucous", amount=2}
        },
        results = {
            {type="item", name="mukmoux-polishing-stone", amount=4}
        }
    },
    --Mukmoux Stone Grinding
    {
        type = "recipe",
        name = "mukmoux-stone-grinding",
        icon = "__AC-Aquaculture__/graphics/icons/fish/mukmoux-ground-polishing-stone.png",
        icon_size = 128,
        category = "ab-crushing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="mukmoux-polishing-stone", amount=4}
        },
        results = {
            {type="item", name="mukmoux-ground-polishing-stone", amount=8}
        }
    },
    --Mukmoux Ceramic Powder
    {
        type = "recipe",
        name = "mukmoux-ceramic-powder",
        icon = "__AC-Aquaculture__/graphics/icons/fish/mukmoux-ceramic-powder.png",
        icon_size = 128,
        category = "ab-crushing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="mukmoux-ground-polishing-stone", amount=4}
        },
        results = {
            {type="item", name="mukmoux-ceramic-powder", amount=8}
        }
    },
    --Mukmoux Leather
    {
        type = "recipe",
        name = "mukmoux-leather",
        icon = "__AC-Aquaculture__/graphics/icons/fish/mukmoux-leather.png",
        icon_size = 128,
        category = "fish-drying-rack",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="mukmoux-hide", amount=4},
            {type="item", name="mukmoux-polishing-stone", amount=1}
        },
        results = {
            {type="item", name="mukmoux-leather", amount=1}
        }
    },
    --Mukmoux Leather Processing
    {
        type = "recipe",
        name = "mukmoux-leather-processing",
        icon = "__AC-Aquaculture__/graphics/icons/fish/mukmoux-hard-leather.png",
        icon_size = 128,
        category = "fish-smoking",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="mukmoux-leather", amount=1}
        },
        results = {
            {type="item", name="mukmoux-hard-leather", amount=2}
        }
    },
    --Mukmoux Sealant
    {
        type = "recipe",
        name = "mukmoux-sealant",
        icon = "__AC-Aquaculture__/graphics/icons/fish/fluids/mukmoux-sealant.png",
        icon_size = 128,
        category = "fish-advanced-extraction",
        subgroup = "fish-breeding",
        energy_required = 4,
        enabled = false,
        ingredients = {
            {type="item", name="mukmoux-fat", amount=2},
            {type="fluid", name="mukmoux-mucous", amount=5}
        },
        results = {
            {type="fluid", name="mukmoux-sealant", amount=50}
        }
    },
    --Mukmoux Bones
    {
        type = "recipe",
        name = "mukmoux-bones",
        icon = "__AC-Aquaculture__/graphics/icons/fish/mukmoux-bones.png",
        icon_size = 128,
        category = "fish-processing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="mukmoux-fillet", amount=5}
        },
        results = {
            {type="item", name="mukmoux-bones", amount=10}
        }
    },
    --Mukmoux Calcium
    {
        type = "recipe",
        name = "mukmoux-calcium",
        icon = "__AC-Aquaculture__/graphics/icons/fish/mukmoux-calcium.png",
        icon_size = 128,
        category = "ab-crushing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="mukmoux-bones", amount=10}
        },
        results = {
            {type="item", name="mukmoux-calcium", amount=5}
        }
    },
    --Silverscale Glider
    --Processing
    {
        type = "recipe",
        name = "silverscale-glider-filleting",
        icon = "__AC-Aquaculture__/graphics/icons/fish/fillet.png",
        icon_size = 128,
        category = "fish-processing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="silverscale-glider", amount=1}
        },
        results = {
            {type="item", name="silverscale-glider-fillet", amount=4},
            {type="item", name="silverscale-glider-egg", amount=1, probability=0.1}
        }
    },
    {
        type = "recipe",
        name = "silverscale-glider-packing",
        icon = "__base__/graphics/icons/wooden-chest.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-packing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="silverscale-glider-fillet", amount=20}
        },
        results = {
            {type="item", name="silverscale-glider-package", amount=1}
        }
    },
    {
        type = "recipe",
        name = "silverscale-glider-package-sorting",
        icon = "__AC-Aquaculture__/graphics/icons/fish/silverscale-glider-scales.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-sorting",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="silverscale-glider-package", amount=1}
        },
        results = {
            {type="item", name="silverscale-glider-scales", amount=5},
        }
    },
    --silverscale Glider Oil extraction
    {
        type = "recipe",
        name = "silverscale-glider-oil-extraction",
        icon = "__AC-Aquaculture__/graphics/icons/fish/fluids/silverscale-oil.png",
        icon_size = 128,
        category = "fish-advanced-extraction",
        subgroup = "fish-breeding",
        energy_required = 4,
        enabled = false,
        ingredients = {
            {type="item", name="silverscale-glider-fillet", amount=10},
            {type="item", name="silverscale-glider-egg", amount=10}
        },
        results = {
            {type="fluid", name="silverscale-oil", amount=50}
        }
    },
    {
        type = "recipe",
        name = "silverscale-glider-gel-extraction",
        icon = "__AC-Aquaculture__/graphics/icons/fish/silverscale-glider-gel.png",
        icon_size = 128,
        category = "fish-advanced-extraction",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="fluid", name="silverscale-oil", amount=10},
            {type = "fluid", name = "water", amount = 40}
        },
        results = {
            {type="item", name="silverscale-glider-gel", amount=5},
            {type = "fluid", name = "steam", amount = 80}
        }
    },
    {
        type = "recipe",
        name = "silverscale-glider-scale-refinement",
        icon = "__AC-Aquaculture__/graphics/icons/fish/silverscale-glider-scales.png",
        icon_size = 128,
        category = "fish-sorting",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="silverscale-glider-scales", amount=5},
            {type="item", name="silverscale-glider-gel", amount=1}
        },
        results = {
            {type="item", name="refined-silverscale", amount=1}
        }
    },
    {
        type = "recipe",
        name = "silverscale-muscle-processing",
        icon = "__AC-Aquaculture__/graphics/icons/fish/silverscale-muscle.png",
        icon_size = 128,
        category = "fish-processing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="silverscale-glider-fillet", amount=4}
        },
        results = {
            {type="item", name="silverscale-glider-muscle", amount=2}
        }
    },
    {
        type = "recipe",
        name = "muscle-fiber-twining",
        icon = "__AC-Aquaculture__/graphics/icons/fish/entwined-muscles.png",
        icon_size = 128,
        category = "fish-extraction",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="silverscale-glider-muscle", amount=5}
        },
        results = {
            {type="item", name="twined-muscle-fiber", amount=1}
        }
    },
    --Spiral Shellfish Recipes
    {
        type = "recipe",
        name = "spiral-shellfish-filleting",
        icon = "__AC-Aquaculture__/graphics/icons/fish/fillet.png",
        icon_size = 128,
        category = "fish-processing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="spiral-shellfish", amount=10}
        },
        results = {
            {type="item", name="spiral-shellfish-fillet", amount=5},
            {type="item", name="spiral-shellfish-egg", amount=1, probability=0.1}
        }
    },
    {
        type = "recipe",
        name = "spiral-shellfish-packing",
        icon = "__base__/graphics/icons/wooden-chest.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-packing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="spiral-shellfish-fillet", amount=20}
        },
        results = {
            {type="item", name="spiral-shellfish-package", amount=1}
        }
    },
    {
        type = "recipe",
        name = "spiral-shellfish-package-sorting",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-sorting",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="spiral-shellfish-package", amount=1}
        },
        results = {
            {type="item", name="spiral-shell-fragments", amount=5},
        }
    },
    {
        type = "recipe",
        name = "spiral-shell-fragment-processing",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-processing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="spiral-shell-fragments", amount=5}
        },
        results = {
            {type="item", name="crushed-shells", amount=10}
        }
    },
    {
        type = "recipe",
        name = "shell-calcium-refinement",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "ore-preparation",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="crushed-shells", amount=5}
        },
        results = {
            {type="item", name="shell-calcium", amount=5}
        }
    },
    {
        type = "recipe",
        name = "preservation-salts",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-drying-rack",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="shell-calcium", amount=5},
            {type="item", name="mukmoux-calcium", amount=5}
        },
        results = {
            {type="item", name="preservation-salts", amount=1}
        }
    },
    {
        type = "recipe",
        name = "biopolymer-filaments",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-drying-rack",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="twined-muscle-fiber", amount=5},
            {type="item", name="shell-calcium", amount=5},
            {type="item", name="spiral-gel", amount=1},
            {type="fluid", name="mukmoux-sealant", amount=10},
        },
        results = {
            {type="item", name="biopolymer-filaments", amount=2}
        }
    },
    {
        type = "recipe",
        name = "spiral-gel",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-extraction",
        subgroup = "fish-breeding",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type = "item", name = "spiral-shellfish-egg", amount = 10}
        },
        results = {
            {type="item", name="spiral-gel", amount=1}
        }
    },
    {
        type = "recipe",
        name = "spiral-filtration-unit",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "advanced-crafting",
        subgroup = "fish-breeding",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type = "item", name = "biopolymer-filaments", amount = 5},
            {type = "item", name = "spiral-gel", amount = 5},
            {type = "fluid", name = "mukmoux-sealant", amount = 10},
            {type = "fluid", name = "glowfin-oil", amount = 10}
        },
        results = {
            {type="item", name="spiral-filtration-unit", amount=1}
        }
    },

    --Silent Drifter Processing
    {
        type = "recipe",
        name = "silent-drifter-filleting",
        icon = "__AC-Aquaculture__/graphics/icons/fish/fillet.png",
        icon_size = 128,
        category = "fish-processing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="silent-drifter", amount=1}
        },
        results = {
            {type="item", name="silent-drifter-fillet", amount=5},
            {type="item", name="silent-drifter-egg", amount=1, probability=0.1}
        }
    },
    {
        type = "recipe",
        name = "silent-drifter-packing",
        icon = "__base__/graphics/icons/wooden-chest.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-packing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="silent-drifter-fillet", amount=20}
        },
        results = {
            {type="item", name="silent-drifter-package", amount=1}
        }
    },
    {
        type = "recipe",
        name = "silent-drifter-package-sorting",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-sorting",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="silent-drifter-package", amount=1}
        },
        results = {
            {type="item", name="silent-drifter-scales", amount=5},
        }
    },
    {
        type = "recipe",
        name = "silent-drifter-gel",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-advanced-extraction",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="silent-drifter-egg", amount=10}
        },
        results = {
            {type="item", name="silent-drifter-gel", amount=1}
        }
    },
    {
        type = "recipe",
        name = "refined-silent-drifter-gel",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-advanced-extraction",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="silent-drifter-gel", amount=5}
        },
        results = {
            {type="item", name="refined-silent-drifter-gel", amount=1}
        }
    },
    {
        type = "recipe",
        name = "silent-drifter-membrane",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-processing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="silent-drifter-fillet", amount=5}
        },
        results = {
            {type="item", name="silent-drifter-membrane", amount=1}
        }
    },
    {
        type = "recipe",
        name = "float-bladder",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-processing",
        subgroup = "fish-breeding",
        energy_required = 20,
        enabled = false,
        ingredients = {
            {type="item", name="silent-drifter-membrane", amount=5},
            {type="item", name="refined-silent-drifter-gel", amount=5}
        },
        results = {
            {type="item", name="float-bladders", amount=1}
        }
    },
    --Starfin Darters Processing
    {
        type = "recipe",
        name = "starfin-darters-filleting",
        icon = "__AC-Aquaculture__/graphics/icons/fish/fillet.png",
        icon_size = 128,
        category = "fish-processing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="starfin-darters", amount=20}
        },
        results = {
            {type="item", name="starfin-darters-fillet", amount=5},
            {type="item", name="starfin-darters-egg", amount=1, probability=0.1}
        }
    },
    {
        type = "recipe",
        name = "starfin-darters-packing",
        icon = "__base__/graphics/icons/wooden-chest.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-packing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="starfin-darters-fillet", amount=20}
        },
        results = {
            {type="item", name="starfin-darters-package", amount=1}
        }
    },
    {
        type = "recipe",
        name = "starfin-darters-package-sorting",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-sorting",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="starfin-darters-package", amount=1}
        },
        results = {
            {type="item", name="starfin-darters-fins", amount=5},
        }
    },
    {
        type = "recipe",
        name = "starfin-darters-membrane",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-processing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="starfin-darters-fillet", amount=5}
        },
        results = {
            {type="item", name="starfin-darters-membrane", amount=1}
        }
    },
    {
        type = "recipe",
        name = "starfin-darters-scales",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-processing",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="starfin-darters-fillet", amount=5},
            {type="item", name="starfin-darters-membrane", amount=1}
        },
        results = {
            {type="item", name="starfin-darters-scales", amount=20}
        }
    },
    {
        type = "recipe",
        name = "starfin-darters-egg-processing",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-extraction",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="starfin-darters-egg", amount=10}
        },
        results = {
            {type="fluid", name="biological-ionic-fluid", amount=20}
        }
    },
    {
        type = "recipe",
        name = "electrolytic-gel",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-advanced-extraction",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="fluid", name="biological-ionic-fluid", amount=10},
            {type="fluid", name="steam", amount=40}
        },
        results = {
            {type="item", name="electrolytic-gel", amount=5}
        }
    },
    {
        type = "recipe",
        name = "bioelectric-capacitor",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "advanced-crafting",
        subgroup = "fish-breeding",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type="fluid", name="biological-ionic-fluid", amount=50},
            {type="item", name="biopolymer-filaments", amount=5},
            {type="item", name = "starfin-darters-scales", amount=10},
            {type="item", name = "copper-plate", amount=5},
        },
        results = {
            {type="item", name="bioelectric-capacitor", amount=1}
        }
    },
    {
        type = "recipe",
        name = "bioelectric-battery",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "advanced-crafting",
        subgroup = "fish-breeding",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type="item", name="bioelectric-capacitor", amount=5},
            {type="item", name="electrolytic-gel", amount=5},
            {type="item", name="biopolymer-filaments", amount=5},
            {type="item", name="advanced-circuit", amount=5},
        },
        results = {
            {type="item", name="bioelectric-battery", amount=1}
        }
    },
    {
        type = "recipe",
        name = "flexible-sealant-tape",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "advanced-crafting",
        subgroup = "fish-breeding",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type="fluid", name="mukmoux-sealant", amount=10},
            {type="item", name="biopolymer-filaments", amount=5},
        },
        results = {
            {type="item", name="flexible-sealant-tape", amount=1}
        }
    },
    --Silent Drifter Brain
    {
        type = "recipe",
        name = "silent-drifter-brain-extraction",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-chemicals",
        subgroup = "fish-breeding",
        energy_required = 60,
        enabled = false,
        ingredients = {
            {type="item", name="silent-drifter", amount=100},
            {type="item", name="spiral-shell-fragments", amount=50},
            {type="item", name="spiral-gel", amount=10}
        },
        results = {
            {type="item", name="silent-drifter-brain", amount_min = 30, amount_max = 50, probability = 0.5}
        }
    },
    {
        type = "recipe",
        name = "preserved-silent-drifter-brain",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-drying-rack",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="silent-drifter-brain", amount=1},
            {type="item", name="preservation-salts", amount=1}
        },
        results = {
            {type="item", name="preserved-silent-drifter-brain", amount=1, probability_min = 0.7, probability_max = 0.8}
        }
    },
    --Spiral Shellfish Brain
    {
        type = "recipe",
        name = "spiral-shellfish-brain-extraction",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-chemicals",
        subgroup = "fish-breeding",
        energy_required = 60,
        enabled = false,
        ingredients = {
            {type="item", name="spiral-shellfish", amount=100},
            {type="item", name="spiral-shell-fragments", amount=50},
            {type="item", name="spiral-gel", amount=10}
        },
        results = {
            {type="item", name="spiral-shellfish-brain", amount_min = 30, amount_max = 50, probability = 0.5}
        }
    },
    {
        type = "recipe",
        name = "preserved-spiral-shellfish-brain",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-drying-rack",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = false,
        ingredients = {
            {type="item", name="spiral-shellfish-brain", amount=1},
            {type="item", name="preservation-salts", amount=1}
        },
        results = {
            {type="item", name="preserved-spiral-shellfish-brain", amount=1, probability_min = 0.7, probability_max = 0.8}
        }
    },
    --Biological Construction Robot Brain
    {
        type = "recipe",
        name = "construction-robot-brain",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-chemicals",
        subgroup = "fish-breeding",
        energy_required = 60,
        enabled = false,
        ingredients = {
            {type="item", name = "preserved-spiral-shellfish-brain", amount=1},
            {type="item", name = "advanced-circuit", amount=5},
            {type="item", name = "biopolymer-filaments", amount=5},
            {type="item", name = "starfin-darters-fins", amount=5}
        },
        results = {
            {type="item", name="construction-robot-brain", amount=1, probability = 0.2}
        }
    },
    --Biological Logistic Robot Brain
    {
        type = "recipe",
        name = "logistic-robot-brain",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-chemicals",
        subgroup = "fish-breeding",
        energy_required = 60,
        enabled = false,
        ingredients = {
            {type="item", name = "preserved-silent-drifter-brain", amount=1},
            {type="item", name = "advanced-circuit", amount=5},
            {type="item", name = "biopolymer-filaments", amount=5},
            {type="item", name = "starfin-darters-fins", amount=5}
        },
        results = {
            {type="item", name="logistic-robot-brain", amount=1, probability = 0.2}
        }
    },
    --Biological Robots
    {
        type = "recipe",
        name = "biological-construction-robot",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "advanced-crafting",
        subgroup = "fish-breeding",
        energy_required = 60,
        enabled = false,
        ingredients = {
            {type="item", name = "construction-robot-brain", amount=1},
            {type="item", name = "bioelectric-battery", amount=5},
            {type="item", name = "bronze-plate", amount=5},
            {type="item", name = "flexible-sealant-tape", amount=5}
        },
        results = {
            {type="item", name="biological-construction-robot", amount=1}
        }
    },
    {
        type = "recipe",
        name = "biological-logistic-robot",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "advanced-crafting",
        subgroup = "fish-breeding",
        energy_required = 60,
        enabled = false,
        ingredients = {
            {type="item", name = "logistic-robot-brain", amount=1},
            {type="item", name = "bioelectric-battery", amount=5},
            {type="item", name = "bronze-plate", amount=5},
            {type="item", name = "flexible-sealant-tape", amount=5}
        },
        results = {
            {type="item", name="biological-logistic-robot", amount=1}
        }
    },
    --Simple Roboport
    {
        type = "recipe",
        name = "simple-roboport",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "advanced-crafting",
        subgroup = "fish-breeding",
        energy_required = 10,
        enabled = false,
        ingredients = {
            {type="item", name="bioelectric-capacitor", amount=20},
            {type="item", name="bronze-plate", amount=20},
            {type="item", name="iron-plate", amount=20},
        },
        results = {
            {type="item", name="simple-roboport", amount=1}
        }
    },
    --Incomeplete Fish Egg Fuel Recipe
    --Fish Egg Fuel
    {
        type = "recipe",
        name = "fish-egg-fuel",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-feeding",
        subgroup = "fish-breeding",
        energy_required = 20,
        enabled = true,
        ingredients = {
            {type="item", name="mukmoux-calcium", amount=20},
            {type="fluid", name="glowfin-oil", amount=20},
            {type="item", name="silverscale-glider-gel", amount=5}
        },
        results = {
            {type="item", name="fish-egg-fuel", amount=20}
        }
    },
    --Basic Fish Fuel
    {
        type = "recipe",
        name = "basic-fish-fuel",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "fish-feeding",
        subgroup = "fish-breeding",
        energy_required = 5,
        enabled = true,
        ingredients = {
            {type="item", name="glowfin-trenchers-fillet", amount=5},
            {type="item", name="mukmoux-fillet", amount=5},
            {type="item", name="silverscale-glider-fillet", amount=5}
        },
        results = {
            {type="item", name="fish-egg-fuel", amount=1}
        }
    },
    --Sciences
    --Fish Science Pack
    {
        type = "recipe",
        name = "fish-biomass-pack",
        icon = "__base__/graphics/icons/chemical-science-pack.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "biology-research",
        subgroup = "fish-breeding",
        energy_required = 20,
        enabled = false,
        ingredients = {
            {type="item", name="glowfin-trenchers-fillet", amount=10},
            {type="item", name="mukmoux-fillet", amount=10},
            {type="item", name="silverscale-glider-fillet", amount=10}
        },
        results = {
            {type="item", name="fish-biomass-pack", amount=2}
        }
    },
    --Fish Fluid Pack
    {
        type = "recipe",
        name = "fish-fluid-science-pack",
        icon = "__base__/graphics/icons/chemical-science-pack.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "biology-research",
        subgroup = "fish-breeding",
        energy_required = 35,
        enabled = false,
        ingredients = {
            {type="fluid", name="glowfin-oil", amount=30},
            {type="fluid", name="mukmoux-sealant", amount=30},
            {type="fluid", name="silverscale-oil", amount=30}
        },
        results = {
            {type="item", name="fish-fluid-science-pack", amount=2}
        }
    },
    --Fish Science Pack 2
    {
        type = "recipe",
        name = "advanced-biology-pack",
        icon = "__base__/graphics/icons/military-science-pack.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "biology-research",
        subgroup = "fish-breeding",
        energy_required = 20,
        enabled = false,
        ingredients = {
            {type="item", name="glowfin-enhancer", amount=5},
            {type="item", name="mukmoux-polishing-stone", amount=10},
            {type="item", name="twined-muscle-fiber", amount=4}
        },
        results = {
            {type="item", name="advanced-biology-pack", amount=4}
        }
    },
    --Efficient Breeding Processor
    {
        type = "recipe",
        name = "efficient-breeding-processor",
        icon = "__base__/graphics/icons/speed-module.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "advanced-crafting",
        subgroup = "fish-breeding",
        energy_required = 20,
        enabled = false,
        ingredients = {
            {type="item",name="fiberboard-circuitry", amount=20},
            {type="item",name="advanced-circuit", amount = 5},
            {type="fluid",name="wood-alcohol", amount=50}
        },
        results = {
            {type="item", name="efficient-breeding-processor", amount=1}
        }
    },
    --Efficient Egg Processor
    {
        type = "recipe",
        name = "efficient-egg-gathering-processor",
        icon = "__base__/graphics/icons/productivity-module.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "advanced-crafting",
        subgroup = "fish-breeding",
        energy_required = 20,
        enabled = false,
        ingredients = {
            {type="item",name="fiberboard-circuitry", amount=20},
            {type="item",name="advanced-circuit", amount = 5},
            {type="fluid",name="wood-alcohol", amount=50}
        },
        results = {
            {type="item", name="efficient-egg-gathering-processor", amount=1}
        }
    },
    --Stream Sifter Module
    {
        type = "recipe",
        name = "stream-sifter-module",
        icon = "__base__/graphics/icons/speed-module.png",
        icon_size = 64, icon_mipmaps = 4,
        category = "advanced-crafting",
        subgroup = "fish-breeding",
        energy_required = 20,
        enabled = false,
        ingredients = {
            {type="item",name="fiberboard-circuitry", amount=20},
            {type="item",name="advanced-circuit", amount = 5},
            {type="item",name="refined-silent-drifter-gel", amount=5},
            {type="item",name="silent-drifter-membrane", amount=5},
            {type="item",name="spiral-filtration-unit", amount=5}
        },
        results = {
            {type="item", name="sifter-module-1", amount=1}
        }
    },
    --Combined Fish Recipes
    --Tin Ore
    {
        type = "recipe",
        name = "ac-tin-ore-refining",
        category = "ab-ore-refining",
        energy_required = 8,
        ingredients = {{"tin-ore", 2}, {"mukmoux-ceramic-powder", 1}},
        result = "tin-plate",
        result_count = 2,
        enabled = false
    },
    --Copper Ore
    {
        type = "recipe",
        name = "ac-copper-ore-refining",
        category = "ab-ore-refining",
        energy_required = 8,
        ingredients = {{"copper-ore", 2}, {"mukmoux-ceramic-powder", 1}},
        result = "copper-plate",
        result_count = 2,
        enabled = false
    },
    --Iron Ore
    {
        type = "recipe",
        name = "ac-iron-ore-refining",
        category = "ab-ore-refining",
        energy_required = 8,
        ingredients = {{"iron-ore", 2}, {"mukmoux-ceramic-powder", 1}},
        result = "iron-plate",
        result_count = 2,
        enabled = false
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
        icon = "__AC-Aquaculture__/graphics/icons/fish/"..fishType.."-egg.png",
        icon_size = 128,
        enabled = true,
        category = "fish-hatchery",
        subgroup = "fish-breeding",
        energy_required = 180,
        ingredients = {
            {type="item", name= fishType, amount=20, catalyst_amount = 20},
        },
        results = {
            {type="item", name=fishType, amount_min = 5, amount_max = 15, catalyst_amount = 20},
            {type="item", name=fishType.."-egg", amount_min = minEggAmount, amount_max = maxEggAmount}
        }
    })

    table.insert(fishBreedingRecipes, {
        type = "recipe",
        name = "ac-breed-"..fishType.."-egg",
        icon = "__AC-Aquaculture__/graphics/icons/fish/"..fishType..".png",
        icon_size = 128,
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

for _, fishType in ipairs(fishTypes) do
    local eggSize = fishEggSizes[fishType]
    local processEggAmount = 100  -- Default value for egg processing
    local fishYieldMin, fishYieldMax  -- Declare variables for min and max fish yield

    -- Adjust these values based on the fish size
    if eggSize == "large" then
        processEggAmount = 20  -- Requires fewer eggs due to larger fish size
        fishYieldMin = 60
        fishYieldMax = 120
    elseif eggSize == "medium" then
        processEggAmount = 30  -- Base value for medium
        fishYieldMin = 90
        fishYieldMax = 160
    elseif eggSize == "small" then
        processEggAmount = 40  -- Requires more eggs, smaller fish
        fishYieldMin = 120
        fishYieldMax = 200
    end

    -- Insert the adjusted recipe into the fishBreedingRecipes table
    table.insert(fishBreedingRecipes, {
        type = "recipe",
        name = "ac-process-"..fishType.."-eggs-for-fish",
        icon = "__AC-Aquaculture__/graphics/icons/fish/"..fishType..".png",
        icon_size = 128,
        enabled = true,
        category = "fish-hatchery",  -- Or "fish-hatchery"
        subgroup = "fish-breeding",
        energy_required = 600,  -- Adjust as necessary
        ingredients = {
            {type="item", name=fishType.."-egg", amount=processEggAmount},
        },
        results = {
            {type="item", name=fishType, amount_min=fishYieldMin, amount_max=fishYieldMax},
        }
    })
end
data:extend(fishBreedingRecipes)

local chestTypes = {
    "logistic-chest-storage",
    "logistic-chest-requester",
    "logistic-chest-passive-provider",
    "logistic-chest-active-provider",
    "logistic-chest-buffer"
}

local chestRecipes = {}

for _, chestType in ipairs(chestTypes) do
    table.insert(chestRecipes, {
        type = "recipe",
        name = "ceramic-"..chestType,
        enabled = true,
        ingredients = {
            {type="item", name="mukmoux-ceramic-powder", amount=1},
            {type="item", name="wooden-chest", amount=1},
            -- Add other materials here
        },
        results = {
            {type="item", name="ceramic-"..chestType, amount=1},
        }
    })
end

data:extend(chestRecipes)


local beltRecipes = {}

-- Recipe for underground belt
table.insert(beltRecipes, {
    type = "recipe",
    name = "underground-belt-highway",
    enabled = true,
    ingredients = {
        {type="item", name="transport-belt", amount=10},
        -- Add other materials here
    },
    results = {
        {type="item", name="underground-belt-highway", amount=1},
    }
})

-- Recipe for splitter
table.insert(beltRecipes, {
    type = "recipe",
    name = "splitter-highway",
    enabled = true,
    ingredients = {
        {type="item", name="transport-belt", amount=10},
        {type="item", name="splitter", amount=1},
        -- Add other materials here
    },
    results = {
        {type="item", name="splitter-highway", amount=1},
    }
})

data:extend(beltRecipes)
