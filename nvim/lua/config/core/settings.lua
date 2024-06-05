vim.cmd("let g:netrw_liststyle = 3")
vim.g.mapleader = " "
vim.wo.signcolumn = "yes"

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.wrap = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true
vim.opt.updatetime = 250
vim.opt.scrolloff = 8
vim.opt.cursorline = true
vim.opt.clipboard = "unnamedplus"

vim.opt.splitright = true -- split vertical window to the right
vim.opt.splitbelow = true -- split horizontal window to the bottom

vim.cmd.colorscheme("citylights")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- vim.opt.swapfile = false
-- vim.opt.hlsearch = false
-- vim.opt.incsearch = true
