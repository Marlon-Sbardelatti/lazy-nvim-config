vim.g.mapleader = " "
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-s>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "n", "nzzzv")


vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").startvimwithme()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").stopvimwithme()
end)

vim.keymap.set("x", "<leader>p", [["_dp]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>y", [["+y]])

vim.keymap.set("n", "<leader>z", '"zyy')
vim.keymap.set("v", "<leader>z", '"zy')

vim.keymap.set("n", "<leader>Z", '"zp')

vim.keymap.set("n", "<leader>np", 'o<esc>p')

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("i", "<c-c>", "<esc>")

vim.keymap.set("n", "<leader>TS", "<cmd>silent !tmux neww tmux-sessionizer.sh<cr>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>j", "<cmd>cnext<cr>zz")
vim.keymap.set("n", "<leader>k", "<cmd>cprev<cr>zz")

vim.keymap.set("n", "<leader>st", [[:%s/\<<c-r><c-w>\>/<c-r><c-w>/gi<left><left><left>]])
vim.keymap.set("n", "<leader>sg", [[:%s/]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<cr>", { silent = true })

vim.keymap.set("n", "<leader>vs", function()
    vim.cmd("vsplit")
end)

vim.keymap.set("n", "<leader>hs", function()
    vim.cmd("split")
end)

vim.keymap.set("n", "<leader>tr", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.keymap.set("n", "<leader>ta", function()
    vim.cmd("TransparentToggle")
end)

vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
})

vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<leader>cp", ":CccPick<CR>")
