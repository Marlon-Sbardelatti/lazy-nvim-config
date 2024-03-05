return {
	"ThePrimeagen/harpoon",
    -- event = "BufWinEnter",
    lazy = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = true,
	keys = {
		{ "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Mark file with harpoon" },
		{ "<C-f>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Show harpoon marks" },
		{ "<C-m>", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = "Go to next harpoon mark" },
		{ "<C-n>", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "Go to next harpoon mark" },
		{ "<C-e>", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = "Go to next harpoon mark" },
		{ "<C-i>", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = "Go to next harpoon mark" },
	},
}

-- vim.keymap.set("n", "<leader>a", mark.add_file)
-- vim.keymap.set("n", "<C-f>", ui.toggle_quick_menu)
--
-- vim.keymap.set("n", "<C-m>", function() ui.nav_file(1) end)
-- vim.keymap.set("n", "<C-n>", function() ui.nav_file(2) end)
-- vim.keymap.set("n", "<C-e>", function() ui.nav_file(3) end)
-- vim.keymap.set("n", "<C-i>", function() ui.nav_file(4) end)
