local g = vim.g
g.t_co = 256			-- enable support of 256 colors
g.background = 'dark'


local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path
