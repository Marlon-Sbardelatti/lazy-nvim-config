return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        "luisiacc/gruvbox-baby",
        name = "gruvbox-baby"
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        opts = {
            transparent = true,
        },
        -- config = function()
        -- 	vim.cmd.colorscheme("catppuccin")
        -- end,
    },
    {
        "tiagovla/tokyodark.nvim",
        lazy = false,
        name = "tokyodark",
        priority = 1000,
        opts = {
            transparent = true,
        },
        config = function()
            vim.cmd.colorscheme("tokyodark")
        end,
    },
    {
        "craftzdog/solarized-osaka.nvim",
        opts = {
            transparent = false,
        },
    },
}
