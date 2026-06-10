return {
    "nyoom-engineering/oxocarbon.nvim",
    name = "oxocarbon",
    lazy = false,
    priority = 1000,
    config = function()
        vim.api.nvim_create_autocmd("ColorScheme", {
            pattern = "oxocarbon",
            callback = function()
                local bold_groups = {
                    "@keyword",
                    "@keyword.function",
                    "@keyword.return",
                    "@keyword.conditional",
                    "@keyword.repeat",
                    "@keyword.exception",
                    "@keyword.import",
                    "Statement",
                    "Conditional",
                    "Repeat",
                    "Keyword",
                    "Exception",
                    "Include",
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
            end,
        })
        vim.cmd.colorscheme("oxocarbon")
    end,
}
    -- "rebelot/kanagawa.nvim",
    -- name = "kanagawa",
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    --     require("kanagawa").setup({
    --         undercurl = true,
    --         commentStyle = { italic = false },
    --         functionStyle = { italic = false },
    --         keywordStyle = { italic = false, bold = true },
    --         statementStyle = { bold = true },
    --         typeStyle = { italic = false },
    --         transparent = false,
    --         terminalColors = true,
    --     })
    --     vim.cmd.colorscheme("kanagawa-dragon")
    -- end,
