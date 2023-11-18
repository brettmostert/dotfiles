vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- let g:netrw_altv=1
--vim.g.netrw_altv=1
--vim.g.netrw_liststyle = 3
--vim.g.netrw_banner = 0
--vim.g.netrw_browse_split = 2
--vim.g.netrw_winsize = 20
--vim.g.netrw_chgwin=1

vim.opt.termguicolors = true
vim.opt.showmode = false
vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 3
vim.opt.softtabstop = 3
vim.opt.shiftwidth = 3
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "
