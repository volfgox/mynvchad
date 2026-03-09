require("nvchad.configs.lspconfig").defaults()

local function on_attach(_, _)
  vim.diagnostic.config {
    virtual_text = false,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = { source = true, border = "rounded" },
  }
end

local servers = {
  "html",
  "cssls",
  "pyright",
  "ruff",
  "debugpy",
}

vim.lsp.config("pyright", {
  on_attach = on_attach,
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "workplace",
      },
    },
  },
})

vim.lsp.config("ruff", {
  on_attach = on_attach,
  init_options = {
    settings = {
      args = {},
    },
  },
})

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
