-- plugins/themeswitcher.lua
return {
  -- Forest green theme
  {
    "sainnhe/everforest",
    lazy = true,
    opts = {},
    config = function()
      vim.g.everforest_background = "hard"
      vim.g.everforest_better_performance = 1
    end,
  },
}
