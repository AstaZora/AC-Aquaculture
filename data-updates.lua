-- data-updates.lua or data-final-fixes.lua

-- Update the icon and icon size for the glowfin-trenchers recipe
if data.raw.recipe["ac-breed-glowfin-trenchers"] then
    data.raw.recipe["ac-breed-glowfin-trenchers"].icon = "__AC-Aquaculture__/graphics/icons/fish/glowfin-trenchers-egg.png"
    data.raw.recipe["ac-breed-glowfin-trenchers"].icon_size = 128
end
-- Update the icon and icon size for the glowfin-trenchers-egg recipe
if data.raw.recipe["ac-breed-glowfin-trenchers-egg"] then
    data.raw.recipe["ac-breed-glowfin-trenchers-egg"].icon = "__AC-Aquaculture__/graphics/icons/fish/glowfin-trenchers.png"
    data.raw.recipe["ac-breed-glowfin-trenchers-egg"].icon_size = 128
end

-- Update the icon and icon size for the mukmoux recipe
if data.raw.recipe["ac-breed-mukmoux"] then
    data.raw.recipe["ac-breed-mukmoux"].icon = "__AC-Aquaculture__/graphics/icons/fish/mukmoux-egg.png"
    data.raw.recipe["ac-breed-mukmoux"].icon_size = 128
end
-- Update the icon and icon size for the mukmoux-egg recipe
if data.raw.recipe["ac-breed-mukmoux-egg"] then
    data.raw.recipe["ac-breed-mukmoux-egg"].icon = "__AC-Aquaculture__/graphics/icons/fish/mukmoux.png"
    data.raw.recipe["ac-breed-mukmoux-egg"].icon_size = 128
end
--Update the icon and icon size for the silverscale recipe
if data.raw.recipe["ac-breed-silverscale-glider"] then
    data.raw.recipe["ac-breed-silverscale-glider"].icon = "__AC-Aquaculture__/graphics/icons/fish/silverscale-glider-egg.png"
    data.raw.recipe["ac-breed-silverscale-glider"].icon_size = 128
end

-- Update the icon and icon size for the silverscale-egg recipe
if data.raw.recipe["ac-breed-silverscale-glider-egg"] then
    data.raw.recipe["ac-breed-silverscale-glider-egg"].icon = "__AC-Aquaculture__/graphics/icons/fish/silverscale-glider.png"
    data.raw.recipe["ac-breed-silverscale-glider-egg"].icon_size = 128
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
