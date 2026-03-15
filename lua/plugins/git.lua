-- plugins/git.lua
return {
  -- Gitsigns: inline git hunks, blame, diff in the gutter
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      signs = {
        add          = { text = "▎" },
        change       = { text = "▎" },
        delete       = { text = "󰍵" },
        topdelete    = { text = "‾" },
        changedelete = { text = "~" },
        untracked    = { text = "▎" },
      },
      signcolumn         = true,
      numhl              = false,
      linehl             = false,
      word_diff          = false,
      current_line_blame = true,   -- show blame on current line
      current_line_blame_opts = {
        virt_text         = true,
        virt_text_pos     = "eol",
        delay             = 500,
        ignore_whitespace = false,
      },
      current_line_blame_formatter = " <author>, <author_time:%Y-%m-%d> · <summary>",
      preview_config = {
        border   = "rounded",
        style    = "minimal",
        relative = "cursor",
        row      = 0,
        col      = 1,
      },
    },
  },

  -- LazyGit: full-featured git TUI inside nvim
  {
    "kdheepak/lazygit.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = { "LazyGit", "LazyGitConfig" },
  },
}
