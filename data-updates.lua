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


--For new energy usage of any entity, use the following with the machines type and name
--[[-- In data.lua or data-updates.lua or data-final-fixes.lua
if data.raw["assembling-machine"]["fish-oil-refinery"] then
  data.raw["assembling-machine"]["fish-oil-refinery"].energy_usage = "25kW"
end
]]
--Useful in data, data-updates, or data-final-fixes. This is dependant on if this is your own mod, or someone else's mod.
--If it is not your mod, a later folder will be needed to ensure that the changes are made after the mod is loaded.
--If it is your mod, then data.lua is the best place to put it.
--For my own peace of mind, and since I have multiple mods in the suite, data-updates is a safer place to me.
--This is because I can ensure that the changes are made after the mod is loaded, but before the game is started.
