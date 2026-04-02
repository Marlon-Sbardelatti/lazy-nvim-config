return {
    "mfussenegger/nvim-dap",
    keys = {
        { "<leader>dt", function() require("dap").toggle_breakpoint() end },
        { "<F1>", function() require("dap").continue() end },
        { "<F2>", function() require("dap").step_into() end },
        { "<F3>", function() require("dap").step_over() end },
        { "<F4>", function() require("dap").step_out() end },
        { "<F5>", function() require("dap").step_back() end },
        { "<F12>", function() require("dap").restart() end },
    },
    dependencies = {
        {
            "rcarriga/nvim-dap-ui",
            dependencies = { "nvim-neotest/nvim-nio" },
        },
        "leoluz/nvim-dap-go",
        "mfussenegger/nvim-dap-python"
    },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")

        dapui.setup()
        require("dap-go").setup()
        require("dap-python").setup("uv")

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end
    end,
}
