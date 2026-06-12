return {
    "karb94/neoscroll.nvim",
    opts = {
        mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>', '<C-y>', '<C-e>'},
        hide_cursor = true,
        stop_eof = true,
        duration_multiplier = 0.5,  -- Faster animations
        easing = 'linear',
    },
    config = function(_, opts)
        require('neoscroll').setup(opts)
        local neoscroll = require('neoscroll')
        local keymap = {
            -- Much faster, snappier feel
            ["<C-u>"] = function() neoscroll.ctrl_u({ duration = 100 }) end,
            ["<C-d>"] = function() neoscroll.ctrl_d({ duration = 100 }) end,
            ["<C-b>"] = function() neoscroll.ctrl_b({ duration = 150 }) end,
            ["<C-f>"] = function() neoscroll.ctrl_f({ duration = 150 }) end,
            ["<C-y>"] = function() neoscroll.scroll(-0.05, { move_cursor = false; duration = 50 }) end,
            ["<C-e>"] = function() neoscroll.scroll(0.05, { move_cursor = false; duration = 50 }) end,
        }
        local modes = { 'n', 'v', 'x' }
        for key, func in pairs(keymap) do
            vim.keymap.set(modes, key, func)
        end
    end
}
