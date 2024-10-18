return {
    {
        "nvim-telescope/telescope-ui-select.nvim",
        lazy = true,
    },
    {
        "nvim-telescope/telescope.nvim",
        -- event = "BufWinEnter",
        lazy = true,
        tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope").setup({
                defaults = {
                    -- border = false
                },
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({
                            -- border = false
                        }),
                    },
                },
            })
            -- local builtin = require("telescope.builtin")
            -- vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
            -- vim.keymap.set("n", "<leader>pg", builtin.live_grep, {})

            require("telescope").load_extension("ui-select")
            require("telescope").load_extension("flutter")

             -- Set darker colors for Telescope
            -- vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = '#1e1e1e', fg = '#ffffff' })  -- Normal background and text
            -- vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = '#1e1e1e', fg = '#444444' })  -- Border color
            -- vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = '#1e1e1e', fg = '#ffffff' })  -- Prompt area
            -- vim.api.nvim_set_hl(0, "TelescopePromptTitle", { bg = '#3c3c3c', fg = '#ffcc00' })  -- Prompt title
            -- vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { bg = '#3c3c3c', fg = '#ffcc00' })  -- Preview title
            -- vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { bg = '#3c3c3c', fg = '#ffcc00' })  -- Results title
        end,

        keys = {
            { "<leader>yf", "<cmd>Telescope neoclip<cr>" },
            { "<leader>pf", "<cmd>lua require('telescope.builtin').find_files()<cr>" },
            { "<leader>pg", "<cmd>lua require('telescope.builtin').live_grep()<cr>" },
            { "<leader>of", "<cmd>lua require('telescope.builtin').oldfiles()<cr>" },
            { "<leader>ch", "<cmd>lua require('telescope.builtin').command_history()<cr>" },
            { "<leader>cs", "<cmd>lua require('telescope.builtin').colorscheme()<cr>" },
            { "<leader>bf", "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>" },
            { "<leader>lf", "<cmd> lua require('telescope.builtin').lsp_document_symbols({ symbols = 'Function' })<cr>" },
            -- { "<leader>lf", "<cmd> lua require('telescope.builtin').lsp_document_symbols()<cr>" },
            -- { "<leader>lf", "<cmd> lua require('telescope.builtin').lsp_document_symbols({ignore_symbols = "array"})<cr>" },
        },
    },
}
