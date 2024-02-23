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
    {
        type = "module",
        name = "efficient-breeding-processor",
        icon = "__base__/graphics/icons/speed-module.png",
        icon_size = 64,
        category = "speed",
        tier = 1,
        effect = { speed = {bonus = 0.25}},
        limitation = {"ac-breed-glowfin-trenchers", "ac-breed-mukmoux", "ac-breed-silverscale-glider", "ac-breed-glowfin-trenchers-egg", "ac-breed-mukmoux-egg", "ac-breed-silverscale-glider-egg"},
        limitation_message_key = "This is not a compatible breeding recipe",
        subgroup = "module",
        order = "c[speed]-a[efficient-breeding-processor]",
        stack_size = 50
    },
    --Efficient Egg Gathering
    {
        type = "module",
        name = "efficient-egg-gathering-processor",
        icon = "__base__/graphics/icons/productivity-module.png",
        icon_size = 64,
        category = "productivity",
        tier = 1,
        effect = { productivity = {bonus = 0.5}},
        limitation = {"ac-breed-glowfin-trenchers", "ac-breed-mukmoux", "ac-breed-silverscale-glider", "ac-breed-glowfin-trenchers-egg", "ac-breed-mukmoux-egg", "ac-breed-silverscale-glider-egg"},
        limitation_message_key = "This is not a compatible breeding recipe",
        subgroup = "module",
        order = "c[productivity]-a[efficient-egg-gathering-processor]",
        stack_size = 50
    },
})
