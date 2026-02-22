vim.g.mapleader = " "

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Equal splits" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close split" })

-- tab management
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>")
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>")
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>")
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>")
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>")

-- move between splits with Shift+hjkl (no conflict with tmux)
vim.keymap.set("n", "H", "<C-w>h", { desc = "Left split" })
vim.keymap.set("n", "J", "<C-w>j", { desc = "Down split" })
vim.keymap.set("n", "K", "<C-w>k", { desc = "Up split" })
vim.keymap.set("n", "L", "<C-w>l", { desc = "Right split" })
