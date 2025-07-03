return {
  'lewis6991/gitsigns.nvim',
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require('gitsigns').setup {
      signs = {
        add          = { text = '│' },
        change       = { text = '│' },
        delete       = { text = '_' },
        topdelete    = { text = '‾' },
        changedelete = { text = '~' },
        untracked    = { text = '┆' },
      },
      signcolumn = true,  -- 左端にマークを表示
      numhl      = false, -- 行番号のハイライト（trueにすると行番号が色付けされる）
      linehl     = false, -- 行全体のハイライト
      word_diff  = false, -- 単語単位の差分表示
      watch_gitdir = {
        interval = 1000,
        follow_files = true
      },
      attach_to_untracked = true,
      current_line_blame = false, -- 行ごとの blame 表示（trueにすると blame が表示される）
      update_debounce = 100,
      preview_config = {
        border = 'single',
        style = 'minimal',
        relative = 'cursor',
        row = 0,
        col = 1
      },
    }
  end
}

