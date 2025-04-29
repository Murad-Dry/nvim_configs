require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

--Diffview
-- map("n", "<leader>do", "<cmd> DiffviewOpen <cr>", {desc = "Diffview Open"})
-- map("n", "<leader>dc", "<cmd> DiffviewClose <cr>", {desc = "Diffview Close"})
-- map("n", "<leader>dh", "<cmd> DiffviewFileHistory <cr>", {desc = "Diffview File History"})
-- map("n", "<leader>di", "<cmd> DiffviewFileHistory % <cr>", {desc = "Diffview Current File History"})
--
-- Splitting the screen
map("n", "<leader>sh", "<cmd> split <cr>", {desc = "Split Horizontally"})
map("n", "<leader>sv", "<cmd> vsplit <cr>", {desc = "Split Vertically"})
-- map({ "n", "i", "v"v}, "<C-s>", "<cmd> w <cr>")

-- Python Debugging
-- map("n", "<Leader>b", function() require("dap").toggle_breakpoint() end, { desc = "DAP: Toggle Breakpoint" })
-- map("n", "<F5>", function() require("dap").continue() end, { desc = "DAP: Start/Continue debugging" })
-- map("n", "so", function() require("dap").step_over() end, { desc = "DAP: Step over" })
-- map("n", "si", function() require("dap").step_into() end, { desc = "DAP: Step into" })
-- map("n", "st", function() require("dap").step_out() end, { desc = "DAP: Step out" })

