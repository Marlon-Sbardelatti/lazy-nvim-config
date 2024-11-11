return {
    { "mellow-theme/mellow.nvim" },
    { "sho-87/kanagawa-paper.nvim" },
    {"sainnhe/gruvbox-material"},
    { "ribru17/bamboo.nvim" },
    { "ramojus/mellifluous.nvim" },
    { 'yorumicolors/yorumi.nvim' },
    { "rebelot/kanagawa.nvim" },
    {
        "cdmill/neomodern.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("neomodern").setup({
                -- optional configuration here
                ui = {
                    -- telescope = "borderless",
                    plain_float = true,
                },
                colors = {
                    bg = "#141414",
                    float = "#1c1c1c",
                    -- func = "#306"

                },
                plugin = {
                    telescope = "borderless",
                }
            })

            require("neomodern").load()
            vim.cmd.colorscheme("neomodern")
        end,
    },
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
        config = function(_, opts)
            require("cyberdream").setup({
                -- Enable transparent background
                transparent = false,
                italic_comments = false,
                hide_fillchars = false,
                borderless_telescope = false,
                terminal_colors = true,

                -- theme = {
                --     variant = "default",
                --     highlights = {
                --         Comment = { fg = "#696969", bg = "NONE", italic = false },
                --     },


                -- },
                extensions = {
                    telescope = true,
                    notify = true,
                    mini = true,
                },
            })
        end,
    },
    {
        "eldritch-theme/eldritch.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function(_, opts)
            require("eldritch").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                transparent = false,    -- Enable this to disable setting the background color
                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = { italic = false },
                    keywords = { italic = false },
                    functions = {},
                    variables = {},
                    -- Background styles. Can be "dark", "transparent" or "normal"
                    sidebars = "dark",            -- style for sidebars, see below
                    floats = "dark",              -- style for floating windows
                },
                sidebars = { "qf", "help" },      -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
                hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
                dim_inactive = false,             -- dims inactive windows, transparent must be false for this to work
                lualine_bold = true,              -- When `true`, section headers in the lualine theme will be bold

                --- You can override specific color groups to use other groups or a hex color
                --- function will be called with a ColorScheme table
                ---@param colors ColorScheme
                on_colors = function(colors) end,

                --- You can override specific highlights to use other groups or a hex color
                --- function will be called with a Highlights and ColorScheme table
                ---@param highlights Highlights
                ---@param colors ColorScheme
                on_highlights = function(highlights, colors) end,
            })
        end
    },
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
        config = function(_, opts)
            require("rose-pine").setup({
                variant = "auto",      -- auto, main, moon, or dawn
                dark_variant = "main", -- main, moon, or dawn
                dim_inactive_windows = false,
                extend_background_behind_borders = true,

                enable = {
                    terminal = true,
                    legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
                    migrations = true,        -- Handle deprecated options automatically
                },

                styles = {
                    bold = true,
                    italic = false,
                    transparency = true,
                },
                highlight_groups = {
                    DiagnosticUnderlineError = { underline = true, undercurl = false },
                    DiagnosticUnderlineHint = { underline = true, undercurl = false },
                    DiagnosticUnderlineInfo = { underline = true, undercurl = false },
                    DiagnosticUnderlineWarn = { underline = true, undercurl = false },
                    SpellBad = { underline = true, undercurl = false },
                    SpellCap = { underline = true, undercurl = false },
                    SpellLocal = { underline = true, undercurl = false },
                    SpellRare = { underline = true, undercurl = false },
                }

            })

            -- vim.cmd("colorscheme rose-pine")
            -- vim.cmd("colorscheme rose-pine-main")
            -- vim.cmd("colorscheme rose-pine-moon")
            -- vim.cmd("colorscheme rose-pine-dawn")
        end,
    },
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
                    colors.bg = "#141414"
                    colors.bg_float = "none"
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
        -- config = function()
        --     vim.cmd.colorscheme("catppuccin")
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
