
return require('packer').startup({
function(use)
    -- Explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- [[ Theme ]]
    -- add start screen
    use { 'mhinz/vim-startify' }
    
    -- indicate cursor movemen
    use { 'DanilaMihailov/beacon.nvim' }

    -- statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }
    -- colorscheme
    use { 'Mofiqul/dracula.nvim' }    

    -- finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- View all structure of any classes and functions in given file 
    use { 'majutsushi/tagbar' }

    -- more cleary show indent line
    use { 'Yggdroot/indentLine' }

    -- integrate with GIT repository
    use { 'tpope/vim-fugitive' }

    -- easy browse commit history
    use { 'junegunn/gv.vim' }

    -- automatically close brackets
    use { 'windwp/nvim-autopairs' }

    -- Language support protocol
    use 'neovim/nvim-lspconfig'

end,
config = {
    package_root = vim.fn.stdpath('config') .. '/site/pack'}
})
