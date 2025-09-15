return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    cmdline = {
      view = "cmdline_popup",
    },
    messages = { enabled = false },
    notify = { enabled = false },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  config = function(_, opts)
    require("noice").setup(opts)

    vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { fg = "#A5564A", bg = "NONE" })
  end,
}

