return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "uga-rosa/ccc.nvim",
    cmd = "CccPick",
    config = function()
      require("ccc").setup({})
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      opts.defaults = require("telescope.themes").get_ivy({
        layout_config = { height = 0.40 },
        preview = false,
        results_title = "",
      })

      opts.pickers = {
        find_files = {
          prompt_title = "",
        },
      }
    end,
  }

  -- toggleterm plugin
  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --       "html", "css"
  -- 		},
  -- 	},
  -- },
}

