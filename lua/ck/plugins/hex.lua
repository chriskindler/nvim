return {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = {
        user_default_options = {
            names = false,           -- disable "red", "blue", "yellow", etc.
            names_custom = false,    -- disable any custom name lists
            tailwind = false,        -- disable tailwind class names
            RGB = true,              -- #RGB hex
            RGBA = true,             -- #RGBA hex
            RRGGBB = true,           -- #RRGGBB hex
            RRGGBBAA = true,         -- #RRGGBBAA hex
            rgb_fn = false,          -- disable rgb() / rgba() CSS functions
            hsl_fn = false,          -- disable hsl() / hsla() CSS functions
        },
    },
}
