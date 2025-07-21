require("nvchad.configs.lspconfig").defaults()

local lspconfig = require("lspconfig")

local servers = { "html", "cssls" }

vim.lsp.enable(servers)

lspconfig.emmet_ls.setup({
  filetypes = {
    "html",
    "css",
    "javascript",
    "javascriptreact",
    "typescriptreact",
    "svelte",
    "vue",
  },
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
  init_options = {
    html = {
      options = {
        ["bem.enabled"] = true,
      },
    },
  },
})
