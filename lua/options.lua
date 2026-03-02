require "nvchad.options"

local opt = vim.opt
local o = vim.o
local g = vim.g

-------------------------------------- options ------------------------------------------
o.cursorlineopt ='both' -- to enable cursorline!

opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldenable = true
opt.foldmethod = 'expr'
opt.foldexpr = 'nvim_treesitter#foldexpr()'
opt.indentexpr = 'nvim_treesitter#indent()'
