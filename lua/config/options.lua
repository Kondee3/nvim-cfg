local g = vim.g
local opt = vim.opt
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.mapleader = " "
opt.relativenumber = true
opt.fillchars:append { eob = " " }
opt.signcolumn = "no"
opt.guicursor = ""
opt.nu = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.wrap = false
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv "HOME" .. "/.vim/undodir"
opt.undofile = true
opt.hlsearch = false
opt.incsearch = true
opt.termguicolors = true
opt.scrolloff = 8
opt.isfname:append "@-@"
opt.updatetime = 50

