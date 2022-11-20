vim.o.cmdheight=2
vim.o.updatetime=50
vim.o.completeopt='menuone,noinsert,noselect' -- Set completeopt to have a better completion experience
vim.o.showmode=false -- Do not show current vim mode since it is already shown by Lualine
vim.o.termguicolors=true
vim.o.background="dark"
vim.o.backup=false
vim.o.smartcase=true
vim.o.scrolloff=8

vim.wo.wrap=false
vim.wo.number=true -- Enabling number and relativenumber at the same time we get Hybrid line numbers
vim.wo.relativenumber=true
vim.wo.cursorline=true -- Enables cursor line position tracking
vim.wo.signcolumn="yes"
vim.wo.colorcolumn="80"

vim.bo.expandtab=true
vim.bo.tabstop=4
vim.bo.shiftwidth=4
vim.bo.softtabstop=4
vim.bo.smartindent=true
vim.bo.swapfile=false

vim.g.mapleader=" "
