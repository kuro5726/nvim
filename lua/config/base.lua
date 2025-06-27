vim.cmd("autocmd!")

vim.scriptencoding = "utf-8"

vim.wo.number = true
vim.o.termguicolors = true

vim.g.nvim_tree_respect_buf_cwd = 1

-- Open hoge file
vim.api.nvim_create_user_command("Hoge", function(opts)
  vim.cmd("e " .. "~/_/hoge/hoge.markdown")
end, {})
