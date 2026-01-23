vim.opt.nu = true
vim.opt.relativenumber = true
vim.o.statuscolumn = "%s %l %=%r  "

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
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

vim.opt.updatetime = 50

vim.opt.cursorline = true
vim.opt.colorcolumn = "81,121"

vim.o.mousemoveevent = true

vim.opt.laststatus = 3

-- GUI settings
vim.o.guifont = 'CaskaydiaCove Nerd Font Mono:h18'

if vim.g.neovide then
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_transparency = 1
end
