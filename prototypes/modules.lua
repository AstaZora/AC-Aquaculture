data:extend({
    {
        type = "module",
        name = "sifter-module-1",
        icon = "__base__/graphics/icons/productivity-module.png",
        icon_size = 64,
        category = "productivity",
        tier = 1,
        effect = { productivity = {bonus = 1}},
        limitation = {"ab-mineral-cyclone", "ab-waste-cyclone", "ab-slush-filtration", "ab-ore-slurry-refining", "ab-ore-concentrate-refining"},
        limitation_message_key = "This is not a compatible Sifting recipe",
        subgroup = "module",
        order = "c[productivity]-a[stream-sifter-productivity-module]",
        stack_size = 50
    },
    {
        type = "module",
        name = "arboretum-module-1",
        icon = "__base__/graphics/icons/productivity-module.png",
        icon_size = 64,
        category = "productivity",
        tier = 1,
        effect = { productivity = {bonus = 2}},
        limitation = {},
        limitation_message_key = "This is not growing a tree, try another recipe!",
        subgroup = "module",
        order = "c[productivity]-a[arboretum-productivity-module]",
        stack_size = 50
    },
})
