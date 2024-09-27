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
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            -- local builtin = require("telescope.builtin")
            -- vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
            -- vim.keymap.set("n", "<leader>pg", builtin.live_grep, {})

            require("telescope").load_extension("ui-select")
            require("telescope").load_extension("flutter")
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
