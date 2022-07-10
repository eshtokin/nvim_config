local map = vim.api.nvim_set_keymap

-- (mode, sequence, command, options)
map('i', 'jk', '<ESC>', {})      -- Escape form insert mode by pressing "jk"


-- Toggle NvimTree or Explorer
map('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', {})
--map('n', '<leader>e', '<cmd>Explore<CR>', {})

-- open telescope window for find files
map('n', 'ff', '<cmd>Telescope find_files<CR>', {})

-- show git status
map('n', '<leader>g', '<cmd>Git<CR>', {})

-- show commit history
map('n', '<leader>G', '<cmd>GV<CR>', {})

-- add quick exti
map('n', '<leader>q', '<cmd>q<CR>', {})


