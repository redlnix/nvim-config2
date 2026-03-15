-- core/keymaps.lua
local keymap = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- General
keymap("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
keymap("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })
keymap("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

-- Move between windows
keymap("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Resize windows
keymap("n", "<C-Up>",    "<cmd>resize +2<CR>")
keymap("n", "<C-Down>",  "<cmd>resize -2<CR>")
keymap("n", "<C-Left>",  "<cmd>vertical resize -2<CR>")
keymap("n", "<C-Right>", "<cmd>vertical resize +2<CR>")

-- Buffer navigation
keymap("n", "<Tab>",   "<cmd>bnext<CR>",     { desc = "Next buffer" })
keymap("n", "<S-Tab>", "<cmd>bprevious<CR>", { desc = "Prev buffer" })
keymap("n", "<leader>x", "<cmd>bdelete<CR>", { desc = "Close buffer" })

-- Telescope (fuzzy finder)
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>",  { desc = "Find files" })
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>",   { desc = "Live grep" })
keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>",     { desc = "Find buffers" })
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>",   { desc = "Help tags" })
keymap("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>",    { desc = "Recent files" })
keymap("n", "<leader>fc", "<cmd>Telescope commands<CR>",    { desc = "Commands" })

-- File tree
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file tree" })

-- Git (Gitsigns)
keymap("n", "<leader>gs", "<cmd>Gitsigns stage_hunk<CR>",       { desc = "Stage hunk" })
keymap("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>",       { desc = "Reset hunk" })
keymap("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>",     { desc = "Preview hunk" })
keymap("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>",       { desc = "Blame line" })
keymap("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>",         { desc = "Diff this" })
keymap("n", "]g",         "<cmd>Gitsigns next_hunk<CR>",        { desc = "Next git hunk" })
keymap("n", "[g",         "<cmd>Gitsigns prev_hunk<CR>",        { desc = "Prev git hunk" })

-- Lazygit (full git UI)
keymap("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Open LazyGit" })

-- Move lines in visual mode
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- Better indent in visual
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- Keep cursor centered on scroll
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n",     "nzzzv")
keymap("n", "N",     "Nzzzv")

-- Theme switcher toggle
local current_theme = "navy"
vim.keymap.set("n", "<leader>tt", function()
  if current_theme == "navy" then
    vim.cmd("colorscheme everforest")
    current_theme = "forest"
    vim.notify("Switched to Forest theme")
  else
    vim.cmd("colorscheme tokyonight-storm")
    current_theme = "navy"
    vim.notify("Switched to Navy theme")
  end
end, { desc = "Toggle theme" })
