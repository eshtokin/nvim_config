-- protected call for packer
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  print 'error while load packer'
	return
end

-- have packer use popup window
packer.init {
	display = {
		open_fn = function()
			return require('packer.util').float {border='rounded'}
		end
		},
	}


-- PLUGINS install

return packer.startup(function(use)
	use "wbthomason/packer.nvim" -- Packer manager

	-- lualine
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
	-- lsp
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
	 -- Colorschemes
--  use "folke/tokyonight.nvim"
--	use "lunarvim/colorschemes"
--	use "lunarvim/darkplus.nvim"
--	use "lunarvim/onedarker.nvim"


	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
