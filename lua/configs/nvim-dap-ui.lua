local dap = require "dap"
local dapui = require "dapui"

-- ensure virtual text loads when debugging starts
dap.listeners.after.event_initialized["dap_virtual_text"] = function()
  require("lazy").load { plugins = { "nvim-dap-virtual-text" } }
end

dapui.setup()
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
