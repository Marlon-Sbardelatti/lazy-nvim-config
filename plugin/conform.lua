vim.pack.add({
	"https://github.com/stevearc/conform.nvim",
})

local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		python = { "ruff_format" },
		lua = { "stylua" },
		javascript = { "biome", "prettier", stop_after_first = true },
		javascriptreact = { "biome", "prettier", stop_after_first = true },
		typescript = { "biome", "prettier", stop_after_first = true },
		typescriptreact = { "biome", "prettier", stop_after_first = true },
		json = { "biome", "prettier", stop_after_first = true },
		jsonc = { "biome", "prettier", stop_after_first = true },
		css = { "biome", "prettier", stop_after_first = true },
		html = { "prettier" },
	},
	default_format_opts = {
		lsp_format = "fallback",
	},
})

vim.keymap.set("n", "<leader>f", function()
	conform.format({ async = true })
end, { desc = "Format buffer" })
