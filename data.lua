require("prototypes.entity.entity")
require("prototypes.item.item")
require("prototypes.recipe.recipe")
require("prototypes.categories.fluid-recipes")
require("prototypes.categories.recipe-category")
require("prototypes.entity.fish")
require("prototypes.technologies.technologies")
require("prototypes.categories.fuel-category")



data.raw["fish"]["fish"].autoplace = nil

data:extend({
  {
    type = "tile",
    name = "pond-water",
    needs_correction = false,
    build_sound = { filename = "__base__/sound/particles/small-splash-4.ogg" },
    collision_mask = { "ground-tile" },
    walking_speed_modifier = 1.2,
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
    pollution_absorption_per_second = 0,
    vehicle_friction_modifier = 1.2
  }
})