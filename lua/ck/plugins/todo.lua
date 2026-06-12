return {
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            keywords = {
                FIX  = { icon = "F" },
                TODO = { icon = "T" },
                HACK = { icon = "H" },
                NOTE = { icon = "N" },
                WARN = { icon = "W" },
                TEST = { icon = "T" },
            }
        }
    }
}
