return {
    -- { 'ellisonleao/gruvbox.nvim' },
    { "shrikecode/kyotonight.vim" },
    { "hachy/eva01.vim" },
    { "bluz71/vim-moonfly-colors" },
    {
        "olimorris/onedarkpro.nvim",
        name = "one",
        -- config = function()
        --     vim.cmd.colorscheme("onedark_dark")
        -- end,
    },
    {
        "rose-pine/neovim",
    },
    -- {
    --     'navarasu/onedark.nvim',
    --     name = "onedark",
    --     opts = {
    --         style = 'warmer',
    --     },
    --     -- config = function()
    --     --     vim.cmd.colorscheme("onedark")
    --     -- end,
    -- },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            style = "night",
            styles = {
                functions = {},
            },
            sidebars = { "qf", "vista_kind", "terminal", "packer" },
        },
        config = function(_, opts)
            require("tokyonight").setup({
                style = "night",
                styles = {
                    functions = {},
                },
                sidebars = { "qf", "vista_kind", "terminal", "packer" },
                on_colors = function(colors)
                    colors.bg = "#11121d"
                    colors.bg_float = "#11121d"
                    colors.fg_dark = "#A0A8CD"
                end,
            })
            -- vim.cmd.colorscheme("tokyonight-night")
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        opts = {
            transparent = true,
        },
        config = function()
        	vim.cmd.colorscheme("catppuccin")
        end,
    },
    {
        "tiagovla/tokyodark.nvim",
        lazy = false,
        name = "tokyodark",
        priority = 1000,
        opts = {
            transparent = true,
        },
        -- config = function()
        --     vim.cmd.colorscheme("tokyodark")
        -- end,
    },
    {
        "Shatur/neovim-ayu",
        lazy = false,
        name = "ayu",
        priority = 1000,
        opts = {
            transparent = true,
        },
        -- config = function()
        --     vim.cmd.colorscheme("ayu")
        -- end,
    },
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            transparent = true
        },
    },
    {
        "arturgoms/moonbow.nvim",
        lazy = false,
        name = "moonbow",
        priority = 1000,
        opts = {
            transparent = true,
            terminal_colors = true,
        },
        -- config = function()
        --     vim.cmd.colorscheme("moonbow")
        -- end,
    },

    { "diegoulloao/neofusion.nvim" },
}
