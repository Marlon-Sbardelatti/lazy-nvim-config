return {
    {
        "tpope/vim-fugitive",
        -- event = "BufWinEnter",
		config = function()
            vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
		end,

        keys = {
            {"<leader>gs", vim.cmd.Git},
        },
    },
    {
        "lewis6991/gitsigns.nvim",
        event = "BufReadPost",
        config = function()
            require("gitsigns").setup()

            vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
            vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
        end,
    },
}
