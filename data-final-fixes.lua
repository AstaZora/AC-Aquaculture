local custom_science_packs = {
    "research-kit",
    "biocomposite-research-kit",
    "fish-biomass-pack",
    "fish-fluid-science-pack",
    "advanced-biology-pack",
}

if data.raw["lab"]["lab"] then
    data.raw["lab"]["lab"].inputs = custom_science_packs
end