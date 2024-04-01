data:extend({
    -- Growth-Stimulating Gel
    {
        type = "fluid",
        name = "growth-stimulating-gel", --Let them tubers grow.. I mean what else was this going to do?
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 32,
        default_temperature = 25,
        base_color = {r = 0.2, g = 0.8, b = 0.2},
        flow_color = {r = 0.2, g = 0.8, b = 0.2},
        max_temperature = 100,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
    },
    
    -- Rooting Gel
    {
        type = "fluid",
        name = "rooting-gel", --For when plants don't want to behave, you can sticky tack their roots down for them!
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 32,
        default_temperature = 25,
        base_color = {r = 0.8, g = 0.4, b = 0.2},
        flow_color = {r = 0.8, g = 0.4, b = 0.2},
        max_temperature = 100,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
    },
    
    -- Pest-Repellent Gel
    {
        type = "fluid",
        name = "pest-repellent-gel", -- I don't know what this is for, but it sounds useful
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 32,
        default_temperature = 25,
        base_color = {r = 0.9, g = 0.9, b = 0.1},
        flow_color = {r = 0.9, g = 0.9, b = 0.1},
        max_temperature = 100,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
    },
    
    -- Water-Clarifying Agent
    {
        type = "fluid",
        name = "water-clarifying-agent", -- You know, maybe I should move this stuff to farming huh?
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 32,
        default_temperature = 25,
        base_color = {r = 0.1, g = 0.6, b = 0.9},
        flow_color = {r = 0.1, g = 0.6, b = 0.9},
        max_temperature = 100,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
    },
    
    -- Photosynthesis-Boosting Gel
    {
        type = "fluid",
        name = "photosynthesis-boosting-gel",
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 32,
        default_temperature = 25,
        base_color = {r = 0.6, g = 0.2, b = 0.8},
        flow_color = {r = 0.6, g = 0.2, b = 0.8},
        max_temperature = 100,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
    },
    
    -- Aquatic Polymers
    {
        type = "fluid",
        name = "aquatic-polymers", -- Use for fish plastics from many fish oils and Spiral Shellfish Biopolymer Filament
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 32,
        default_temperature = 25,
        base_color = {r = 0.4, g = 0.8, b = 0.9},
        flow_color = {r = 0.4, g = 0.8, b = 0.9},
        max_temperature = 100,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
    },
    
    -- Bioluminescent Marking Gel
    {
        type = "fluid",
        name = "bioluminescent-marking-gel", -- Probably useless
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 32,
        default_temperature = 25,
        base_color = {r = 0.1, g = 0.9, b = 0.1},
        flow_color = {r = 0.1, g = 0.9, b = 0.1},
        max_temperature = 100,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
    },
    
    -- Disease Treatment Agent
    {
        type = "fluid",
        name = "disease-treatment-agent", -- I hate farming, so I don't know what this is good for?
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 32,
        default_temperature = 25,
        base_color = {r = 0.9, g = 0.1, b = 0.1},
        flow_color = {r = 0.9, g = 0.1, b = 0.1},
        max_temperature = 100,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
    },
    
    -- Nutrient Absorption Enhancer
    {
        type = "fluid",
        name = "nutrient-absorption-enhancer", -- tf is this? No clue, ask someone else
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 32,
        default_temperature = 25,
        base_color = {r = 0.9, g = 0.6, b = 0.1},
        flow_color = {r = 0.9, g = 0.6, b = 0.1},
        max_temperature = 100,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
    },
    
    -- Sediment Binding Gel
    {
        type = "fluid",
        name = "sediment-binding-gel", -- This makes sense because clay isn't good enough, right?
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 32,
        default_temperature = 25,
        base_color = {r = 0.8, g = 0.8, b = 0.8},
        flow_color = {r = 0.8, g = 0.8, b = 0.8},
        max_temperature = 100,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
    },
    -- Glowfin Oil
    {
        type = "fluid",
        name = "glowfin-oil",
        icon = "__AC-Aquaculture__/graphics/icons/fish/fluids/glowfin-oil.png",
        icon_size = 128,
        default_temperature = 25,
        base_color = {r = 1, g = 0.5, b = 0},
        flow_color = {r = 1, g = 0.7, b = 0},
        max_temperature = 100,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
    },
    --Mukmoux Mucous
    {
        type = "fluid",
        name = "mukmoux-mucous",
        icon = "__AC-Aquaculture__/graphics/icons/fish/fluids/mukmoux-mucous.png",
        icon_size = 128,
        default_temperature = 25,
        base_color = {r = 0.5, g = 0.5, b = 0.5},
        flow_color = {r = 0.7, g = 0.7, b = 0.7},
        max_temperature = 100,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
    },
    --Mukmoux Sealant
    {
        type = "fluid",
        name = "mukmoux-sealant",
        icon = "__AC-Aquaculture__/graphics/icons/fish/fluids/mukmoux-sealant.png",
        icon_size = 128,
        default_temperature = 25,
        base_color = {r = 0.5, g = 0.5, b = 0.5},
        flow_color = {r = 0.7, g = 0.7, b = 0.7},
        max_temperature = 100,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
    },
    --Silverscale Oil
    {
        type = "fluid",
        name = "silverscale-oil",
        icon = "__AC-Aquaculture__/graphics/icons/fish/fluids/silverscale-oil.png",
        icon_size = 128,
        default_temperature = 25,
        base_color = {r = 0.7, g = 0.7, b = 0.7},
        flow_color = {r = 0.8, g = 0.8, b = 0.8},
        max_temperature = 100,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
    },
    {
        type = "fluid",
        name = "biological-ionic-fluid",
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        default_temperature = 25,
        base_color = {r = 0.5, g = 0.5, b = 0.5},
        flow_color = {r = 0.5, g = 0.5, b = 0.5},
        max_temperature = 100,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
    },
    --Spiracull Hydrolate
    {
        type = "fluid",
        name = "spiracull-hydrolate",
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        default_temperature = 25,
        base_color = {r = 0.5, g = 0.5, b = 0.5},
        flow_color = {r = 0.7, g = 0.7, b = 0.7},
        max_temperature = 100,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
    }
})
