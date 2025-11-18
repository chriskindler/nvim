return {
    {
        "ojroques/nvim-osc52",
        config = function()
            require('osc52').setup {
                silent = true, -- Suppress messages
            }

            -- Keybindings for OSC52
            vim.keymap.set('n', '<leader>y', require('osc52').copy_operator, { expr = true })
            vim.keymap.set('n', '<leader>yy', '<leader>y_', { remap = true })
            vim.keymap.set('v', '<leader>y', require('osc52').copy_visual)
        end,
    },
}
