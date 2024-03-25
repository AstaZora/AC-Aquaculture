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
sanitize_recipe(recipes["medium-electric-pole"]).ingredients =
{
    {"bronze-plate", 2},
    {"iron-plate", 2},
    {"copper-cable", 2},

}
sanitize_recipe(recipes["big-electric-pole"]).ingredients =
{
    {"bronze-plate", 4},
    {"iron-plate", 8},
    {"copper-cable", 4},
}
sanitize_recipe(recipes["substation"]).ingredients =
{
    {"bronze-plate", 10},
    {"iron-plate", 20},
    {"copper-cable", 10},
}
sanitize_recipe(recipes["locomotive"]).ingredients =
{
    {"bronze-plate", 20},
    {"bronze-gear", 10},
    {"engine-unit", 10},
    {"advanced-circuit", 5},
}
sanitize_recipe(recipes["cargo-wagon"]).ingredients =
{
    {"bronze-plate", 20},
    {"bronze-gear", 10},
    {"copper-cable", 10},
    {"advanced-circuit", 5},
}
sanitize_recipe(recipes["fluid-wagon"]).ingredients =
{
    {"bronze-plate", 20},
    {"bronze-gear", 10},
    {"copper-cable", 10},
    {"advanced-circuit", 5},
}
sanitize_recipe(recipes["engine-unit"]).ingredients =
{
    {"bronze-gear", 10},
    {"bronze-pipe", 5},
    {"bronze-steel-plate", 5},
}
sanitize_recipe(recipes["train-stop"]).ingredients =
{
    {"bronze-plate", 5},
    {"iron-plate", 5},
    {"copper-cable", 5},
}
sanitize_recipe(recipes["rail-signal"]).ingredients =
{
    {"bronze-plate", 1},
    {"iron-plate", 1},
    {"copper-cable", 5},
}
sanitize_recipe(recipes["rail-chain-signal"]).ingredients =
{
    {"bronze-plate", 1},
    {"iron-plate", 1},
    {"copper-cable", 5},
}
sanitize_recipe(recipes["rail"]).ingredients =
{
    {"bronze-steel-plate", 1},
    {"iron-stick", 1},
    {"blended-stone", 4}
}