return {
	"nvim-lualine/lualine.nvim",
    -- event = "BufWinEnter",
    -- lazy = true,
	config = function()
		require("lualine").setup({
			options = {
				theme = "auto",

			},
		})
	end,
}
