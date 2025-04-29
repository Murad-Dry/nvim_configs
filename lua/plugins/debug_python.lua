-- return {
--   -- Other plugins...
--   {
--     "mfussenegger/nvim-dap-python",
--     ft = "python",
--     dependencies = {
--       "mfussenegger/nvim-dap",
--       "rcarriga/nvim-dap-ui",
--     },
--     config = function()
--       require("dap-python").setup("uv") -- Use "uv" as the Python interpreter
--     end,
--   },
--   {"Weissle/persistent-breakpoints.nvim"},
--   { "nvim-neotest/nvim-nio" },
--   -- Other plugins...
-- }
--
return {
  -- DAP core
  {
    "mfussenegger/nvim-dap",
    lazy = true, -- Lazy-load to optimize startup
    config = function()
      -- Optional: Add keymaps for DAP
      local dap = require("dap")
      vim.keymap.set("n", "<C-S-c>", dap.continue, { desc = "DAP: Continue" })
      vim.keymap.set("n", "<C-S-b>", dap.toggle_breakpoint, { desc = "DAP: Toggle Breakpoint" })
      vim.keymap.set("n", "<C-S-s>", dap.step_over, { desc = "DAP: Step Over" })
      vim.keymap.set("n", "<C-S-i>", dap.step_into, { desc = "DAP: Step Into" })
      vim.keymap.set("n", "<C-S-o>", dap.step_out, { desc = "DAP: Step Out" })
    end,
  },
  -- DAP UI
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    lazy = false,
    config = function()
      local dap, dapui = require("dap"), require("dapui")
      dapui.setup() -- Initialize DAP UI with default settings
      -- Automatically open/close UI on DAP events
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
      -- Optional: Keymap to toggle DAP UI
      vim.keymap.set("n", "<C-S-t>", dapui.toggle, { desc = "DAO=P: Toggle DAP UI" })
    end,
  },
  -- Optional: Virtual text for variable values
  {
    "theHamsta/nvim-dap-virtual-text",
    dependencies = { "mfussenegger/nvim-dap" },
    lazy = true,
    config = function()
      require("nvim-dap-virtual-text").setup({})
    end,
  },
  -- Example: Language-specific DAP (e.g., Python)
  {
    "mfussenegger/nvim-dap-python",
    dependencies = { "mfussenegger/nvim-dap" },
    lazy = true,
    config = function()
      require("dap-python").setup("uv") -- Path to debugpy
    end,
  },
}
