return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {},

  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    local nvimtree = require("nvim-tree")

    nvimtree.setup({
      view = {
        width = 45,
        relativenumber = true,
      },

      renderer = {
        icons = {
          show = {
            file = false,
            folder = false,
            folder_arrow = false,
            git = false,
          },
        },
      },

      actions = {
        open_file = {
          window_picker = { enable = false },
        },
      },

      filters = { custom = { ".DS_Store" } },
      git = { ignore = false },

      -- This is the key part
      on_attach = function(bufnr)
        local api = require("nvim-tree.api")

        -- restore ALL default nvim-tree keymaps (including Enter)
        api.config.mappings.default_on_attach(bufnr)

        local opts = { buffer = bufnr, noremap = true, silent = true, nowait = true }

        -- your window navigation overrides
        vim.keymap.set("n", "H", "<C-w>h", opts)
        vim.keymap.set("n", "J", "<C-w>j", opts)
        vim.keymap.set("n", "K", "<C-w>k", opts)
        vim.keymap.set("n", "L", "<C-w>l", opts)
        end,
    })

    local keymap = vim.keymap
    keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
    keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
    keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })
  end,
}
