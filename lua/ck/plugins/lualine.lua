-- lua/ck/plugins/lualine.lua

-- Load and configure lualine
return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "EdenEast/nightfox.nvim" },  -- Ensure nightfox is loaded first
  config = function()
    require('lualine').setup {
      options = {
        theme = 'auto', -- Auto will try to adapt to your current colorscheme
        component_separators = { left = '', right = ''},  -- Similar to what is shown
        section_separators = { left = '', right = ''},     -- Left and right arrows
        disabled_filetypes = {},
      },
      sections = {
        lualine_a = {'mode'},                             -- Shows the current mode (NORMAL, INSERT, etc.)
        lualine_b = {'branch'},                           -- Shows the git branch
        lualine_c = {
          {
            'filename',
            file_status = true,                          -- Displays file status (readonly status, modified status)
            path = 1                                     -- 1 = relative path
          }
        },
        lualine_x = {'filetype'},                        -- Shows the file type (RUST, etc.)
        lualine_y = {'encoding', 'fileformat'},          -- Shows file encoding (utf-8, etc.) and format
        lualine_z = {'location', 'progress'},            -- Shows cursor position (line and column) and file progress
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      extensions = {}
    }
  end
}
