require("prototypes.entity.entity")
require("prototypes.item.item")
require("prototypes.recipe.recipe")
require("prototypes.categories.fluid-recipes")
require("prototypes.categories.recipe-category")
require("prototypes.entity.fish")
require("prototypes.technologies.technologies")
require("prototypes.categories.fuel-category")
require("prototypes.modules")
require("prototypes.recipe.vanillarecipes")


data.raw["recipe"]["iron-plate"].enabled = false
data.raw["recipe"]["copper-plate"].enabled = false
data.raw["recipe"]["steel-plate"].enabled = false
data.raw["fish"]["fish"].autoplace = nil

data:extend({
  {
    type = "tile",
    name = "pond-water",
    needs_correction = false,
    build_sound = { filename = "__base__/sound/particles/small-splash-4.ogg" },
    collision_mask = { "ground-tile" },
    walking_speed_modifier = 0.8,
    layer = 61,
    variants = {
      main = {
        {
          picture = "__base__/graphics/terrain/water/water1.png",
          count = 8,
          size = 1
        },
        {
          picture = "__base__/graphics/terrain/water/water2.png",
          count = 8,
          size = 2,
          probability = 0.39,
          has_transition = true
        },
        {
          picture = "__base__/graphics/terrain/water/water4.png",
          count = 8,
          size = 4,
          probability = 1,
          has_transition = true
        }
      },
      inner_corner = {
        picture = "__base__/graphics/terrain/water/water-inner-corner.png",
        count = 6
      },
      outer_corner = {
        picture = "__base__/graphics/terrain/water/water-outer-corner.png",
        count = 6
      },
      side = {
        picture = "__base__/graphics/terrain/water/water-side.png",
        count = 6
      }
    },
    walking_sound = {
      {
        filename = "__base__/sound/walking/shallow-water-01.ogg",
        volume = 0.8
      },
      {
        filename = "__base__/sound/walking/shallow-water-02.ogg",
        volume = 0.8
      },
      {
        filename = "__base__/sound/walking/shallow-water-03.ogg",
        volume = 0.8
      },
      {
        filename = "__base__/sound/walking/shallow-water-04.ogg",
        volume = 0.8
      }
    },
    map_color = { r = 0, g = 0.34, b = 0.6 },
    pollution_absorption_per_second = 0.0001,
    vehicle_friction_modifier = 0.8
  }
})
local leatherBelt = table.deepcopy(data.raw["transport-belt"]["transport-belt"])
local belt_speed = 10 / 480

wood_belt_animation_set = 
{
	animation_set =
	{
		filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/wood-transport-belt.png",
		priority = "extra-high",
		width = 64,
		height = 64,
		frame_count = 16,
		direction_count = 20,
		hr_version =
		{
		filename = "__AB-Breathe-Easy-Arboretum__/graphics/entity/wood-transports/hr-wood-transport-belt.png",
		priority = "extra-high",
		width = 128,
		height = 128,
		scale = 0.5,
		frame_count = 16,
		direction_count = 20
		}
	},
}

leatherBelt.name = "leather-transport-belt"
leatherBelt.type = "transport-belt"
leatherBelt.speed = belt_speed
leatherBelt.health = 100
leatherBelt.structure_animation_speed_coefficient = 1
leatherBelt.belt_animation_set.animation_set.filename = "__AC-Aquaculture__/graphics/entity/leather-transports/leather-transport-belt.png"
leatherBelt.belt_animation_set.animation_set.hr_version.filename = "__AC-Aquaculture__/graphics/entity/leather-transports/hr-leather-transport-belt.png"
leatherBelt.minable = {mining_time = 0.1, result = "leather-transport-belt"}
leatherBelt.related_underground_belt = "leather-underground-belt"
data:extend({leatherBelt})

