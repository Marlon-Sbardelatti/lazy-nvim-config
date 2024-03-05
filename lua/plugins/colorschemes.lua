return {
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
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
	{ "EdenEast/nightfox.nvim" },
	{ "rebelot/kanagawa.nvim" },
	{ "Mofiqul/dracula.nvim" },
}
