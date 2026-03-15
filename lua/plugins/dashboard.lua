-- plugins/dashboard.lua
return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("dashboard").setup({
        theme = "doom",
        config = {
          header = {
            "",
            "",
            "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
            "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
            "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
            "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
            "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
            "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
            "",
            "        [ The text editor that beliefs in you ]       ",
            "",
          },
          center = {
            {
              icon = "  ",
              icon_hl = "DashboardIcon",
              desc = "Find File          ",
              desc_hl = "DashboardDesc",
              key = "f",
              key_hl = "DashboardKey",
              action = "Telescope find_files",
            },
            {
              icon = "  ",
              icon_hl = "DashboardIcon",
              desc = "Recent Files       ",
              desc_hl = "DashboardDesc",
              key = "r",
              key_hl = "DashboardKey",
              action = "Telescope oldfiles",
            },
            {
              icon = "  ",
              icon_hl = "DashboardIcon",
              desc = "Live Grep          ",
              desc_hl = "DashboardDesc",
              key = "g",
              key_hl = "DashboardKey",
              action = "Telescope live_grep",
            },
            {
              icon = "  ",
              icon_hl = "DashboardIcon",
              desc = "Config             ",
              desc_hl = "DashboardDesc",
              key = "c",
              key_hl = "DashboardKey",
              action = "edit " .. vim.fn.stdpath("config") .. "/init.lua",
            },
            {
              icon = "  ",
              icon_hl = "DashboardIcon",
              desc = "Lazy Plugins       ",
              desc_hl = "DashboardDesc",
              key = "p",
              key_hl = "DashboardKey",
              action = "Lazy",
            },
            {
              icon = "  ",
              icon_hl = "DashboardIcon",
              desc = "Quit               ",
              desc_hl = "DashboardDesc",
              key = "q",
              key_hl = "DashboardKey",
              action = "qa",
            },
          },
          footer = function()
            local v = vim.version()
            return { "", "  Neovim v" .. v.major .. "." .. v.minor .. "." .. v.patch .. "  —  Stay sharp." }
          end,
        },
      })

      -- Custom highlight colors (navy palette)
      vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#7aa2f7", bold = true })
      vim.api.nvim_set_hl(0, "DashboardIcon",   { fg = "#7dcfff" })
      vim.api.nvim_set_hl(0, "DashboardDesc",   { fg = "#c0caf5" })
      vim.api.nvim_set_hl(0, "DashboardKey",    { fg = "#bb9af7", bold = true })
      vim.api.nvim_set_hl(0, "DashboardFooter", { fg = "#3b4261", italic = true })
    end,
  },
}
