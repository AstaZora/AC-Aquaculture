data:extend({
	{
		type = "resource",
		name = "gypsum-deposit",
		icon = "__base__/graphics/icons/coal.png",
		icon_size = 64,
		flags = {"placeable-neutral"},
		category = "basic-solid",
		order = "a-b-a",
		minimum = 2000,
		normal = 20000,
		infinite_depletion_amount = 0,
		resource_patch_search_radius = 12,
		minable = {
			hardness = 0.4,
			mining_time = 0.5,  -- Making mining faster
			result = "gypsum",
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		autoplace = {
			control = "gypsum-deposit",
			sharpness = 1,
			richness_multiplier = 1500,
			richness_base = 500,
			size_control_multiplier = 0.1,  -- Adjust for denser patches
			coverage = 0.002,  -- Rare spawn
			peaks = {
				{
					noise_layer = "gypsum",
					noise_octaves_difference = -1.5,
					noise_persistence = 0.3,
				},
			}
		},		
		stage_counts = {10000, 6000, 4000, 2000, 1000, 500, 200, 100},
		stages = {
			sheet = {
				filename = "__base__/graphics/entity/coal/coal.png",
				priority = "extra-high",
				size = 64,
				frame_count = 4,
				variation_count = 8,
			}
		},
		map_color = {r=0.85, g=0.85, b=0.85},  -- Light gray for gypsum
	},
	{
		type = "resource",
		name = "limestone-deposit",
		icon = "__base__/graphics/icons/stone.png",
		icon_size = 64,
		flags = {"placeable-neutral"},
		category = "basic-solid",
		order = "a-b-b",
		minimum = 8000,
		normal = 80000,
		infinite_depletion_amount = 0,
		minable = {
			hardness = 0.4,
			mining_time = 0.5,  -- Making mining faster
			result = "limestone",
		},
		autoplace = {
			control = "limestone-deposit",
			sharpness = 1,
			richness_multiplier = 1500,
			richness_base = 500,
			size_control_multiplier = 0.12,  -- Adjust for denser patches
			coverage = 0.003,  -- Rare spawn
			peaks = {
				{
					noise_layer = "limestone",
					noise_octaves_difference = -1.5,
					noise_persistence = 0.4,
				},
			}
		},
		stage_counts = {15000, 9000, 6000, 3000, 1500, 800, 400, 100},
		stages = {
			sheet = {
				filename = "__base__/graphics/entity/stone/stone.png",
				priority = "extra-high",
				size = 64,
				frame_count = 4,
				variation_count = 8,
			}
		},
		map_color = {r=0.9, g=0.9, b=0.7},  -- Off-white for limestone
	},
	{
		type = "resource",
		name = "sand-deposit",
		icon = "__base__/graphics/icons/stone.png",  -- Placeholder icon
		icon_size = 64,
		flags = {"placeable-neutral"},
		category = "basic-solid",
		order = "a-b-d",
		minimum = 3000,
		normal = 30000,
		infinite_depletion_amount = 0,
		minable = {
			hardness = 0.2,
			mining_time = 0.5,
			result = "sand",
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		autoplace = {
			control = "sand-deposit",
			sharpness = 1,
			richness_multiplier = 1100,
			richness_base = 400,
			size_control_multiplier = 0.1,
			coverage = 0.002,
			peaks = {
				{
					noise_layer = "sand",
					noise_octaves_difference = -1.5,
					noise_persistence = 0.3,
				},
			}
		},
		stage_counts = {15000, 9000, 6000, 3000, 1500, 800, 400, 100},
		stages = {
			sheet = {
				filename = "__base__/graphics/entity/stone/stone.png",  -- Placeholder texture
				priority = "extra-high",
				size = 64,
				frame_count = 4,
				variation_count = 8,
			}
		},
		map_color = {r=0.9, g=0.8, b=0.5},  -- Sandy color for sand
	},
	{
		type = "resource",
		name = "clay-deposit",
		icon = "__base__/graphics/icons/coal.png",  -- Placeholder icon
		icon_size = 64,
		flags = {"placeable-neutral"},
		category = "basic-solid",
		order = "a-b-c",
		minimum = 5000,
		normal = 50000,
		infinite_depletion_amount = 0,
		minable = {
			hardness = 0.2,
			mining_time = 0.5,
			result = "clay",
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		autoplace = {
			control = "clay-deposit",
			sharpness = 1,
			richness_multiplier = 1200,
			richness_base = 400,
			size_control_multiplier = 0.1,
			coverage = 0.002,
			peaks = {
				{
					noise_layer = "clay",
					noise_octaves_difference = -1.5,
					noise_persistence = 0.3,
				},
			}
		},
		stage_counts = {15000, 9000, 6000, 3000, 1500, 800, 400, 100},
		stages = {
			sheet = {
				filename = "__base__/graphics/entity/coal/coal.png",  -- Placeholder texture
				priority = "extra-high",
				size = 64,
				frame_count = 4,
				variation_count = 8,
			}
		},
		map_color = {r=0.7, g=0.5, b=0.3},  -- Earthy brown for clay
	}
	
})
