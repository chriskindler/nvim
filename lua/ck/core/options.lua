vim.api.nvim_create_autocmd("FileType", {
    pattern = "netrw",
    command = "let g:netrw_liststyle = 3"
})

-- lua <-> vim
local opt = vim.opt

-- (tabs & indentation)
opt.tabstop = 4 -- 4 spaces for tabs
opt.shiftwidth = 4 -- 4 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- (line numbering & wrapping) 
opt.relativenumber = true  -- set relative line number
opt.number = true -- indents current line number to the left
opt.linebreak = true-- line breaks if max window width is reached
opt.cursorline = false -- highlights current line
opt.guicursor = "n-v-c-sm:block,i-ci-ve:block,r-cr-o:block"

-- (search settings)
opt.ignorecase = true -- case-insensitive when searching
opt.smartcase = true -- case-sensitive when including casing

-- (colouring)
opt.termguicolors = true
opt.background = "dark" -- switch colour scheme to light or dark using :background light/dark
opt.signcolumn = "yes" -- shift indent

-- (backspacing, clipboard & splitting windows)
opt.clipboard:append("unnamedplus") -- use system clipboard as default register
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom
