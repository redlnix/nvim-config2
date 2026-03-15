-- plugins/telescope.lua
return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      local telescope = require("telescope")
      local actions   = require("telescope.actions")

      telescope.setup({
        defaults = {
          prompt_prefix    = "   ",
          selection_caret  = "  ",
          path_display     = { "smart" },
          sorting_strategy = "ascending",
          layout_config = {
            horizontal = {
              prompt_position = "top",
              preview_width   = 0.55,
            },
            vertical = { mirror = false },
            width    = 0.87,
            height   = 0.80,
          },
          mappings = {
            i = {
              ["<C-k>"]   = actions.move_selection_previous,
              ["<C-j>"]   = actions.move_selection_next,
              ["<C-q>"]   = actions.send_selected_to_qflist + actions.open_qflist,
              ["<Esc>"]   = actions.close,
            },
          },
          -- Navy-friendly borderchars
          borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        },
        pickers = {
          find_files = {
            hidden = true,   -- show dotfiles
          },
        },
        extensions = {
          fzf = {
            fuzzy                   = true,
            override_generic_sorter = true,
            override_file_sorter    = true,
            case_mode               = "smart_case",
          },
        },
      })

      telescope.load_extension("fzf")
    end,
  },
}
