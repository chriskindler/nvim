return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup({
            options = {
                icons_enabled = false,
            },
            sections = {
                lualine_a = {
                    {
                        'mode',
                        color = { gui = 'bold' },
                    }
                },
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {'filename'},
                lualine_y = {'progress'},
                lualine_z = {'location'}
            }
        })
    end
}
