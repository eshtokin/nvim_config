
return require('packer').startup({
function(use)
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
end,
config = {
    package_root = vim.fn.stdpath('config') .. '/site/pack'}
})
