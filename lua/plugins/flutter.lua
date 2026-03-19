return {
  "akinsho/flutter-tools.nvim",
  ft = "dart",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim",
  },
  config = function()
    vim.keymap.set("n", "<leader>FS", ":FlutterRun<CR>", {})
    vim.keymap.set("n", "<leader>FQ", ":FlutterQuit<CR>", {})
    vim.keymap.set("n", "<leader>FR", ":FlutterRestart<CR>", {})
    vim.keymap.set("n", "<leader>LR", ":FlutterLspRestart<CR>", {})
    vim.keymap.set("n", "<leader>FD", ":FlutterDevTools<CR>", {})

    require("flutter-tools").setup({
      decorations = {
        statusline = {
          app_version = true,
          device = true,
        },
      },
      dev_tools = {
        autostart = true,
        auto_open_browser = true,
      },
      lsp = {
        color = {
          enabled = true,
        },
      },
    })
  end,
}

