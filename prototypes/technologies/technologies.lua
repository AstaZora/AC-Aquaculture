data:extend({
    {
      type = "technology",
      name = "ac-fish-harvesting",
      icon = "__base__/graphics/technology/automation-1.png",
      icon_size = 256, icon_mipmaps = 4,
      prerequisites = {"ab-biocomposite-materials", "ab-basic-ore-clarification"},  --Reference the technology from the Arboretum mod
      effects = {
        {
            type = "unlock-recipe",
            recipe = "fish-fillet-machine",
        },
      },
      unit = {
        count = 150,
        ingredients = {{"research-kit", 1}, {"biocomposite-research-kit", 1}},
        time = 30,
      },
      order = "c-a"
    }
  })
  