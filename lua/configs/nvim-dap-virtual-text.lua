local options = {
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

return options
