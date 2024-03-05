return {
	"nvimtools/none-ls.nvim",
	-- event = "BufWinEnter",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.erb_lint,
				null_ls.builtins.diagnostics.eslint_d,
				-- null_ls.builtins.diagnostics.rubocop,
				-- null_ls.builtins.formatting.rubocop,
			},
		})

		vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
	end,

	keys = {
		{ "<leader>f", "<cmd>lua vim.lsp.buf.format()<CR>", { noremap = true, silent = true } },
	},
}
