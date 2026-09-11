vim.pack.add({"https://github.com/rachartier/tiny-cmdline.nvim"})

require("vim._core.ui2").enable({})

vim.o.cmdheight = 0

local cmdline = require("tiny-cmdline")

cmdline.setup({
    on_reposition = cmdline.adapters.blink,
    width = {
        value = "70%",
    }
})
