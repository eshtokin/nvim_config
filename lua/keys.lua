-- options
local opt = { noremap = true, silent = true }
-- shortcut for api call
local keymap = vim.api.nvim_set_keymap
-- list of modes
local Mode = {
	normal = 'n',
	insert = 'i',
	visual = 'v',
	visual_block = 'x',
	term = 't',
}

-- Set up <Space> as leader key
keymap("", "<Space>", "<Nop>", opt)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- WINDOW navigation
keymap(Mode.normal, '<Leader>h', '<C-w>h', opt)
keymap(Mode.normal, '<Leader>j', '<C-w>j', opt)
keymap(Mode.normal, '<Leader>k', '<C-w>k', opt)
keymap(Mode.normal, '<Leader>l', '<C-w>l', opt)
-- WINDOW resize with arrows
keymap(Mode.normal, '<M-Up>', '<cmd>resize -2<CR>', opt)
keymap(Mode.normal, '<M-Down>', '<cmd>resize +2<CR>', opt)
keymap(Mode.normal, '<M-Left>', '<cmd>vertical resize -2<CR>', opt)
keymap(Mode.normal, '<M-Right>', '<cmd>vertical resize +2<CR>', opt)
-- BUFFER navigation
keymap(Mode.normal, '<S-l>', '<cmd>:bnext<CR>', opt)
keymap(Mode.normal, '<S-h>', '<cmd>bprevious<CR>', opt)
keymap(Mode.normal, '<Leader>q', '<cmd>q<CR>', opt)
keymap(Mode.normal, '<Leader>w', '<cmd>w<CR>', opt)
keymap(Mode.normal, '<Leader>bd', '<cmd>bd<CR>', opt)
keymap(Mode.normal, '<Leader>bD', '<cnd>bd!<CR>', opt)
-- EXPLORE open
keymap(Mode.normal, '<Leader>e', [[:Explore<CR>]], opt)
-- ESCAPE to visual mode
keymap(Mode.insert, 'jk', '<esc>', opt) 
-- PLUGIN Telescope
keymap(Mode.normal, 'ff', '<cmd>Telescope find_files prompt_prefix=🔍<CR>', opt)
keymap(Mode.normal, 'fg', '<cmd>Telescope live_grep<CR>', opt)
keymap(Mode.normal, 'fb', '<cmd>Telescope buffers<CR>', opt)
keymap(Mode.normal, 'fh', '<cmd>Telescope help_tags<CR>', opt)
keymap(Mode.normal, 'gr', '<cmd>Telescope lsp_references<CR>', opt)
keymap(Mode.normal, 'gd', '<cmd>Telescope lsp_definitions<CR>', opt)
keymap(Mode.normal, '<Leader>tgs', '<cmd>Telescope git_status<CR>', opt)
keymap(Mode.normal, '<Leader>tgb', '<cmd>Telescope git_branches<CR>', opt)
keymap(Mode.normal, '<Leader>tgc', '<cmd>Telescope git_bcommits<CR>', opt)
-- PLUGIN TogleTerm
keymap(Mode.normal, '<Leader>T', '<cmd>ToggleTerm direction="float"<CR>', opt)
