vim.pack.add({
  {
    src = "https://github.com/fredrikaverpil/godoc.nvim",
    -- Follow any tagged release. Omit `version` to track the default
    -- branch (every commit, not just releases).
    version = vim.version.range("*"),
  },

  { src = "https://github.com/ibhagwan/fzf-lua" },
})
