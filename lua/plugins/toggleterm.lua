-- plugins/toggleterm.lua
return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      size = 15,
      open_mapping = [[<C-t>]],   -- Ctrl+T to toggle
      direction = "horizontal",   -- opens at the bottom
      shade_terminals = true,
      persist_size = true,
      close_on_exit = true,
    },
  },
}
