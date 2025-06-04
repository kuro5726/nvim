return {
  {
    "sainnhe/everforest",
  },

  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("dashboard").setup{
        shortcut_type = "number",
        shuffle_letter = true,
      }
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = {},
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },

  {
    "nvim-tree/nvim-web-devicons",
    opts = {},
  },

  {
    "akinsho/bufferline.nvim",
  },

  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("hlchunk").setup({
        chunk = {
          enable = true
        },
        indent = {
          enable = true
        }
      })
    end
  },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
    opts = {},
  },
}
