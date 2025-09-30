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
    {
        "neovim/nvim-lspconfig",
        dependencies = { 'saghen/blink.cmp' },
        lazy = false,
        config = function()
            local capabilities = require('blink.cmp').get_lsp_capabilities()
            -- local capabilities = require("cmp_nvim_lsp").default_capabilities()
            -- local capabilities = vim.lsp.protocol.make_client_capabilities()
            -- capabilities.textDocument.completion.completionItem.snippetSupport = true
            -- capabilities = vim.tbl_deep_extend('force', capabilities, require('blink.cmp').get_lsp_capabilities())
            -- capabilities.offsetEncoding = { 'utf-16' }


            -- define once
            vim.lsp.config("rust_analyzer", {
                capabilities = capabilities,
                diagnostic = {
                    refreshSupport = false,
                },
            })

            vim.lsp.config("html", {
                capabilities = capabilities,
            })

            vim.lsp.config("lua_ls", {
                capabilities = capabilities,
            })

            vim.lsp.config("cssls", {
                capabilities = capabilities,
            })

            vim.lsp.config("biome", {
                capabilities = capabilities,
            })

            vim.lsp.config("cssmodules_ls", {
                capabilities = capabilities,
            })

            vim.lsp.config("eslint", {
                capabilities = capabilities,
            })

            vim.lsp.config("emmet_ls", {
                capabilities = capabilities,
            })

            vim.lsp.config("emmet_language_server", {
                capabilities = capabilities,
            })

            vim.lsp.config("gopls", {
                capabilities = capabilities,
            })

            vim.lsp.config("clangd", {
                capabilities = capabilities,
            })

            vim.lsp.config("pyright", {
                capabilities = capabilities,
            })

            vim.lsp.config("ruff", {
                capabilities = capabilities,
            })
            vim.lsp.config("prettier", {
                capabilities = capabilities,
            })

            -- vim.lsp.config("dartls", {
            --     capabilities = capabilities,
            --     cmd = { "dart", "language-server", "--protocol=lsp" },
            -- })

            vim.lsp.config("sqlls", {
                capabilities = capabilities,
            })

            vim.lsp.config("sqls", {
                capabilities = capabilities,
            })

            vim.lsp.config("docker_compose_language_service", {
                capabilities = capabilities,
            })

            vim.lsp.config("dockerls", {
                capabilities = capabilities,
            })

            vim.lsp.config("angularls", {
                capabilities = capabilities,
            })

            vim.lsp.config("ts_ls", {
                capabilities = capabilities,
            })

            vim.lsp.enable({
                "rust_analyzer",
                "html",
                "lua_ls",
                "cssls",
                "biome",
                "cssmodules_ls",
                "eslint",
                "emmet_ls",
                "emmet_language_server",
                "gopls",
                "clangd",
                "pyright",
                "ruff",
                "prettier",
                "sqlls",
                "sqls",
                "docker_compose_language_service",
                "dockerls",
                "angularls",
                "ts_ls",
            })

            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>cd", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<leader>ts", vim.diagnostic.open_float, {})
            vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, {})

            -- local lspconfig = require("lspconfig")

            --it may brake warning
            -- lspconfig.rust_analyzer.setup({
            --     capabilities = capabilities,
            --     diagnostic = {
            --         refreshSupport = false,
            --     }
            -- })
            --
            -- lspconfig.html.setup({
            --     -- cmd = { "vscode-html-language-server.cmd", "--stdio" },
            --     capabilities = capabilities,
            -- })
            -- lspconfig.lua_ls.setup({
            --     capabilities = capabilities,
            -- })
            -- lspconfig.cssls.setup({
            --     capabilities = capabilities,
            -- })
            -- lspconfig.biome.setup({
            --     capabilities = capabilities,
            -- })
            -- lspconfig.cssmodules_ls.setup({
            --     capabilities = capabilities,
            -- })
            -- lspconfig.eslint.setup({
            --     capabilities = capabilities,
            -- })
            -- lspconfig.emmet_ls.setup({
            --     capabilities = capabilities,
            -- })
            -- lspconfig.emmet_language_server.setup({
            --     capabilities = capabilities,
            -- })
            -- lspconfig.gopls.setup({
            --     capabilities = capabilities,
            -- })
            -- lspconfig.clangd.setup({
            --     capabilities = capabilities,
            -- })
            -- -- python working
            -- lspconfig.pyright.setup({
            --     capabilities = capabilities,
            -- })
            -- lspconfig.ruff.setup({
            --     capabilities = capabilities,
            -- })

            -- -- lspconfig.dartls.setup({
            -- --     capabilities = capabilities,
            -- --     cmd = { "dart", "language-server", "--protocol=lsp" },
            -- -- })
            -- lspconfig.sqlls.setup({
            --     capabilities = capabilities,
            -- })
            -- lspconfig.sqls.setup({
            --     capabilities = capabilities,
            -- })
            -- lspconfig.docker_compose_language_service.setup({
            --     capabilities = capabilities,
            -- })
            -- lspconfig.dockerls.setup({
            --     capabilities = capabilities,
            -- })
            -- lspconfig.angularls.setup({
            --     capabilities = capabilities,
            -- })
            -- lspconfig.ts_ls.setup({
            --     capabilities = capabilities,
            -- })
            --
            --
            -- lspconfig.java_language_server.setup({
            -- 	capabilities = capabilities,
            -- })
            -- lspconfig.jdtls.setup({
            --     capabilities = capabilities,
            -- })
            -- lspconfig.angularls.setup({
            --     capabilities = capabilities,
            -- })
            -- lspconfig.ts_ls.setup({
            --     capabilities = capabilities,
            -- })

            -- lspconfig.pylsp.setup({
            --     capabilities = capabilities,
            -- })
            -- lspconfig.jedi_language_server.setup({
            --     capabilities = capabilities,
            -- })


            -- lspconfig.basedpyright.setup({
            --     capabilities = capabilities,
            --     handlers = { -- Remove diagnostics, because there's too much
            --         ["textDocument/publishDiagnostics"] = function() end,
            --     },
            -- })

            -- lspconfig.pbls.setup({
            --     capabilities = capabilities,
            -- })
        end,
    },
}
