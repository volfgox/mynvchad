require "nvchad.autocmds"

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, {
      focusable = false,
      border = "rounded",
      source = "always",
      scope = "cursor",
    })
  end,
})
