return {
  {
    "nvimdev/dashboard-nvim",
    event = { "VimEnter" },
    opts = {
      theme = "hyper",
      shortcut_type = "number",
      shuffle_letter = true,
      config = {
        week_header = {
          enable = true,
        },
        project = {
          enable = false,
        },
        shortcut = {
          { desc = "Update", group = "@property", key = "u", action = "Lazy update" },
        },
      },
    },
  }
}
