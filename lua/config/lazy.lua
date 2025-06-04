local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { import = "plugins" },
  },

  install = { colorscheme = { "everforest" } },

  checker = { enabled = true },
})

local builtin = require("telescope.builtin")

-- find_filesの起動の設定。Ctrl-pで起動する。
vim.keymap.set('n', '<C-p>', builtin.find_files, {})

-- live_grepの起動の設定。Space f gを順番に押すことで起動する。
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
