return {
    "AckslD/nvim-neoclip.lua",
    lazy = true,
    requires = {
        -- you'll need at least one of these
        -- {'nvim-telescope/telescope.nvim'},
        -- {'ibhagwan/fzf-lua'},
    },
    config = function()
        require('neoclip').setup({
            keys = {
                telescope = {
                    i = {
                        select = '<cr>',
                        paste = '<c-m>',
                        paste_behind = '<c-k>',
                        replay = '<c-q>', -- replay a macro
                        delete = '<c-d>', -- delete an entry
                        edit = '<c-e>',   -- edit an entry
                        custom = {},
                    },
                    n = {
                        select = '<cr>',
                        paste = 'm',
                        --- It is possible to map to more than one key.
                        -- paste = { 'p', '<c-p>' },
                        paste_behind = 'M',
                        replay = 'q',
                        delete = 'd',
                        edit = 'e',
                        custom = {},
                    },
                }
            }
        })
    end,
    -- keys = {
    --     { "<leader>fy", "<cmd>lua require('telescope.builtin').neoclip()<cr>" },
    -- },
}
