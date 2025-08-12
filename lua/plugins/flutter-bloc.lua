return {
  'wa11breaker/flutter-bloc.nvim',
  dependencies = {
      "nvimtools/none-ls.nvim", -- Required for code actions
  },
  opts = {
    bloc_type = 'equatable', -- Choose from: 'default', 'equatable', 'freezed'
    use_sealed_classes = true,
    enable_code_actions = true,
  }
}
