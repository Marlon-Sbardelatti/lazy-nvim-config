return {
    {
        "onsails/lspkind.nvim",
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "saadparwaiz1/cmp_luasnip",
        },
    },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require("cmp")
            require("luasnip.loaders.from_vscode").lazy_load()
            local lspkind = require("lspkind")
            cmp.setup({
                formatting = {
                    format = lspkind.cmp_format({
                        menu = ({
                            buffer = "[Buffer]",
                            nvim_lsp = "[LSP]",
                            luasnip = "[LuaSnip]",
                            nvim_lua = "[Lua]",
                            latex_symbols = "[Latex]",
                        }),
                        mode = "symbol_text", -- show only symbol annotations
                        maxwidth = 50,        -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
                        -- can also be a function to dynamically calculate max width such as
                        -- maxwidth = function() return math.floor(0.45 * vim.o.columns) end,
                        ellipsis_char = "...",    -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
                        show_labelDetails = true, -- show labelDetails in menu. Disabled by default

                        -- The function below will be called before any actual modifications from lspkind
                        -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
                        before = function(entry, vim_item)
                            return vim_item
                        end,
                    }),
                },
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "luasnip" }, -- For luasnip users.
                }, {
                    { name = "buffer" },
                }),
            })
        end,
    },
    {
        { "saadparwaiz1/cmp_luasnip" },
    },
    {
        { "hrsh7th/cmp-nvim-lua" },
    },
    {
        { "hrsh7th/cmp-nvim-lsp" },
    },
    {
        { "hrsh7th/cmp-buffer" },
    },
    {
        { "rafamadriz/friendly-snippets" },
    },
    {
        { "hrsh7th/cmp-path" },
    },
    {
        { "hrsh7th/cmp-nvim-lsp" },
    },
    {
        "github/copilot.vim",
        keys = {
            { "<leader>ce", "<cmd>Copilot enable<cr>" },
            { "<leader>d;", "<cmd>Copilot disable<cr>" },
            -- { "<leader>lf", "<cmd> lua require('telescope.builtin').lsp_document_symbols({ symbols = 'Function' })<cr>" },
        },
    },
}
