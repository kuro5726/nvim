return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    },
    main = "nvim-treesitter.configs",
    opts = {
      highlight = { enable = true },
    },
  },
  {
    "nvim-treesitter-textobjects",
    event = "CursorMoved",
  },
}
