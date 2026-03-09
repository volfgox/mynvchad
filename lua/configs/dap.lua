local dap = require "dap"
local dapui = require "dapui"
local dap_python = require "dap-python"

dap_python.setup "python"

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

-- virtual text (inline variable values)
require("nvim-dap-virtual-text").setup {
  enabled = true,
  enabled_commands = true,
  highlight_changed_variables = true,
  highlight_new_as_changed = true,
  show_stop_reason = true,
  commented = false,
  virt_text_pos = "eol",
  display_callback = function(variable)
    local value = variable.value
    if #value > 30 then
      value = value:sub(1, 30) .. "..."
    end
    return variable.name .. " = " .. value
  end,
}
