return {
    'ggandor/leap.nvim',
    event = "VeryLazy",
    config = function()
        local leap = require('leap')
        leap.add_default_mappings()
        leap.opts.safe_labels = {}
    end
}

