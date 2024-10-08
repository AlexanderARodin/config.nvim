-- MANAGER
local function bootstrap_pckr()
	local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"
	if not vim.loop.fs_stat(pckr_path) then
		vim.fn.system({
			'git', 'clone',
			"--filter=blob:none",
			'https://github.com/lewis6991/pckr.nvim',
			pckr_path
		})
	end
	vim.opt.rtp:prepend(pckr_path)
end
bootstrap_pckr()


-- PLUGINS loading
local cmd = require('pckr.loader.cmd')
local keys = require('pckr.loader.keys')


require('pckr').add{
	-- status bar
	{ 'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	};

	-- Toggle Terminal
	'akinsho/toggleterm.nvim';

	-- color scheme
	'mellow-theme/mellow.nvim';

	-- tree-sitter
	'nvim-treesitter/nvim-treesitter';

	-- bot right background loading INFO
	'j-hui/fidget.nvim';

	'williamboman/mason.nvim';
	'williamboman/mason-lspconfig.nvim';

	'neovim/nvim-lspconfig';
	'simrat39/rust-tools.nvim';

	-- Completion framework:
	'hrsh7th/nvim-cmp';
	-- Useful completion sources:
	{
		-- cmp LSP completion
		"hrsh7th/cmp-nvim-lsp",
		-- cmp Snippet completion
		"hrsh7th/cmp-vsnip",
		-- cmp Path completion
		"hrsh7th/cmp-path",
		-- 'hrsh7th/cmp-cmdline',
		"hrsh7th/cmp-buffer",
		'hrsh7th/vim-vsnip',
		'hrsh7th/cmp-nvim-lua',
		'hrsh7th/cmp-nvim-lsp-signature-help',
		after = { "hrsh7th/nvim-cmp" },
		requires = { "hrsh7th/nvim-cmp" },
	};
	
	-- game 'vim-be-good'
	'ThePrimeagen/vim-be-good';

	-- test plugin
	-- 'learning-raa/learn-lua-pluging-nvim';

}


