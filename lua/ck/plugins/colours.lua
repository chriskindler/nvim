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

            -- comments not italic
            local comment_hl = vim.api.nvim_get_hl(0, { name = "Comment", link = false })
            comment_hl.italic = false
            comment_hl.link = nil
            vim.api.nvim_set_hl(0, "Comment", comment_hl)
            end,
        })
        vim.cmd.colorscheme("oxocarbon")
    end,
}
