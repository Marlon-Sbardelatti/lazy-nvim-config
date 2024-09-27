return {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    -- lazy = true,
    config = function()
        require("lualine").setup({
            options = {
                theme = "auto",
            },
        })
    end,
}
