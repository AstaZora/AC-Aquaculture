table.insert(data.raw["lab"]["lab"].inputs, "fish-biomass-pack")
table.insert(data.raw["lab"]["lab"].inputs, "fish-fluid-science-pack")
table.insert(data.raw["lab"]["lab"].inputs, "advanced-biology-pack")

if data.raw.recipe["landfill"] then
    data.raw.recipe["landfill"].enabled = true
end

local woodTypes = {"pine", "birch", "oak", "maple", "willow", "poplar", "cedar", "spruce", "ash", "hickory", "walnut", "mahogany", "teak", "ebony", "rose", "bamboo", "balsa", "cherry", "acacia", "olive"}

local saplingReturns = {}

for i, woodType in ipairs(woodTypes) do
    table.insert(saplingReturns, "ab-grow-".. woodType.."-tree")
end

table.insert(saplingReturns, "ab-wood-growth")

-- Update the module's limitations to include only the specified recipes
local arboretum_module1 = data.raw.module["arboretum-module-1"]
if arboretum_module1 then
    arboretum_module1.limitation = saplingReturns
end
