-- lua/ck/plugins/colorscheme.lua

-- Load and apply the catppuccin colorscheme with Mocha flavor
return {
    --"uncleTen276/dark_flat.nvim",
    --"kvrohit/mellow.nvim",
    -- "EdenEast/nightfox.nvim",
    -- "HoNamDuong/hybrid.nvim",
    -- "projekt0n/github-nvim-theme",
    -- "slugbyte/lackluster.nvim",
    "ramojus/mellifluous.nvim",

    priority = 1000,  -- Make sure it loads early to apply the theme

    config = function()
        vim.cmd("colorscheme mellifluous")
        -- vim.cmd.colorscheme("lackluster")
        -- vim.cmd('colorscheme github_light')        
        -- vim.cmd("colorscheme catppuccin")
        -- vim.cmd("colorscheme dark_flat")
        -- vim.cmd("colorscheme mellow")
        -- vim.cmd("colorscheme hybrid")
        -- vim.cmd("colorscheme carbonfox")
        -- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1f1f1f" }) -- or a shade you prefer

    end
}
