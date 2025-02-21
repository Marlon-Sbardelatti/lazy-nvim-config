return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
        },
    },
    -- {
    --     "mfussenegger/nvim-jdtls",
    --     dependencies = {
    --         "mfussenegger/nvim-dap",
    --     }
    -- },

    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")
            --it may brake warning
            lspconfig.rust_analyzer.setup({
                capabilities = capabilities,
                diagnostic = {
                    refreshSupport = false,
                }
            })
            lspconfig.html.setup({
                -- cmd = { "vscode-html-language-server.cmd", "--stdio" },
                capabilities = capabilities,
            })
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            -- lspconfig.java_language_server.setup({
            -- 	capabilities = capabilities,
            -- })
            -- lspconfig.jdtls.setup({
            --     capabilities = capabilities,
            -- })
            lspconfig.cssls.setup({
                capabilities = capabilities,
            })
            lspconfig.biome.setup({
                capabilities = capabilities,
            })
            lspconfig.cssmodules_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.eslint.setup({
                capabilities = capabilities,
            })
            lspconfig.emmet_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.emmet_language_server.setup({
                capabilities = capabilities,
            })
            -- lspconfig.angularls.setup({
            --     capabilities = capabilities,
            -- })
            lspconfig.gopls.setup({
                capabilities = capabilities,
            })
            -- lspconfig.ts_ls.setup({
            --     capabilities = capabilities,
            -- })
            lspconfig.pyright.setup({
                capabilities = capabilities,
            })
            require('lspconfig').ruff.setup({
                init_options = {
                    settings = {
                        capabilities = capabilities,
                        -- Server settings should go here
                    }
                }
            })

            -- lspconfig.pylsp.setup({
            --     capabilities = capabilities,
            -- })
            -- lspconfig.jedi_language_server.setup({
            --     capabilities = capabilities,
            -- })
            lspconfig.basedpyright.setup({
                capabilities = capabilities,
                handlers = { -- Remove diagnostics, because there's too much
                    ["textDocument/publishDiagnostics"] = function() end,
                },
            })
            lspconfig.dartls.setup({
                capabilities = capabilities,
                cmd = { "dart", "language-server", "--protocol=lsp" },
            })
            lspconfig.pbls.setup({
                capabilities = capabilities,
            })

            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<leader>ts", vim.diagnostic.open_float, {})
            vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, {})
        end,
    },
}
