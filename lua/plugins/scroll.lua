return {
  'petertriho/nvim-scrollbar',
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("scrollbar").setup({
      show = true,
      set_highlights = true,
      handle = {
        text = " ", -- スクロールバーのハンドル部分の見た目
        color = nil, -- カラースキームに従う
      },
      handlers = {
        diagnostic = true, -- LSPの診断情報を表示
        gitsigns = true,   -- gitsigns.nvim と連携
      },
    })
  end
}

