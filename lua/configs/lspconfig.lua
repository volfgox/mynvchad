require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "pyright",
  "codelldb"
}
--
-- vim.lsp.config("rust_analyzer", {
--   filetypes = { "rust" },
--
--   root_markers = { "Cargo.toml", ".git" },
--
--   settings = {
--     ["rust-analyzer"] = {
--       cargo = {
--         allFeatures = true,
--       },
--     },
--   },
-- })

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
