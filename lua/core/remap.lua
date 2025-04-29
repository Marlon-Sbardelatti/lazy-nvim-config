vim.g.mapleader = " "
--vim.keymap.set("n", "<leader>tr", vim.cmd.Ex

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-s>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "n", "nzzzv")


-- vim.keymap.set("i", "<C-y>", "<CR>")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").startvimwithme()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").stopvimwithme()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dp]])

-- next greatest remap ever : asbjornhaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>y", [["+y]])

vim.keymap.set("n", "<leader>z", '"zyy')
vim.keymap.set("v", "<leader>z", '"zy')

vim.keymap.set("n", "<leader>Z", '"zp')

vim.keymap.set("n", "<leader>np", 'o<esc>p')

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- this is going to get me cancelled
vim.keymap.set("i", "<c-c>", "<esc>")

-- vim.keymap.set("n", "Q", "<nop>")
-- vim.keymap.set("n", "<leader>ts", "<cmd>!tmux new tmux-sessionizer<cr>")
vim.keymap.set("n", "<leader>TS", "<cmd>silent !tmux neww tmux-sessionizer.sh<cr>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- vim.keymap.set("n", "<c-k>", "<cmd>cnext<cr>zz")
-- vim.keymap.set("n", "<c-j>", "<cmd>cprev<cr>zz")
vim.keymap.set("n", "<leader>j", "<cmd>cnext<cr>zz")
vim.keymap.set("n", "<leader>k", "<cmd>cprev<cr>zz")

vim.keymap.set("n", "<leader>st", [[:%s/\<<c-r><c-w>\>/<c-r><c-w>/gi<left><left><left>]])
vim.keymap.set("n", "<leader>sg", [[:%s/]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<cr>", { silent = true })

-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/hetzwga/packer.lua<cr>");
-- vim.keymap.set("n", "<leader>mr", "<cmd>cellularautomaton make_it_rain<cr>");

-- vim.keymap.set("n", "<leader><leader>", function()
--     vim.cmd("so")
-- end)

vim.keymap.set("n", "<leader>vs", function()
    vim.cmd("vsplit")
end)

vim.keymap.set("n", "<leader>hs", function()
    vim.cmd("split")
end)
-- vim.keymap.set("n", "<leader>dy", function()
-- 	vim.cmd("Copilot enable")
-- end)
-- vim.keymap.set("n", "<leader>d;", function()
-- 	vim.cmd("Copilot disable")
-- end)
--

vim.keymap.set("n", "<leader>tr", "<CMD>Oil<CR>", { desc = "Open parent directory" })
-- vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

vim.keymap.set("n", "<leader>ta", function()
    vim.cmd("TransparentToggle")
end)

-- vim.keymap.set("n", "<leader>ta", function()
-- 	vim.cmd("TransparentToggle")
-- end)

-- vim.keymap.set("n", "<leader>yf", function()
-- 	vim.cmd("Telescope neoclip")
-- end)

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

-- jargo/java
vim.api.nvim_create_autocmd("FileType", {
    pattern = "java",
    callback = function(event)
        vim.keymap.set("n", "<leader>jr", ":T jargo run<CR>")
        vim.keymap.set("n", "<leader>tc", ":Tclose!<CR>")
    end,
})

-- rust
vim.api.nvim_create_autocmd("FileType", {
    pattern = "rust",
    callback = function(event)
        vim.keymap.set("n", "<leader>jr", ":T cargo run<CR>")
        vim.keymap.set("n", "<leader>tc", ":Tclose!<CR>")
    end,
})

vim.g.ftplugin_sql_omni_key = '<C-j>'

-- sql command to run current sql file in mariadb
vim.api.nvim_create_user_command('RunSQL', function()
    local file = vim.fn.expand('%')
    local db = vim.fn.input('database name: ')
    local password = vim.fn.inputsecret('sudo password: ')
    local cmd = string.format("echo '%s' | sudo -S mariadb --table %s < %s", password, db, file)

    -- Create a new empty buffer in the current window
    vim.cmd('enew') -- creates a new buffer
    vim.bo.buftype = 'nofile'
    vim.bo.bufhidden = 'wipe'
    vim.bo.swapfile = false
    vim.bo.filetype = 'sql' -- or 'mysql' if you have syntax for that
    vim.api.nvim_buf_set_name(0, '[SQL Output]')

    -- Capture output
    vim.fn.jobstart(cmd, {
        stdout_buffered = true,
        stderr_buffered = true,
        on_stdout = function(_, data)
            if data then
                vim.api.nvim_buf_set_lines(0, -1, -1, false, data)
            end
        end,
        on_stderr = function(_, data)
            if data then
                vim.api.nvim_buf_set_lines(0, -1, -1, false, data)
            end
        end,
        on_exit = function(_, code)
            vim.api.nvim_buf_set_lines(0, -1, -1, false, { "", "-- Process exited with code: " .. code })
        end
    })
end, {})

vim.keymap.set("n", "<leader>rs", ":RunSQL<CR>")
vim.keymap.set("n", "<leader>db", ":DBUI<cr>")
