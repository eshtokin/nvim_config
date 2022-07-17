-- Automaticaly install packer
-- local install_path = vim.fn.stdpath "data" .. "site/pack/packer/start/packer.nvim"
-- if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
--	PACKER_BOOTSTRAP = vim.fn.system {
--	"git",
--	"clone",
--	"--deps",
--	"1",
--	"https://github.com/wbthomason/packer.nvim",
--	install_path,
--	}
--	print "Installing packer close and reopen nvim"
--	vim.cmd [[packadd packer.nvim]]
--end


-- autoinstall on save plugins.lua
-- vim.cmd [[
--	augroup packer_user_config
--		autocmd!
--		autocmd! BufWritePost plugins.lua source <afile> | PackerSync
--	augroup end
-- ]]

-- protected call for packer
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
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
	-- telescope
	-- lsp
	
	 -- Colorschemes
	use "folke/tokyonight.nvim"
	use "lunarvim/colorschemes"
	use "lunarvim/darkplus.nvim"
	use "lunarvim/onedarker.nvim"


	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