local leatherSplitter = table.deepcopy(data.raw["splitter"]["splitter"])
leatherSplitter.name = "leather-splitter"
leatherBelt.type = "transport-belt"
leatherSplitter.speed = belt_speed
leatherSplitter.health = 100
leatherSplitter.belt_animation_set = wood_belt_animation_set
leatherSplitter.structure_animation_speed_coefficient = 1/3
-- Assuming you have a specific structure for the splitter graphics, adjust these paths as necessary
leatherSplitter.structure.north.filename = "__AC-Aquaculture__/graphics/entity/leather-transports/leather-splitter-north.png"
leatherSplitter.structure.north.hr_version.filename = "__AC-Aquaculture__/graphics/entity/leather-transports/hr-leather-splitter-north.png"
leatherSplitter.structure.east.filename = "__AC-Aquaculture__/graphics/entity/leather-transports/leather-splitter-east.png"
leatherSplitter.structure.east.hr_version.filename = "__AC-Aquaculture__/graphics/entity/leather-transports/hr-leather-splitter-east.png"
leatherSplitter.structure.south.filename = "__AC-Aquaculture__/graphics/entity/leather-transports/leather-splitter-south.png"
leatherSplitter.structure.south.hr_version.filename = "__AC-Aquaculture__/graphics/entity/leather-transports/hr-leather-splitter-south.png"
leatherSplitter.structure.west.filename = "__AC-Aquaculture__/graphics/entity/leather-transports/leather-splitter-west.png"
leatherSplitter.structure.west.hr_version.filename = "__AC-Aquaculture__/graphics/entity/leather-transports/hr-leather-splitter-west.png"
leatherSplitter.structure_patch.east.filename = "__AC-Aquaculture__/graphics/entity/leather-transports/leather-splitter-east-top-patch.png"
leatherSplitter.structure_patch.east.hr_version.filename ="__AC-Aquaculture__/graphics/entity/leather-transports/hr-leather-splitter-east-top-patch.png"
leatherSplitter.structure_patch.west.filename = "__AC-Aquaculture__/graphics/entity/leather-transports/leather-splitter-west-top-patch.png"
leatherSplitter.structure_patch.west.hr_version.filename ="__AC-Aquaculture__/graphics/entity/leather-transports/hr-leather-splitter-west-top-patch.png"
leatherSplitter.minable = {mining_time = 0.1, result = "leather-splitter"}
data:extend({leatherSplitter})

local leatherUnderground = table.deepcopy(data.raw["underground-belt"]["underground-belt"])
leatherUnderground.name = "leather-underground-belt"
leatherBelt.type = "transport-belt"
leatherUnderground.speed = belt_speed
leatherUnderground.health = 100
leatherUnderground.belt_animation_set = wood_belt_animation_set
leatherUnderground.structure_animation_speed_coefficient = 1/3
-- Adjust the path for the underground belt graphics
leatherUnderground.structure.direction_in.sheet.filename = "__AC-Aquaculture__/graphics/entity/leather-transports/leather-underground-belt-structure.png"
leatherUnderground.structure.direction_in.sheet.hr_version.filename = "__AC-Aquaculture__/graphics/entity/leather-transports/hr-leather-underground-belt-structure.png"
leatherUnderground.structure.direction_out.sheet.filename = "__AC-Aquaculture__/graphics/entity/leather-transports/leather-underground-belt-structure.png"
leatherUnderground.structure.direction_out.sheet.hr_version.filename = "__AC-Aquaculture__/graphics/entity/leather-transports/hr-leather-underground-belt-structure.png"
leatherUnderground.structure.direction_in_side_loading.sheet.filename = "__AC-Aquaculture__/graphics/entity/leather-transports/leather-underground-belt-structure.png"
leatherUnderground.structure.direction_in_side_loading.sheet.hr_version.filename = "__AC-Aquaculture__/graphics/entity/leather-transports/hr-leather-underground-belt-structure.png"
leatherUnderground.structure.direction_out_side_loading.sheet.filename = "__AC-Aquaculture__/graphics/entity/leather-transports/leather-underground-belt-structure.png"
leatherUnderground.structure.direction_out_side_loading.sheet.hr_version.filename = "__AC-Aquaculture__/graphics/entity/leather-transports/hr-leather-underground-belt-structure.png"
leatherUnderground.minable = {mining_time = 0.1, result = "leather-underground-belt"}
data:extend({leatherUnderground})

