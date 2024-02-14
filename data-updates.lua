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