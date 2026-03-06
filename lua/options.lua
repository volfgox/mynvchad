require "nvchad.options"

local opt = vim.opt
local opt_local = vim.opt_local
local o = vim.o
-- local g = vim.g

-------------------------------------- options ------------------------------------------
o.cursorlineopt ='both' -- to enable cursorline!

opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldenable = true
opt.foldmethod = 'expr'
opt.foldexpr = 'nvim_treesitter#foldexpr()'
opt.indentexpr = 'nvim_treesitter#indent()'
opt.scrolloff = 10

opt_local.colorcolumn = '80,100,120'
vim.api.nvim_set_hl(0, 'ColorColumn', {
  bg = '#73c9bb',
})
