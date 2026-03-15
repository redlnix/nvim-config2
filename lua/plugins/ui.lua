-- plugins/ui.lua
return {
  -- File tree
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    opts = {
      view = {
        width = 30,
        side  = "left",
      },
      renderer = {
        group_empty   = true,
        highlight_git = true,
        icons = {
          show = {
            git     = true,
            folder  = true,
            file    = true,
          },
        },
      },
      filters = {
        dotfiles = false,
      },
      git = {
        enable  = true,
        ignore  = false,
      },
    },
  },

  -- Statusline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        theme                = "tokyonight",
        globalstatus         = true,
        component_separators = { left = "", right = "" },
        section_separators   = { left = "", right = "" },
      },
      sections = {
        lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { { "filename", path = 1 } },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { { "location", separator = { right = "" }, left_padding = 2 } },
      },
    },
  },

  -- Bufferline (tabs at top)
  {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    opts = {
      options = {
        mode             = "buffers",
        separator_style  = "slant",
        show_buffer_close_icons = true,
        show_close_icon  = false,
        color_icons      = true,
        diagnostics      = "nvim_lsp",
      },
    },
  },

  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      indent = { char = "│", highlight = "IblIndent" },
      scope  = { enabled = true, highlight = "IblScope" },
    },
    config = function(_, opts)
      require("ibl").setup(opts)
      vim.api.nvim_set_hl(0, "IblIndent", { fg = "#1e2a3a" })
      vim.api.nvim_set_hl(0, "IblScope",  { fg = "#3b5278" })
    end,
  },

  -- Which-key: shows keybind hints
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "modern",
    },
  },

  -- Notify: prettier notifications
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#0d1117",
      timeout           = 2000,
      stages            = "fade_in_slide_out",
    },
    config = function(_, opts)
      require("notify").setup(opts)
      vim.notify = require("notify")
    end,
  },
}
