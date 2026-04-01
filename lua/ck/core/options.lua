vim.api.nvim_create_autocmd("FileType", {
    pattern = "netrw",
    command = "let g:netrw_liststyle = 3"
})

-- lua <-> vim

-- (tabs & indentation)
vim.opt.tabstop = 4 -- 4 spaces for tabs
vim.opt.shiftwidth = 4 -- 4 spaces for indent width
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting new one

-- (line numbering & wrapping) 
vim.opt.relativenumber = true  -- set relative line number
vim.opt.number = true -- indents current line number to the left
vim.opt.linebreak = true-- line breaks if max window width is reached
vim.opt.cursorline = true -- highlights current line
vim.opt.timeoutlen = 200
vim.opt.ttimeoutlen = 1

-- (search settings)
vim.opt.ignorecase = true -- case-insensitive when searching
vim.opt.smartcase = true -- case-sensitive when including casing

-- (colouring)
vim.opt.termguicolors = true
vim.opt.background = "dark" -- switch colour scheme to light or dark using :background light/dark
vim.opt.signcolumn = "yes" -- shift indent
-- keep 8 lines before end of file
vim.opt.scrolloff = 8
-- undo changes in files even after quitting session
vim.opt.undofile = true

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.cmd(":hi statusline guibg=None")

-- block cursor even in insert mode
vim.opt.guicursor = "a:block"

-- (backspacing, clipboard & splitting windows)
vim.opt.backspace = "indent,eol,start"
vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default register
vim.opt.splitright = true -- split vertical window to the right
vim.opt.splitbelow = true -- split horizontal window to the bottom
