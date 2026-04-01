return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = false,
        config = function()
            vim.opt.termguicolors = true

            local ft_to_parser = {
                typescriptreact = "tsx",
                javascriptreact = "tsx",
                cs = "c_sharp",
                sh = "bash",
            }

            vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
                callback = function(args)
                    local ft = vim.bo[args.buf].filetype
                    if ft == "" then return end

                    local parser = ft_to_parser[ft] or ft

                    pcall(vim.cmd, "TSInstall " .. parser)

                    pcall(vim.treesitter.start, args.buf)
                end,
            })
        end,
    },
}
