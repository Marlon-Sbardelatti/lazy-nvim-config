vim.pack.add({
	"https://github.com/nvimtools/none-ls.nvim",
})

local null_ls = require("null-ls")
null_ls.setup({
	sources = {
		null_ls.builtins.diagnostics.erb_lint,
		null_ls.builtins.diagnostics.kube_linter,
		null_ls.builtins.completion.spell.with({
			filetypes = { "text", "markdown", "gitcommit" },
		}),
	},
})
