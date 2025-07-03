return {
  {
    "nvim-lualine/lualine.nvim",
    event = { "VimEnter" },
    opts = {
      icons_enabled = true,
      theme = "auto",
      section_separators = { left = "", right = "" },
      component_separators = { left = "", right = "" },
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      always_show_tabline = true,
      globalstatus = true,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      },
      sections = {
        lualine_a = {
          "mode",
        },
        lualine_b = {
          {
            "filename",
            file_status = true,
            newfile_status = true,
            path = 1,
            shorting_target = 40,
            symbols = { modified = "_󰷥", readonly = " ", newfile = "󰄛", unnamed = "[No Name]" },
          },
        },
        lualine_c = {
          {
            "diagnostics",
            sources = {
              "nvim_diagnostic",
              "nvim_lsp",
            },
            sections = {
              "error",
              "warn",
              "info",
              "hint",
            },
            symbols = {
              error = " ",
              warn = " ",
              info = " ",
              hint = " ",
            },
            update_in_insert = false,
            always_visible = false,
          },
          { "navic" },
        },
        lualine_x = {
          {
            "encoding",
          },
        },
        lualine_y = {
          {
            "filetype",
            colored = true,
            icon_only = false,
          },
        },
        lualine_z = {
          {
            "fileformat",
            icons_enabled = true,
            symbols = {
              unix = "", -- e712
              dos = "", -- e70f
              mac = "", -- e711
            },
            separator = {
              left = "",
              right = "",
            },
          },
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {
        lualine_a = {
          {
            "buffers",
            show_filename_only = true,
            hide_filename_extension = false,
            show_modified_status = true,
            mode = 0,
            max_length = vim.o.columns * 2 / 3,
            filetype_names = {
              TelescopePrompt = "Telescope",
              dashboard = "Dashboard",
              packer = "Packer",
              fzf = "FZF",
              alpha = "Alpha",
            },
            symbols = {
              modified = "_󰷥",
              alternate_file = " ",
              directory = " ",
            },
          },
        },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {
          {
            "diff",
            colored = true,
            symbols = {
              added = " ",
              modeiffied = " ",
              removed = " ",
            },
            source = nil,
          },
        },
        lualine_y = {
          {
            "b:gitsigns_head",
            icon = {
              "",
            },
          },
        },
        lualine_z = {
        },
      },
      winbar = {},
      inactive_winbar = {},
      extensions = {},
    },
  },
}
