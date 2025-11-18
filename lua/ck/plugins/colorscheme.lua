return {
  -- Lush is a required dependency for desolate
  {
    "rktjmp/lush.nvim",
    lazy = true,
  },

  -- Desolate colorscheme
  {
    "He4eT/desolate.nvim",
    lazy = false,
    priority = 1000,
    dependencies = { "rktjmp/lush.nvim" },
    config = function()
      vim.opt.termguicolors = true
      vim.opt.background = "dark"

      -- Set colorscheme
      vim.cmd("colorscheme desolate")

      -- Force black background
      vim.cmd("hi Normal guibg=#000000")

      -- Optional: minimal highlight overrides
      vim.cmd("hi Comment guifg=#444444")    -- muted blue-grey
      vim.cmd("hi Identifier guifg=#c0caf5") -- light bluish white
      vim.cmd("hi Function guifg=#7aa2f7")   -- soft blue
      vim.cmd("hi Statement guifg=#bb9af7") 
    vim.api.nvim_set_hl(0, "MatchParen", { bg = "#5f87ff", fg = "NONE", underline = false })
    end,
  },
}
