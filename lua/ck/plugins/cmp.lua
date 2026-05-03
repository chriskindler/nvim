return {
    {
        "saghen/blink.cmp",
        version = "1.*",  -- use prebuilt Rust binary from the release
        event = "InsertEnter",
        dependencies = {
            "rafamadriz/friendly-snippets",  -- snippet collection
        },
        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            -- VS Code-like behavior:
            --   Tab/Shift-Tab cycle the menu and jump snippet placeholders
            --   Enter accepts
            --   C-Space manually triggers
            keymap = { preset = "default" },

            appearance = {
                nerd_font_variant = "mono",  -- set to "normal" if your font lacks mono variants
            },

            completion = {
                documentation = { auto_show = true, auto_show_delay_ms = 200 },
            },

            sources = {
                default = { "lsp", "path", "snippets", "buffer" },
            },

            signature = { enabled = true },  -- function signature popup while typing args

            -- Use the Rust fuzzy matcher (default; falls back to Lua if Rust unavailable)
            fuzzy = { implementation = "prefer_rust_with_warning" },
        },
        opts_extend = { "sources.default" },
    },
}
