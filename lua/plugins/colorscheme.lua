-- plugins/colorscheme.lua
return {
  -- Tokyonight has a great deep navy "storm" variant
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "storm",       -- storm = deep navy blue
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = "dark",
        floats = "dark",
      },
      sidebars = { "qf", "help", "terminal", "NvimTree" },
      on_colors = function(colors)
        -- Shift background even deeper navy
        colors.bg        = "#0d1117"
        colors.bg_dark   = "#090e16"
        colors.bg_float  = "#0d1117"
        colors.bg_popup  = "#0d1117"
        colors.bg_sidebar = "#090e16"
      end,
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd("colorscheme tokyonight-storm")
    end,
  },
}
