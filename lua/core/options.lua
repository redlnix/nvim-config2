-- core/options.lua
local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- Line wrapping
opt.wrap = false

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.cmdheight = 1
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.cursorline = true
opt.showmode = false

-- Splits
opt.splitbelow = true
opt.splitright = true

-- Clipboard
opt.clipboard = "unnamedplus"

-- Backup / swap (keep things clean)
opt.backup = false
opt.swapfile = false
opt.undofile = true
opt.undodir = vim.fn.stdpath("data") .. "/undodir"

-- Update time (faster git signs, etc.)
opt.updatetime = 250
opt.timeoutlen = 300

-- Mouse
opt.mouse = "a"

-- Encoding
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
