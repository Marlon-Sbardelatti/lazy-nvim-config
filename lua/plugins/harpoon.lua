 -- return {
 -- 	"ThePrimeagen/harpoon",
 --     -- event = "BufWinEnter",
 --     lazy = true,
 -- 	dependencies = {
 -- 		"nvim-lua/plenary.nvim",
 -- 	},
 -- 	config = true,
 -- 	keys = {
 -- 		{ "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Mark file with harpoon" },
 -- 		{ "<C-f>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Show harpoon marks" },
 -- 		{ "<C-m>", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = "Go to next harpoon mark" },
 -- 		{ "<C-n>", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "Go to next harpoon mark" },
 -- 		{ "<C-e>", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = "Go to next harpoon mark" },
 -- 		{ "<C-i>", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = "Go to next harpoon mark" },
 -- 	},
 -- }

 -- -- vim.keymap.set("n", "<leader>a", mark.add_file)
 -- -- vim.keymap.set("n", "<C-f>", ui.toggle_quick_menu)

 -- -- vim.keymap.set("n", "<C-m>", function() ui.nav_file(1) end)
 -- -- vim.keymap.set("n", "<C-n>", function() ui.nav_file(2) end)
 -- -- vim.keymap.set("n", "<C-e>", function() ui.nav_file(3) end)
 -- -- vim.keymap.set("n", "<C-i>", function() ui.nav_file(4) end)

return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		opts = {
			menu = {
				width = vim.api.nvim_win_get_width(0) - 4,
			},
			settings = {
				save_on_toggle = true,
			},
		},
		keys = function()
			local keys = {
				{
					"<leader>a",
					function()
						require("harpoon"):list():add()
					end,
					desc = "Harpoon File",
				},
				{
					"<C-f>",
					function()
						local harpoon = require("harpoon")
						harpoon.ui:toggle_quick_menu(harpoon:list())
					end,
					desc = "Harpoon Quick Menu",
				},
				{
					"<C-m>",
					function()
						require("harpoon"):list():select(1)
					end,
					desc = "Go to next harpoon mark",
				},

				{
					"<C-n>",
					function()
						require("harpoon"):list():select(2)
					end,
					desc = "Go to next harpoon mark",
				},
				{
					"<C-e>",
					function()
						require("harpoon"):list():select(3)
					end,
					desc = "Go to next harpoon mark",
				},
				{
					"<C-i>",
					function()
						require("harpoon"):list():select(4)
					end,
					desc = "Go to next harpoon mark",
				},
			}

			-- for i = 1, 5 do
			--     table.insert(keys, {
			--         "<leader>" .. i,
			--         function()
			--             require("harpoon"):list():select(i)
			--         end,
			--         desc = "Harpoon to File " .. i,
			--     })
			-- end
			return keys
		end,
	},
}
