-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "catppuccin-latte" },

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

M.nvdash = { load_on_startup = true }

-- M.ui = {
--   statusline = {
--     order = { "mode", "file_custome", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor" },
--     modules = {
--       -- abc = function()
--       --   return "hi"
--       -- end,
--       --
--       -- xyz = "hi",
--       -- f = "%t",
--       file_custome = function()
--         local icon = "󰈚"
--         local path = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(vim.g.statusline_winid or 0))
--         local name = (path == "" and "Empty ") or path:match "([^/\\]+)[/\\]*$"
--
--         if name ~= "Empty " then
--           local devicons_present, devicons = pcall(require, "nvim-web-devicons")
--
--           if devicons_present then
--             local ft_icon = devicons.get_icon(name)
--             icon = (ft_icon ~= nil and ft_icon) or icon
--           end
--         end
--
--         return icon .. name
--       end,
--     },
--   },
-- }

return M
