local opt = vim.opt

-- [[ Context ]]
opt.colorcolumn = '80'
opt.number = true
opt.relativenumber = true
opt.scrolloff = 4
opt.signcolumn = "yes"

-- [[ Filetypes ]]
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

-- [[ Theme ]]
opt.syntax = "ON"
opt.termguicolors = true

-- [[ Search ]]
opt.ignorecase = true		-- Ignore case in search patterns
opt.smartcase =	true		-- Override ignorecase if search contains capitals
opt.incsearch = true		-- Use increamental search
opt.hlsearch = true		-- Highlight search matches

-- [[ Whitespaces ]]
opt.expandtab = true		-- Use spaces instead of tabs
opt.shiftwidth = 4
opt.softtabstop = 4		-- Number of spaces tabs count for in insert mode
opt.tabstop = 4			-- Number of spaces tabs count for

-- [[ Splits ]]
opt.splitright = true		-- Place new window to right of current one
opt.splitbelow = true		-- Place new window below the current one
