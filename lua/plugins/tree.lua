return {
 "nvim-tree/nvim-tree.lua",
 opts = {
   sort_by = 'extension',
   update_focused_file = {
     enable = true,
     update_cwd = true,
   },
  view = {
    width = '15%',
    side = 'left',
    signcolumn = 'no',
  },

  renderer = {
    highlight_git = true,
    highlight_opened_files = 'name',
    icons = {
      glyphs = {
        git = {
          unstaged = '!', renamed = '»', untracked = '?', deleted = '✘',
          staged = '✓', unmerged = '', ignored = '◌',
        },
      },
    },
  },

  actions = {
    expand_all = {
      max_folder_discovery = 100,
      exclude = { '.git', 'target', 'build' },
    },
  },

  on_attach = 'default'
 },
}
