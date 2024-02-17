data:extend({
    {
      type = "technology",
      name = "ac-fish-harvesting",
      icon = "__base__/graphics/technology/automation-1.png",
      icon_size = 256, icon_mipmaps = 4,
      prerequisites = {"ab-biocomposite-materials"},  --Reference the technology from the Arboretum mod
      effects = {
        {
            type = "unlock-recipe",
            recipe = "fish-fillet-machine",
        },
      },
      unit = {
        count = 1000,
        ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
        time = 60,
      },
      order = "c-a"
    },
    {
        type = "technology",
        name = "ac-fish-breeding",
        icon = "__base__/graphics/technology/automation-1.png",
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ac-fish-harvesting", "ab-biocomposite-materials"},  --Reference the technology from the Arboretum mod
        effects = {
          {
              type = "unlock-recipe",
              recipe = "fish-hatchery",
          },
        },
        unit = {
          count = 200,
          ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
          time = 30,
        },
        order = "c-a"
    },
    --Circuitry Unlock
    {
        type = "technology",
        name = "ac-circuitry-conditions",
        icon = "__base__/graphics/technology/automation-1.png",
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-biocomposite-materials", "ab-basic-ore-clarification"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ac-green-wire",
            },
            {
                type = "unlock-recipe",
                recipe = "ac-red-wire",
            },
        },
        unit = {
            count = 250,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 30,
        },
        order = "c-a"
    },
    --Advanced Circuitry Unlock
    {
        type = "technology",
        name = "ac-advanced-circuitry-conditions",
        icon = "__base__/graphics/technology/automation-1.png",
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ac-circuitry-conditions"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ac-arithmetic-combinator",
            },
            {
                type = "unlock-recipe",
                recipe = "ac-decider-combinator",
            },
            {
                type = "unlock-recipe",
                recipe = "ac-constant-combinator",
            },
        },
        unit = {
            count = 400,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 30,
        },
        order = "c-a"
    },
    --Advanced Circuitry
    {
        type = "technology",
        name = "ac-advanced-circuitry",
        icon = "__base__/graphics/technology/automation-1.png",
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ac-advanced-circuitry-conditions"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ac-advanced-circuitry",
            },
        },
        unit = {
            count = 500,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 30,
        },
        order = "c-a"
    },
    --Glowfin Tech Tree
    {
        type = "technology",
        name = "ac-glowfin-trenchers-processing",
        icon = "__AC-Aquaculture__/graphics/icons/fish/glowfin-trenchers.png",
        icon_size = 128, icon_mipmaps = 1,
        prerequisites = {"ac-fish-harvesting", "ac-fish-breeding"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "glowfin-trenchers-filleting",
            },
            {
                type = "unlock-recipe",
                recipe = "glowfin-trenchers-packing",
            }
        },
        unit = {
            count = 300,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 30,
        },
        order = "c-a"
    },
    {
        type = "technology",
        name = "ac-glowfin-package-sorting",
        icon = "__AC-Aquaculture__/graphics/icons/fish/glowfin-trenchers-package.png",
        icon_size = 64, icon_mipmaps = 1,
        prerequisites = {"ac-glowfin-trenchers-processing"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "glowfin-trenchers-package-processing",
            }
        },
        unit = {
            count = 300,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 30,
        },
        order = "c-a"
    },
    {
        type = "technology",
        name = "ac-glowfin-oil-processing",
        icon = "__AC-Aquaculture__/graphics/icons/fish/fluids/glowfin-oil.png",
        icon_size = 128, icon_mipmaps = 1,
        prerequisites = {"ac-glowfin-trenchers-processing"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "glowfin-trenchers-oil-extraction",
            },
            {
                type = "unlock-recipe",
                recipe = "glowfin-trenchers-scale-filleting",
            }
        },
        unit = {
            count = 500,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 30,
        },
        order = "c-a"
    },
    {
        type = "technology",
        name = "ac-glowfin-encapsulation",
        icon = "__AC-Aquaculture__/graphics/icons/fish/glowfin-luminescence-capsule.png",
        icon_size = 128, icon_mipmaps = 1,
        prerequisites = {"ac-glowfin-oil-processing"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "glowfin-trenchers-oil-encapsulation",
            },
            {
                type = "unlock-recipe",
                recipe = "glowfin-trenchers-luminescence-capsule"
            }
        },
        unit = {
            count = 500,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 45,
        },
        order = "c-a"
    },
    {
        type = "technology",
        name = "ac-glowfin-advanced-oil",
        icon = "__base__/graphics/icons/fluid/lubricant.png",
        icon_size = 64, icon_mipmaps = 4,
        prerequisites = {"ac-glowfin-encapsulation", "ac-glowfin-oil-processing"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "glowfin-trenchers-oil-refinement",
            },
            {
                type = "unlock-recipe",
                recipe = "glowfin-trenchers-luminescence-gel"
            }
        },
        unit = {
            count = 500,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 45,
        },
        order = "c-a"
    },
    {
        type = "technology",
        name = "ac-glowfin-vision-extraction",
        icon = "__AC-Aquaculture__/graphics/icons/fish/glowfin-enhancer.png",
        icon_size = 128, icon_mipmaps = 4,
        prerequisites = {"ac-glowfin-advanced-oil", "ac-glowfin-oil-processing"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "glowfin-trenchers-vision-extraction",
            },
            {
                type = "unlock-recipe",
                recipe = "glowfin-enhancer"
            }
        },
        unit = {
            count = 600,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 60,
        },
        order = "c-a"
    },
    --Mukmoux Tech Tree
    --Mukmoux Breeding
    {
        type = "technology",
        name = "ac-mukmoux-filleting",
        icon = "__AC-Aquaculture__/graphics/icons/fish/mukmoux.png",
        icon_size = 128, icon_mipmaps = 1,
        prerequisites = {"ac-fish-harvesting", "ac-fish-breeding"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "mukmoux-filleting",
            },
            {
                type = "unlock-recipe",
                recipe = "mukmoux-packing",
            }
        },
        unit = {
            count = 300,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 30,
        },
        order = "c-a"
    },
    {
        type = "technology",
        name = "ac-mukmoux-package-sorting",
        icon = "__base__/graphics/icons/wooden-chest.png",
        icon_size = 64, icon_mipmaps = 4,
        prerequisites = {"ac-mukmoux-filleting"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "mukmoux-package-sorting",
            },
            {
                type = "unlock-recipe",
                recipe = "mukmoux-fat-processing",
            }
        },
        unit = {
            count = 300,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 30,
        },
        order = "c-a"
    },
    {
        type = "technology",
        name = "ac-mukmoux-processing-1",
        icon = "__AC-Aquaculture__/graphics/icons/fish/mukmoux-stones.png",
        icon_size = 128, icon_mipmaps = 1,
        prerequisites = {"ac-mukmoux-package-sorting"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "mukmoux-stone-gathering",
            },
            {
                type = "unlock-recipe",
                recipe = "mukmoux-stone-polishing",
            }
        },
        unit = {
            count = 300,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 30,
        },
        order = "c-a"
    },
    {
        type = "technology",
        name = "ac-mukmoux-processing-2",
        icon = "__AC-Aquaculture__/graphics/icons/fish/mukmoux-leather.png",
        icon_size = 128, icon_mipmaps = 1,
        prerequisites = {"ac-mukmoux-processing-1"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "mukmoux-leather",
            },
            {
                type = "unlock-recipe",
                recipe = "mukmoux-leather-processing",
            }
        },
        unit = {
            count = 300,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 30,
        },
        order = "c-a"
    },
    {
        type = "technology",
        name = "ac-organic-materials-1",
        icon = "__AC-Aquaculture__/graphics/icons/fish/fluids/mukmoux-mucous.png",
        icon_size = 128, icon_mipmaps = 1,
        prerequisites = {"ac-mukmoux-filleting"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "mukmoux-ceramic-powder",
            },
            {
                type = "unlock-recipe",
                recipe = "mukmoux-sealant"
            },
            {
                type = "unlock-recipe",
                recipe = "mukmoux-stone-grinding"
            }
        },
        unit = {
            count = 300,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 30,
        },
        order = "c-a"
    },
    {
        type = "technology",
        name = "ac-organic-materials-2",
        icon = "__AC-Aquaculture__/graphics/icons/fish/mukmoux-bones.png",
        icon_size = 128, icon_mipmaps = 1,
        prerequisites = {"ac-organic-materials-1"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "mukmoux-bones",
            },
            {
                type = "unlock-recipe",
                recipe = "mukmoux-calcium",
            }
        },
        unit = {
            count = 300,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 30,
        },
        order = "c-a"
    },
    --Fast Transport Belts
    {
        type = "technology",
        name = "ac-fast-transport-belts",
        icon = "__base__/graphics/technology/logistics-2.png",
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ac-mukmoux-processing-2", "ac-advanced-circuitry"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "leather-transport-belt",
            },
            {
                type = "unlock-recipe",
                recipe = "leather-transport-belt-to-ground",
            },
            {
                type = "unlock-recipe",
                recipe = "leather-splitter",
            }
        },
        unit = {
            count = 600,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 60,
        },
        order = "c-a"
    },
    --Bronze Inserter
    {
        type = "technology",
        name = "ac-bronze-inserters",
        icon = "__base__/graphics/technology/fast-inserter.png",
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ac-fast-transport-belts", "ac-advanced-circuitry"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ac-bronze-inserter",
            },
            {
                type = "unlock-recipe",
                recipe = "ac-bronze-long-handed-inserter",
            },
            {
                type = "unlock-recipe",
                recipe = "ac-bronze-filter-inserter",
            }
        },
        unit = {
            count = 600,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 60,
        },
        order = "c-a"
    },
    --Advanced Ore Refining
    {
        type = "technology",
        name = "ac-advanced-ore-refining",
        icon = "__base__/graphics/technology/advanced-material-processing.png",
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ac-fast-transport-belts","ac-organic-materials-1", "ac-bronze-fluid-handling"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ac-iron-ore-refining",
            },
            {
                type = "unlock-recipe",
                recipe = "ac-copper-ore-refining",
            },
            {
                type = "unlock-recipe",
                recipe = "ac-tin-ore-refining"
            },
            {
                type = "unlock-recipe",
                recipe = "ab-ore-refinery"
            },
        },
        unit = {
            count = 1250,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 60,
        },
        order = "c-a"
    },
    --Bronze Fluid Handling
    {
        type = "technology",
        name = "ac-bronze-fluid-handling",
        icon = "__base__/graphics/technology/fluid-handling.png",
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ab-ore-filtration-2"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ac-bronze-pipe",
            },
            {
                type = "unlock-recipe",
                recipe = "ac-bronze-pipe-to-ground",
            },
            {
                type = "unlock-recipe",
                recipe = "ac-bronze-storage-tank"
            },
            {
                type = "unlock-recipe",
                recipe = "ac-bronze-pump"
            }
        },
        unit = {
            count = 500,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 60,
        },
        order = "c-a"
    },
})
  