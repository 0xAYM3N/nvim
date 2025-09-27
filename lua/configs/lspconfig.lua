require("nvchad.configs.lspconfig").defaults()

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local servers = { "html", "cssls", "emmet_ls"}

for _, srv in ipairs(servers) do
  vim.lsp.config(srv, {
    capabilities = capabilities,
  })
  vim.lsp.enable { srv }
end

vim.lsp.config("emmet_ls", {
  filetypes = {
    "html",
    "css",
    "javascript",
    "javascriptreact",
    "typescriptreact",
    "svelte",
    "vue",
  },
  capabilities = capabilities,
  init_options = {
    html = {
      options = {
        ["bem.enabled"] = true,
      },
    },
  },
})
