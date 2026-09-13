return {
    "nyoom-engineering/oxocarbon.nvim",
    name = "oxocarbon",
    lazy = false,
    priority = 1000,
    config = function()
        -- Helper: transparent backgrounds
        local function apply_transparent()
            local transparent_groups = {
                "Normal", "NormalNC", "NvimTreeNormal",
                "NERDTreeNormal", "SignColumn", "EndOfBuffer",
            }
            for _, g in ipairs(transparent_groups) do
                vim.api.nvim_set_hl(0, g, { bg = "none", ctermbg = "none" })
            end
        end

        -- Oxocarbon tweaks: bold keywords, no italics, transparent
        vim.api.nvim_create_autocmd("ColorScheme", {
            pattern = "oxocarbon",
            callback = function()
                local bold_groups = {
                    "@keyword", "@keyword.function", "@keyword.return",
                    "@keyword.conditional", "@keyword.repeat", "@keyword.exception",
                    "@keyword.import", "Statement", "Conditional", "Repeat",
                    "Keyword", "Exception", "Include",
                }
                for _, g in ipairs(bold_groups) do
                    local hl = vim.api.nvim_get_hl(0, { name = g, link = false })
                    if vim.tbl_isempty(hl) then
                        hl = vim.api.nvim_get_hl(0, { name = g })
                    end
                    hl.bold = true
                    hl.italic = false
                    hl.link = nil
                    vim.api.nvim_set_hl(0, g, hl)
                end
                local comment_hl = vim.api.nvim_get_hl(0, { name = "Comment", link = false })
                comment_hl.italic = false
                comment_hl.link = nil
                vim.api.nvim_set_hl(0, "Comment", comment_hl)
                apply_transparent()
            end,
        })

        -- Theme switchers
        local function use_default()
            vim.cmd.colorscheme("default")
            apply_transparent()
            vim.g.theme_is_oxocarbon = false
        end

        local function use_oxocarbon()
            vim.g.oxocarbon_transparent = true
            vim.cmd.colorscheme("oxocarbon")
            vim.g.theme_is_oxocarbon = true
        end

        local function toggle_theme()
            if vim.g.theme_is_oxocarbon then
                use_default()
            else
                use_oxocarbon()
            end
        end

        vim.keymap.set("n", "<leader>tt", toggle_theme, { desc = "Toggle theme" })

        -- Start with default; swap to use_oxocarbon() if preferred
        use_oxocarbon()
    end,
}
