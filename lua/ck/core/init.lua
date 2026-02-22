require("ck.core.options")
require("ck.core.keymaps")
require("ck.core.derp_theme").apply()

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    require("ck.core.derp_theme").apply()
  end,
})

-- vim.opt.background = "dark" -- or "light"
-- require("ck.core.apple_colours").setup()
-- Override default colors
-- vim.api.nvim_set_hl(0, "Function", { fg = "#DCD1FF", bold = false })
-- vim.api.nvim_set_hl(0, "@function", { fg = "#DCD1FF", bold = false })
-- vim.api.nvim_set_hl(0, "@function.call", { fg = "#DCD1FF" })
