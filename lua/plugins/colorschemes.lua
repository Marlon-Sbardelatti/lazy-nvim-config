return {
    {
        "Marlon-Sbardelatti/zuca-nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("neomodern").setup({
                on_highlights = function(highlights, colors)
                    -- Colors for Snacks pickers
                    highlights.SnacksPickerBoxTitle = { bg = '#1c99f2', fg = '#ffffff', bold = true }
                    highlights.SnacksPickerInput = { bg = '#23273b', fg = '#C0CAF5' }
                    highlights.SnacksPickerInputBorder = { bg = '#23273b', fg = '#23273b' }
                    highlights.SnacksPickerInputTitle = { bg = '#1c99f2', fg = '#ffffff', bold = true }
                    highlights.SnacksPickerList = { bg = '#262e46' }
                    highlights.SnacksPickerListBorder = { bg = '#262e46', fg = '#23273b' }
                    highlights.SnacksPickerListCursorLine = { bg = '#1a1d2f' }
                    highlights.SnacksPickerPreviewBorder = { bg = '#16161E', fg = '#23273b' }
                    highlights.SnacksPickerPrompt = { bg = '#23273b', fg = '#1c99f2' }
                end,
            })

            require("neomodern").load()
            vim.cmd.colorscheme("roseprime")
        end,
    },
    -- { "ramojus/mellifluous.nvim" },
    -- {"kdheepak/monochrome.nvim"},
    -- {
    --     "dgox16/oldworld.nvim",

    --     -- config = function()
    --     --     vim.cmd.colorscheme("oldworld")
    --     -- end
    -- },
    -- { "mellow-theme/mellow.nvim" },
    -- { "bluz71/vim-moonfly-colors" },
    -- { "slugbyte/lackluster.nvim" },
    -- { "rebelot/kanagawa.nvim" },
    -- { 'projekt0n/github-nvim-theme', name = 'github-theme' },
    -- {
    --     "vague2k/vague.nvim"
    -- },
    -- {
    --     "webhooked/kanso.nvim",
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         require("kanso").setup({
    --             italics = false
    --         })
    --         -- vim.cmd.colorscheme("kanso-zen")
    --     end
    -- },
    -- {
    --     "ramojus/mellifluous.nvim",
    -- },
    -- {
    --     "olimorris/onedarkpro.nvim",
    --     name = "one",
    --     -- config = function()
    --     --     vim.cmd.colorscheme("onedark_dark")
    --     -- end,
    -- },
    -- {
    --     "rose-pine/neovim",
    --     config = function(_, opts)
    --         require("rose-pine").setup({
    --             variant = "auto",      -- auto, main, moon, or dawn
    --             dark_variant = "main", -- main, moon, or dawn
    --             dim_inactive_windows = false,
    --             extend_background_behind_borders = true,

    --             enable = {
    --                 terminal = true,
    --                 legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
    --                 migrations = true,        -- Handle deprecated options automatically
    --             },

    --             styles = {
    --                 bold = true,
    --                 italic = false,
    --                 transparency = true,
    --             },
    --             highlight_groups = {
    --                 DiagnosticUnderlineError = { underline = true, undercurl = false },
    --                 DiagnosticUnderlineHint = { underline = true, undercurl = false },
    --                 DiagnosticUnderlineInfo = { underline = true, undercurl = false },
    --                 DiagnosticUnderlineWarn = { underline = true, undercurl = false },
    --                 SpellBad = { underline = true, undercurl = false },
    --                 SpellCap = { underline = true, undercurl = false },
    --                 SpellLocal = { underline = true, undercurl = false },
    --                 SpellRare = { underline = true, undercurl = false },
    --             }

    --         })

    --         -- vim.cmd("colorscheme rose-pine")
    --         -- vim.cmd("colorscheme rose-pine-main")
    --         -- vim.cmd("colorscheme rose-pine-moon")
    --         -- vim.cmd("colorscheme rose-pine-dawn")
    --     end,
    -- },
    -- {
    --     "folke/tokyonight.nvim",
    --     lazy = false,
    --     priority = 1000,
    --     opts = {
    --         style = "night",
    --         styles = {
    --             functions = {},
    --         },
    --         sidebars = { "qf", "vista_kind", "terminal", "packer" },
    --     },
    --     config = function(_, opts)
    --         require("tokyonight").setup({
    --             style = "night",
    --             on_highlights = function(highlights, colors)
    --                 -- Colors for Snacks pickers
    --                 highlights.SnacksPickerBoxTitle = { bg = '#1c99f2', fg = '#ffffff', bold = true }
    --                 highlights.SnacksPickerInput = { bg = '#23273b', fg = '#C0CAF5' }
    --                 highlights.SnacksPickerInputBorder = { bg = '#23273b', fg = '#23273b' }
    --                 highlights.SnacksPickerInputTitle = { bg = '#1c99f2', fg = '#ffffff', bold = true }
    --                 highlights.SnacksPickerList = { bg = '#262e46' }
    --                 highlights.SnacksPickerListBorder = { bg = '#262e46', fg = '#23273b' }
    --                 highlights.SnacksPickerListCursorLine = { bg = '#1a1d2f' }
    --                 highlights.SnacksPickerPreviewBorder = { bg = '#16161E', fg = '#23273b' }
    --                 highlights.SnacksPickerPrompt = { bg = '#23273b', fg = '#1c99f2' }
    --             end,
    --             styles = {
    --                 functions = {},
    --             },
    --             sidebars = { "qf", "vista_kind", "terminal", "packer" },
    --             on_colors = function(colors)
    --                 colors.bg = "#141414"
    --                 colors.bg_float = "none"
    --                 colors.fg_dark = "#A0A8CD"
    --             end,
    --         })
    --         -- vim.cmd.colorscheme("tokyonight-night")
    --     end,
    -- },
    -- {
    --     "catppuccin/nvim",
    --     name = "catppuccin",
    --     opts = {
    --         transparent = true,
    --     },
    --     -- config = function()
    --     --     vim.cmd.colorscheme("catppuccin")
    --     -- end,
    -- },
}
