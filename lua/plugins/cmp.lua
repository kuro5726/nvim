local M = {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "saadparwaiz1/cmp_luasnip",
        "L3MON4D3/LuaSnip",
        "onsails/lspkind.nvim"
    },
    event = { "CmdlineEnter", "InsertEnter" },
}

M.config = function()
    local cmp = require("cmp")
    local lspkind = require("lspkind")
    vim.opt.completeopt = { "menu", "menuone", "noselect" }

    cmp.setup({
        formatting = {
            format = lspkind.cmp_format({
                mode = "symbol",
                maxwidth = 50,
                ellipsis_char = "...",
                before = function(entry, vim_item)
                    return vim_item
                end,
            }),
        },
        snippet = {
            expand = function(args)
                require("luasnip").lsp_expand(args.body)
            end,
        },
        window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
            ["<C-b>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.abort(),
            ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
            { name = "nvim_lsp" },
            { name = "nvim_lua" },
            { name = "luasnip" }, -- For luasnip users.
            -- { name = "orgmode" },
        }, {
            { name = "buffer" },
            { name = "path" },
        }),
    })

    cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
            { name = "buffer" },
        },
    })

    cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline({
            ["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        }),
        sources = cmp.config.sources({
            { name = "path" },
        }, {
            { name = "cmdline" },
        }),
    })
end

return M
