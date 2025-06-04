return {
  {
    "sainnhe/everforest",
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
  }
}
