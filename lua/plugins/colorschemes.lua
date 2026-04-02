return {
    {
        "Marlon-Sbardelatti/zuca-nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("neomodern").setup({
            })

            require("neomodern").load()
            vim.cmd.colorscheme("roseprime")
        end,
    },
}
