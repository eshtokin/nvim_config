local map = vim.api.nvim_set_keymap

-- (mode, sequence, command, options)
map('i', 'jk', '<ESC>', {})      -- Escape form insert mode by pressing "jk"
-- add quick exti
map('n', '<leader>q', '<cmd>q<CR>', {})
map('n', '<leader>Q', '<cmd>q!<CR>', {})
-- quick save
map('n', '<leader>w', '<cmd>w<CR>', {})

-- Toggle NvimTree or Explorer
map('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', {})
--map('n', '<leader>e', '<cmd>Explore<CR>', {})

-- open telescope window for find files
map('n', 'ff', '<cmd>Telescope find_files<CR>', {})
map('n', 'fb', '<cmd>Telescope buffers<CR>', {})
map('n', 'gd', '<cmd>Telescope lsp_definitions<CR>', {})
map('n', 'gr', '<cmd>Telescope lsp_references<CR>', {})

-- show git status
map('n', '<leader>g', '<cmd>Git<CR>', {})

-- show commit history
map('n', '<leader>G', '<cmd>GV<CR>', {})

-- LSP configurations
local opts = { noremap=true, silent=true }
    -- See ':help vim.diagnostic.*' for dicumentation on any of the below commands
map('n', '<space>e', '<cmd>vim.diagnostic.open_float<CR>', opts)
map('n', '[d', '<cmd>vim.diagnostic.goto_prev<CR>', opts)
map('n', ']d', '<cmd>vim.diagnostic.goto_next<CR>', opts)
map('n', '<space>q', '<cmd>vim.diagnostic.setloclist<CR>', opts)


-- FLoatTerm key setup
map('n', 'TT', [[<cmd>lua require'floaterm'.open({row=1})<cr>]], {})
