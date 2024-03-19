-- In circuit-connector-sprites.lua
local fishNetConnection = {
    sprites = {
      led_light = {intensity = 0.8, size = 0.9},
      connector_main = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04a-base-sequence.png",
          priority = "low",
          led_light = {intensity = 0.8, size = 0.9},
          width = 52,
          height = 50,
          scale = 0.5,
          shift = {-1.4, -1.5},  -- Adjusted to the top-left corner of the entity
      },
      wire_pins = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04c-wire-sequence.png",
          priority = "low",
          led_light = {intensity = 0.8, size = 0.9},
          width = 52,
          height = 50,
          scale = 0.5,
          shift = {-1.46, -1.6},  -- Adjusted to the top-left corner of the entity
      },
      led_blue = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04e-blue-LED-on-sequence.png",
          priority = "low",
          led_light = {intensity = 0.8, size = 0.9},
          width = 52,
          height = 50,
          scale = 0.5,
          shift = {-1.4, -1.4},  -- Adjusted to the top-left corner of the entity
      },
      led_red = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04i-red-LED-sequence.png",
          priority = "low",
          led_light = {intensity = 0.8, size = 0.9},
          width = 52,
          height = 50,
          scale = 0.5,
          shift = {-1.4, -1.4},  -- Adjusted to the top-left corner of the entity
      },
      led_green = {
          filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04h-green-LED-sequence.png",
          priority = "low",
          led_light = {intensity = 0.8, size = 0.9},
          width = 52,
          height = 50,
          scale = 0.5,
          shift = {-1.4, -1.4},  -- Adjusted to the top-left corner of the entity
      },
    },
    point = {
        {
            wire = {
              red = {0.875, -0.375},
              green = {0.875, -0.15625},
            },
            shadow = {
              red = {1.1875, 0.125},
              green = {1.1875, 0.34375},
            }
          },
        -- Since your entity doesn't rotate, one set is enough.
    }
  }
  return fishNetConnection

  