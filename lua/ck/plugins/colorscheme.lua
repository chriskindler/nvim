vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.cmd("colorscheme default")

for _, hl in ipairs({
    "Normal",
    "NormalFloat",
    "SignColumn",
    "EndOfBuffer",
}) do
  vim.api.nvim_set_hl(0, hl, { bg = "NONE" })
end
