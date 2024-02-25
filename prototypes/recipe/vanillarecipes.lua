local recipes = data.raw.recipe
local function sanitize_recipe(recipe)
    local difficulty = recipe.normal or recipe.expensive
    if difficulty then
        for k, v in pairs(difficulty) do
            recipe[k] = v
        end
        recipe.normal, recipe.expensive = nil, nil
    end
    return recipe
end


sanitize_recipe(recipes["lab"]).ingredients =
{
    {"bronze-plate", 10},
    {"wooden-transport-belt", 5},
    {"fiberboard-circuitry", 5},
    {"wooden-lab", 1}
}
sanitize_recipe(recipes["electric-mining-drill"]).ingredients =
{
    {"bronze-gear", 5},
    {"bronze-plate", 5},
    {"advanced-circuit", 5}
}
sanitize_recipe(recipes["constant-combinator"]).ingredients =
{
    {"bronze-plate", 2},
    {"copper-cable", 5},
    {"fiberboard-circuitry", 5}
}
sanitize_recipe(recipes["arithmetic-combinator"]).ingredients =
{
    {"bronze-plate", 2},
    {"copper-cable", 5},
    {"fiberboard-circuitry", 5}
}
sanitize_recipe(recipes["decider-combinator"]).ingredients =
{
    {"bronze-plate", 2},
    {"copper-cable", 5},
    {"fiberboard-circuitry", 5}
}
sanitize_recipe(recipes["transport-belt"]).ingredients =
{
    {"bronze-gear", 5},
    {"leather-transport-belt", 1}
}