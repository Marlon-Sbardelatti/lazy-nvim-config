return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
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
	{
		"Shatur/neovim-ayu",
	},
	{
		"Mofiqul/dracula.nvim",
	},
}
