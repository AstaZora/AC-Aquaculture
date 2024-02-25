--[[function createFish(name)
  local fishPrototype = table.deepcopy(data.raw["fish"]["fish"])
  fishPrototype.name = name
  fishPrototype.autoplace = {
    influence = 0.02,
    max_probability = 0.02,
  }
  fishPrototype.minable = { mining_time = 1, result = name, count = 5 }
  fishPrototype.collision_box = {{-0.75, -0.75}, {0.75, 0.75}}
  fishPrototype.selection_box = {{-0.5, -0.3}, {0.5, 0.3}}
  return fishPrototype
end

data:extend({
})

]]
function createFish(name, autoplace)
    local fishPrototype = table.deepcopy(data.raw["fish"]["fish"])
    fishPrototype.name = name
    fishPrototype.localised_name = {"entity-name." .. name}
    fishPrototype.type = "fish"
    fishPrototype.order = "c-a-"..name
    fishPrototype.icon = "__base__/graphics/icons/fish.png"
    fishPrototype.icon_size = 64
    fishPrototype.autoplace = autoplace
    fishPrototype.minable = { mining_time = 1, result = name, count = 5 }
    fishPrototype.collision_box = {{-0.75, -0.75}, {0.75, 0.75}}
    fishPrototype.selection_box = {{-0.5, -0.3}, {0.5, 0.3}}
    return fishPrototype
end
    
data:extend({
    createFish("glowfin-trenchers", {min_influence = 0.01, influence = 0.02, water_optimal = 0.3, water_range = 0.05, water_max_range = 0.1}),
    createFish("mukmoux", {min_influence = 0.01, influence = 0.06, water_optimal = 0.2, water_range = 0.05, water_max_range = 0.1}),
    createFish("neon-nocturne", {min_influence = 0.01, influence = 0.015, water_optimal = 0.8, water_range = 0.1, water_max_range = 0.15}),
    createFish("silverscale-glider", {min_influence = 0.01, influence = 0.018, water_optimal = 0.5, water_range = 0.1, water_max_range = 0.15}),
    createFish("spiral-shellfish", {min_influence = 0.01, influence = 0.025, water_optimal = 0.1, water_range = 0.05, water_max_range = 0.05}),
    createFish("silent-drifter", {min_influence = 0.01, influence = 0.015, water_optimal = 0.7, water_range = 0.1, water_max_range = 0.15}),
    createFish("twilight-tetra", {min_influence = 0.01, influence = 0.02, water_optimal = 0.4, water_range = 0.05, water_max_range = 0.1}),
    createFish("starfin-darters", {min_influence = 0.01, influence = 0.03, water_optimal = 0.015, water_range = 0.02, water_max_range = 0.05}),
    createFish("stream-sifter", {min_influence = 0.01, influence = 0.024, water_optimal = 0.25, water_range = 0.05, water_max_range = 0.1}),
})
    --[[
    createFish("biofilm-biter", {influence = 0.1, wateropt = 0.3, waterange = 0.1, maxrange = 0.15}),
    createFish("crystal-carapacer", {influence = 0.1, }),
    createFish("electro-eels", {influence = 0.02, max_probability = 0.02}),
    createFish("mukmoux", {influence = 0.02, max_probability = 0.02}),
    createFish("lava-lamprey", {influence = 0.02, max_probability = 0.02}),
    createFish("magma-moray", {influence = 0.02, max_probability = 0.02}),
    createFish("thermal-pike", {influence = 0.02, max_probability = 0.02}),
    createFish("radiant-ray", {influence = 0.02, max_probability = 0.02}),
    createFish("solar-starfish", {influence = 0.02, max_probability = 0.02}),
    createFish("stellar-sturgeon", {influence = 0.02, max_probability = 0.02}),
    createFish("void-viper", {influence = 0.02, max_probability = 0.02}),
    createFish("xeno-xiphias", {influence = 0.02, max_probability = 0.02}),
    createFish("starfin-darters", {influence = 0.02, max_probability = 0.02}),
    createFish("neon-nocturne", {influence = 0.02, max_probability = 0.02}),
    createFish("helix-drifter", {influence = 0.02, max_probability = 0.02}),
    createFish("luminous-lanternfish", {influence = 0.02, max_probability = 0.02}),
    createFish("phosphor-fish", {influence = 0.02, max_probability = 0.02}),
    createFish("silverscale-glider", {influence = 0.02, max_probability = 0.02}),
    createFish("twilight-tetra", {influence = 0.02, max_probability = 0.02}),
    createFish("crescent-jellyfish", {influence = 0.02, max_probability = 0.02}),
    createFish("nightshade-nudibranch", {influence = 0.02, max_probability = 0.02}),
    createFish("shallows-squid", {influence = 0.02, max_probability = 0.02}),
    createFish("bolt-barracuda", {influence = 0.02, max_probability = 0.02}),
    createFish("aurora-angler", {influence = 0.02, max_probability = 0.02}),
    createFish("glacial-grouper", {influence = 0.02, max_probability = 0.02}),
    createFish("frostfin-tuna", {influence = 0.02, max_probability = 0.02}),
    createFish("iceberg-icarus", {influence = 0.02, max_probability = 0.02}),
    createFish("polar-pike", {influence = 0.02, max_probability = 0.02}),
    createFish("snowsquall-salmon", {influence = 0.02, max_probability = 0.02}),
    createFish("arctic-alewife", {influence = 0.02, max_probability = 0.02}),
    createFish("frozen-fish", {influence = 0.02, max_probability = 0.02}),
    createFish("mist-manta", {influence = 0.02, max_probability = 0.02}),
    createFish("plasma-puffer", {influence = 0.02, max_probability = 0.02}),
    createFish("vapor-vanguard", {influence = 0.02, max_probability = 0.02}),
    createFish("whispering-whale", {influence = 0.02, max_probability = 0.02}),
    createFish("mistral-mollusk", {influence = 0.02, max_probability = 0.02}),
    createFish("cloaked-cuttlefish", {influence = 0.02, max_probability = 0.02}),
    createFish("lunar-lantern", {influence = 0.02, max_probability = 0.02}),
    createFish("ribbon-reef", {influence = 0.02, max_probability = 0.02}),
    createFish("shell-hunter", {influence = 0.02, max_probability = 0.02}),
    createFish("tidepool-tetra", {influence = 0.02, max_probability = 0.02}),
    createFish("echo-ray", {influence = 0.02, max_probability = 0.02}),
    createFish("fogfin-fish", {influence = 0.02, max_probability = 0.02}),
    createFish("spiral-shellfish", {influence = 0.02, max_probability = 0.02}),
    createFish("silent-drifter", {influence = 0.02, max_probability = 0.02}),
    createFish("shadow-skulker", {influence = 0.02, max_probability = 0.02}),
    createFish("mud-nautilus", {influence = 0.02, max_probability = 0.02}),
    createFish("tide-tumbler", {influence = 0.02, max_probability = 0.02}),
    createFish("stream-sifter", {influence = 0.02, max_probability = 0.02}),
    createFish("shalen", {influence = 0.02, max_probability = 0.02}),
    ]]
  