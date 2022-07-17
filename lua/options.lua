local opt = vim.opt

opt.number = true -- show line number
opt.relativenumber = true -- show relative line number
-- opt.shiftround = true -- round indent
opt.shiftwidth = 2 -- size of an indent
opt.tabstop = 2 -- number of spaces tab count for
opt.expandtab = true -- use spaces instead of tab
opt.smartindent = true -- insert indent automaticaly
opt.splitbelow = true -- put new window below current
opt.splitright = true -- put new window right to the current
opt.termguicolors = true -- true color support
opt.list = true -- show some invisible charecters
opt.wrap = false -- disable line wrap

vim.cmd 'colorscheme tokyonight' -- set colorscheme
