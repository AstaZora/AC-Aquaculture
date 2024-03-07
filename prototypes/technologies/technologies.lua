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
    --Efficient Breeding Processor
    {
        type = "technology",
        name = "ac-efficient-breeding-processor",
        icon = "__base__/graphics/technology/automation-1.png",
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ac-fish-breeding", "ac-advanced-circuitry"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "efficient-breeding-processor",
            },
        },
        unit = {
            count = 1500,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}, {"fish-biomass-pack", 1}},
            time = 90,
        },
        order = "c-a"
    },
    --Efficient Egg Collection
    {
        type = "technology",
        name = "ac-efficient-egg-collection",
        icon = "__base__/graphics/technology/automation-1.png",
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ac-fish-breeding", "ac-advanced-circuitry"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "efficient-egg-gathering-processor",
            },
        },
        unit = {
            count = 1500,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}, {"fish-biomass-pack", 1}},
            time = 90,
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
        prerequisites = {"ac-glowfin-trenchers-processing", "ac-marine-research-lab"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "glowfin-trenchers-package-processing",
            }
        },
        unit = {
            count = 300,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}, {"fish-biomass-pack", 1}},
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
            count = 550,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}, {"fish-biomass-pack", 1}},
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
            count = 700,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}, {"fish-biomass-pack", 1}},
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
            count = 900,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}, {"fish-biomass-pack", 1}},
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
            count = 1200,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}, {"fish-biomass-pack", 1}, {"fish-fluid-science-pack", 1}},
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
        prerequisites = {"ac-mukmoux-filleting", "ac-marine-research-lab"},
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
            count = 675,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}, {"fish-biomass-pack", 1}},
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
            count = 1250,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}, {"fish-biomass-pack", 1}, {"fish-fluid-science-pack", 1}},
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
            count = 900,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}, {"fish-biomass-pack", 1}, {"fish-fluid-science-pack", 1}},
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
            count = 600,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}, {"fish-biomass-pack", 1}},
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
            count = 600,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}, {"fish-biomass-pack", 1}},
            time = 30,
        },
        order = "c-a"
    },
    --silverscale Tech Tree
    {
        type = "technology",
        name = "ac-silverscale-glider-processing",
        icon = "__AC-Aquaculture__/graphics/icons/fish/silverscale-glider.png",
        icon_size = 128, icon_mipmaps = 1,
        prerequisites = {"ac-fish-harvesting", "ac-fish-breeding"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "silverscale-glider-filleting",
            },
            {
                type = "unlock-recipe",
                recipe = "silverscale-glider-packing",
            }
        },
        unit = {
            count = 450,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 30,
        },
        order = "c-a"
    },
    {
        type = "technology",
        name = "ac-silverscale-package-sorting",
        icon = "__base__/graphics/icons/wooden-chest.png",
        icon_size = 64, icon_mipmaps = 4,
        prerequisites = {"ac-silverscale-glider-processing", "ac-marine-research-lab"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "silverscale-glider-package-sorting",
            },
            {
                type = "unlock-recipe",
                recipe = "silverscale-glider-gel-extraction",
            }
        },
        unit = {
            count = 450,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}, {"fish-biomass-pack", 1}},
            time = 30,
        },
        order = "c-a"
    },
    {
        type = "technology",
        name = "ac-silverscale-scale-processing",
        icon = "__AC-Aquaculture__/graphics/icons/fish/fluids/silverscale-oil.png",
        icon_size = 128, icon_mipmaps = 1,
        prerequisites = {"ac-silverscale-package-sorting"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "silverscale-glider-scale-refinement",
            },
            {
                type = "unlock-recipe",
                recipe = "silverscale-glider-oil-extraction",
            }
        },
        unit = {
            count = 500,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}, {"fish-biomass-pack", 1}},
            time = 30,
        },
        order = "c-a"
    },
    {
        type = "technology",
        name = "ac-silverscale-muscle-processing",
        icon = "__AC-Aquaculture__/graphics/icons/fish/silverscale-muscle.png",
        icon_size = 128, icon_mipmaps = 1,
        prerequisites = {"ac-silverscale-scale-processing"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "silverscale-muscle-processing",
            },
            {
                type = "unlock-recipe",
                recipe = "muscle-fiber-twining",
            }
        },
        unit = {
            count = 500,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}, {"fish-biomass-pack", 1}, {"fish-fluid-science-pack", 1}},
            time = 30,
        },
    },
    --Fish Breeding and Hatching
    {
        type = "technology",
        name = "ac-fish-farming",
        icon = "__base__/graphics/technology/automation-1.png",
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ac-glowfin-trenchers-processing", "ac-mukmoux-filleting", "ac-silverscale-glider-processing"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "fish-hatchery",
            },
            {
                type = "unlock-recipe",
                recipe = "fish-feeder",
            },
            {
                type = "unlock-recipe",
                recipe = "fish-drill",
            }
        },
        unit = {
            count = 1000,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 60,
        },
        order = "c-a"
    },
    --Marine Research Lab and Sciences
    {
        type = "technology",
        name = "ac-marine-research-lab",
        icon = "__base__/graphics/icons/chemical-science-pack.png",
        icon_size = 64, icon_mipmaps = 4,
        prerequisites = {"ac-fish-farming"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "marine-research-lab",
            },
            {
                type = "unlock-recipe",
                recipe = "fish-biomass-pack",
            }
        },
        unit = {
            count = 1000,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 60,
        },
        order = "c-a"
    },
    --Inserter Stacking Bonus
    {
        type = "technology",
        name = "ac-inserter-capacity-bonus",
        icon = "__base__/graphics/technology/inserter-capacity.png",
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ac-advanced-circuitry-conditions"},
        effects = {
            {
                type = "inserter-stack-size-bonus",
                modifier = 1
            }
        },
        unit = {
            count = 600,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 60,
        },
        order = "c-a"
    },
    --Inserter Stack Bonus 2
    {
        type = "technology",
        name = "ac-inserter-capacity-bonus-2",
        icon = "__base__/graphics/technology/inserter-capacity.png",
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ac-inserter-capacity-bonus"},
        effects = {
            {
                type = "inserter-stack-size-bonus",
                modifier = 1
            }
        },
        unit = {
            count = 800,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 60,
        },
        order = "c-a"
    },
    {
        type = "technology",
        name = "ac-marine-science-pack-2",
        icon = "__base__/graphics/icons/chemical-science-pack.png",
        icon_size = 64, icon_mipmaps = 4,
        prerequisites = {"ac-marine-research-lab", "ac-organic-materials-1", "ac-glowfin-oil-processing", "ac-silverscale-scale-processing"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "fish-fluid-science-pack",
            }
        },
        unit = {
            count = 1500,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}, {"fish-biomass-pack", 1}},
            time = 60,
        },
        order = "c-a"
    },
    {
        type = "technology",
        name = "ac-marine-science-pack-3",
        icon = "__base__/graphics/icons/chemical-science-pack.png",
        icon_size = 64, icon_mipmaps = 4,
        prerequisites = {"ac-marine-science-pack-2", "ac-glowfin-vision-extraction", "ac-mukmoux-processing-1", "ac-silverscale-muscle-processing"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "advanced-biology-pack",
            }
        },
        unit = {
            count = 2000,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}, {"fish-biomass-pack", 1}, {"fish-fluid-science-pack", 1}},
            time = 120,
        },
        order = "c-a"
    },
    --leather Transport Belts
    {
        type = "technology",
        name = "ac-leather-transport-belts",
        icon = "__base__/graphics/technology/logistics-2.png",
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ac-mukmoux-processing-2", "ac-advanced-circuitry", "ac-marine-science-pack-2"},
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
        prerequisites = {"ac-leather-transport-belts", "ac-advanced-circuitry"},
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
    {
        type = "technology",
        name = "ac-spiral-shellfish-processing",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        prerequisites = {"ac-marine-science-pack-3", "ac-bronze-inserters"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "spiral-shellfish-filleting",
            },
            {
                type = "unlock-recipe",
                recipe = "spiral-shellfish-packing",
            }
        },
        unit = {
            count = 750,
            ingredients = {{"fish-biomass-pack", 1}, {"fish-fluid-science-pack", 1}, {"advanced-biology-pack", 1}},
            time = 30,
        },
    },
    {
        type = "technology",
        name = "ac-spiral-shellfish-package-sorting",
        icon = "__base__/graphics/icons/wooden-chest.png",
        icon_size = 64, icon_mipmaps = 4,
        prerequisites = {"ac-spiral-shellfish-processing"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "spiral-shellfish-package-sorting",
            },
        },
        unit = {
            count = 250,
            ingredients = {{"fish-biomass-pack", 1}, {"fish-fluid-science-pack", 1}, {"advanced-biology-pack", 1}},
            time = 30,
        },
    },
    {
        type = "technology",
        name = "ac-spiral-shellfish-processing-2",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        prerequisites = {"ac-spiral-shellfish-processing",},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "spiral-shell-fragment-processing",
            },
            {
                type = "unlock-recipe",
                recipe = "shell-calcium-refinement",
            },
            {
                type = "unlock-recipe",
                recipe = "biopolymer-filaments",
            },
            {
                type = "unlock-recipe",
                recipe = "spiral-gel",
            }
        },
        unit = {
            count = 600,
            ingredients = {{"fish-biomass-pack", 1}, {"fish-fluid-science-pack", 1}, {"advanced-biology-pack", 1}},
            time = 30,
        },
    },
    {
        type = "technology",
        name = "ac-spiral-shellfish-processing-3",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        prerequisites = {"ac-spiral-shellfish-processing-2",},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "preservation-salts",
            },
            {
                type = "unlock-recipe",
                recipe = "spiral-filtration-unit",
            },
        },
        unit = {
            count = 800,
            ingredients = {{"fish-biomass-pack", 1}, {"fish-fluid-science-pack", 1}, {"advanced-biology-pack", 1}},
            time = 30,
        },
    },
    --Silent Drifter Tech
    {
        type = "technology",
        name = "ac-silent-drifter-processing",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        prerequisites = {"ac-marine-science-pack-3", "ac-bronze-inserters"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "silent-drifter-filleting",
            },
            {
                type = "unlock-recipe",
                recipe = "silent-drifter-packing",
            }
        },
        unit = {
            count = 750,
            ingredients = {{"fish-biomass-pack", 1}, {"fish-fluid-science-pack", 1}, {"advanced-biology-pack", 1}},
            time = 30,
        },
    },
    {
        type = "technology",
        name = "ac-silent-drifter-package-sorting",
        icon = "__base__/graphics/icons/wooden-chest.png",
        icon_size = 64, icon_mipmaps = 4,
        prerequisites = {"ac-silent-drifter-processing"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "silent-drifter-package-sorting",
            },
        },
        unit = {
            count = 250,
            ingredients = {{"fish-biomass-pack", 1}, {"fish-fluid-science-pack", 1}, {"advanced-biology-pack", 1}},
            time = 30,
        },
    },
    {
        type = "technology",
        name = "ac-silent-drifter-processing-2",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        prerequisites = {"ac-silent-drifter-processing",},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "silent-drifter-gel",
            },
            {
                type = "unlock-recipe",
                recipe = "refined-silent-drifter-gel",
            },
            {
                type = "unlock-recipe",
                recipe = "silent-drifter-membrane",
            },
            {
                type = "unlock-recipe",
                recipe = "float-bladder",
            }
        },
        unit = {
            count = 600,
            ingredients = {{"fish-biomass-pack", 1}, {"fish-fluid-science-pack", 1}, {"advanced-biology-pack", 1}},
            time = 30,
        },
    },
    --Starfin Darters
    {
        type = "technology",
        name = "ac-starfin-darters-processing",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        prerequisites = {"ac-marine-science-pack-3", "ac-bronze-inserters"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "starfin-darters-filleting",
            },
            {
                type = "unlock-recipe",
                recipe = "starfin-darters-packing",
            }
        },
        unit = {
            count = 750,
            ingredients = {{"fish-biomass-pack", 1}, {"fish-fluid-science-pack", 1}, {"advanced-biology-pack", 1}},
            time = 30,
        },
    },
    {
        type = "technology",
        name = "ac-starfin-darters-package-sorting",
        icon = "__base__/graphics/icons/wooden-chest.png",
        icon_size = 64, icon_mipmaps = 4,
        prerequisites = {"ac-starfin-darters-processing"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "starfin-darters-package-sorting",
            },
        },
        unit = {
            count = 250,
            ingredients = {{"fish-biomass-pack", 1}, {"fish-fluid-science-pack", 1}, {"advanced-biology-pack", 1}},
            time = 30,
        },
    },
    {
        type = "technology",
        name = "ac-starfin-darters-processing-2",
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64, icon_mipmaps = 4,
        prerequisites = {"ac-starfin-darters-processing",},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "starfin-darters-membrane",
            },
            {
                type = "unlock-recipe",
                recipe = "starfin-darters-scales",
            },
            {
                type = "unlock-recipe",
                recipe = "starfin-darters-egg-processing",
            },
        },
        unit = {
            count = 600,
            ingredients = {{"fish-biomass-pack", 1}, {"fish-fluid-science-pack", 1}, {"advanced-biology-pack", 1}},
            time = 30,
        },
    },
    --Robotics T1
    {
        type = "technology",
        name = "ac-electrical-discoveries",
        icon = "__base__/graphics/technology/automation-1.png",
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ac-starfin-darters-processing-2"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "bioelectric-capacitor",
            },
            {
                type = "unlock-recipe",
                recipe = "bioelectric-battery",
            },
            {
                type = "unlock-recipe",
                recipe = "electrolytic-gel",
            },
            {
                type = "unlock-recipe",
                recipe = "flexible-sealant-tape",
            },
        },
        unit = {
            count = 1000,
            ingredients = {{"fish-biomass-pack", 1}, {"fish-fluid-science-pack", 1}, {"advanced-biology-pack", 1}},
            time = 60,
        },
    },
    {
        type = "technology",
        name = "ac-robotics-brains",
        icon = "__base__/graphics/technology/automation-1.png",
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ac-electrical-discoveries"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "silent-drifter-brain-extraction",
            },
            {
                type = "unlock-recipe",
                recipe = "preserved-silent-drifter-brain",
            },
            {
                type = "unlock-recipe",
                recipe = "spiral-shellfish-brain-extraction",
            },
            {
                type = "unlock-recipe",
                recipe = "preserved-spiral-shellfish-brain",
            },
        },
        unit = {
            count = 1500,
            ingredients = {{"fish-biomass-pack", 1}, {"fish-fluid-science-pack", 1}, {"advanced-biology-pack", 1}},
            time = 60,
        },
    },
    {
        type = "technology",
        name = "ac-robotics-2",
        icon = "__base__/graphics/technology/automation-1.png",
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ac-robotics-brains"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "construction-robot-brain",
            },
            {
                type = "unlock-recipe",
                recipe = "logistic-robot-brain",
            },
            {
                type = "unlock-recipe",
                recipe = "biological-construction-robot",
            },
            {
                type = "unlock-recipe",
                recipe = "biological-logistic-robot",
            },
            {
                type = "unlock-recipe",
                recipe = "simple-roboport",
            },
        },
        unit = {
            count = 2500,
            ingredients = {{"fish-biomass-pack", 1}, {"fish-fluid-science-pack", 1}, {"advanced-biology-pack", 1}},
            time = 60,
        },
    },
    --Advanced Ore Refining
    {
        type = "technology",
        name = "ac-advanced-ore-refining",
        icon = "__base__/graphics/technology/advanced-material-processing.png",
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ac-bronze-fluid-handling"},
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
    --Advanced Ore Crushing
    {
        type = "technology",
        name = "ac-advanced-ore-crushing",
        icon = "__base__/graphics/technology/advanced-material-processing.png",
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ac-advanced-ore-refining"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ac-mixed-ore-refining",
            }
        },
        unit = {
            count = 2500,
            ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
            time = 90,
        },
        order = "c-a"
    },
    --Sifter Module
    {
        type = "technology",
        name = "ac-stream-sifter-module",
        icon = "__base__/graphics/technology/module.png",
        icon_size = 256, icon_mipmaps = 4,
        prerequisites = {"ac-advanced-ore-crushing"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "stream-sifter-module",
            }
        },
        unit = {
            count = 2500,
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
  