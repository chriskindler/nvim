return {
    -- "bluz71/vim-moonfly-colors",
    "slugbyte/lackluster.nvim",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    config = function()
        -- Pre-colorscheme options
        vim.g.moonflyItalics = false           -- kill italics on comments etc.
        vim.g.moonflyVirtualTextColor = true   -- diagnostics in color (nicer)
        vim.g.moonflyTransparent = false
        vim.g.moonflyTerminalColors = true

        -- Bold the keyword groups: if/else/return/def/for/while/import/etc.
        vim.api.nvim_create_autocmd("ColorScheme", {
            -- pattern = "moonfly",
            pattern = "lackluster",
            callback = function()
                -- Vim's traditional groups
                local groups = {
                    "Statement",    -- if, else, return, while, for, break, continue
                    "Conditional",  -- if, else, elif
                    "Repeat",       -- for, while
                    "Keyword",      -- def, class, lambda, etc. (Python)
                    "Exception",    -- try, except, raise, finally
                    "Include",      -- import, from
                }
                for _, g in ipairs(groups) do
                    -- Preserve existing fg/bg, just add bold
                    local existing = vim.api.nvim_get_hl(0, { name = g, link = false })
                    existing.bold = true
                    vim.api.nvim_set_hl(0, g, existing)
                end

                -- Treesitter equivalents (modern Neovim uses these)
                local ts_groups = {
                    "@keyword",
                    "@keyword.function",      -- def, function
                    "@keyword.return",        -- return
                    "@keyword.conditional",   -- if, else, elif
                    "@keyword.repeat",        -- for, while
                    "@keyword.exception",     -- try, except, raise
                    "@keyword.import",        -- import, from
                    "@conditional",           -- legacy alias
                    "@repeat",                -- legacy alias
                    "@exception",             -- legacy alias
                    "@include",               -- legacy alias
                }
                for _, g in ipairs(ts_groups) do
                    local existing = vim.api.nvim_get_hl(0, { name = g, link = false })
                    -- If a group was just a link (no own colors), get the resolved one
                    if vim.tbl_isempty(existing) then
                        existing = vim.api.nvim_get_hl(0, { name = g })
                    end
                    existing.bold = true
                    existing.link = nil  -- nvim_set_hl ignores link if other attrs are present, but be explicit
                    vim.api.nvim_set_hl(0, g, existing)
                end
            end,
        })
        vim.cmd.colorscheme("lackluster-hack")
    end,
}
