require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("t", "<ESC><ESC>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

-- debugging key mappings (nvim-dap conventional F‑keys)
map("n", "<F5>", '<cmd>lua require"dap".continue()<CR>', { desc = "DAP Continue" })
map("n", "<F9>", '<cmd>lua require"dap".toggle_breakpoint()<CR>', { desc = "DAP Toggle breakpoint" })
map("n", "<F10>", '<cmd>lua require"dap".step_over()<CR>', { desc = "DAP Step over" })
map("n", "<F11>", '<cmd>lua require"dap".step_into()<CR>', { desc = "DAP Step into" })
map("n", "<F12>", '<cmd>lua require"dap".step_out()<CR>', { desc = "DAP Step out" })
map("n", "<F8>", '<cmd>lua require"dap".step_out()<CR>', { desc = "DAP Step out" })

map("n", "<leader>fp", function()
  print(vim.fn.expand "%:p")
end, { desc = "Show full path" })

map("n", "<leader>yp", function()
  vim.fn.setreg("+", vim.fn.expand "%:p")
  print "File path copied"
end, { desc = "Copy full path" })

map("n", "K", function()
  vim.lsp.buf.hover {
    border = "rounded",
    max_width = 80,
  }
end, { desc = "Hover documentation" })

map("n", "<leader>ts", function()
  vim.wo.spell = not vim.wo.spell
end, { desc = "Toggle spell check" })
