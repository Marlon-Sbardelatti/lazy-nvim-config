return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
        lazy = true;
	},
	{
		"nvim-telescope/telescope.nvim",
		-- event = "BufWinEnter",
        lazy = true;
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
		end,

		keys = {
			{ "<leader>pf", "<cmd>lua require('telescope.builtin').find_files()<cr>" },
			{ "<leader>pg", "<cmd>lua require('telescope.builtin').live_grep()<cr>" },
		},
	},
}
