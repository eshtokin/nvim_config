-- [[ init.lua ]] 

vim.g.mapleader = ","
vim.g.localleader = "\\"

require('vars')
require('options')
require('keys')
require('plug')

-- vim.g --> vim.api.nvim_set_var - set global variebles
-- vim.o --> vim.api.nvim_win_set_var - set variebles scoped to a given window
-- vim.b --> vim.api.nvim_buf_set_var - set variebles scoped to a given buffer

-- PLUGINS
require('nvim-tree').setup{}

require('lualine').setup {
    options = {
        theme = 'dracula-nvim'
    }
}

require('nvim-autopairs').setup{}

