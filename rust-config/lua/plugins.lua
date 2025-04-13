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
--	-- try ollama.nvim
--	'nvim-lua/plenary.nvim';
--	{ 'nomnivore/ollama.nvim',
--		dependencies = { 'nvim-lua/plenary.nvim' },
--		cmd = { "Ollama", "OllamaModel", "OllamaServe", "OllamaServeStop" },
--		keys = {
--			{
--				"<leader>oo",
--				":<c-u>lua require('ollama').prompt()<cr>",
--				desc = "ollama prompt",
--				mode = { "n", "v" },
--			},
--			{
--				"<leader>oG",
--				":<c-u>lua require('ollama').prompt('Generate_Code')<cr>",
--				desc = "ollama Generate Code",
--				mode = { "n", "v" },
--			},
--		},
--	};
	
	-- status bar
	{ 'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	};
	-- Toggle Terminal
	'akinsho/toggleterm.nvim';
	
	-- tree-sitter
	'nvim-treesitter/nvim-treesitter';

	-- bot right background loading INFO
	'j-hui/fidget.nvim';

	'williamboman/mason.nvim';
	'williamboman/mason-lspconfig.nvim';
	'neovim/nvim-lspconfig';

	-- Completion framework:
	'hrsh7th/nvim-cmp';
	-- Useful completion sources:
	{
		-- cmp LSP completion
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		-- cmp Path completion
		"hrsh7th/cmp-path",
		'hrsh7th/cmp-cmdline',
		-- cmp Snippet completion
		"hrsh7th/cmp-vsnip",
		'hrsh7th/vim-vsnip',
		'hrsh7th/cmp-nvim-lua',
		'hrsh7th/cmp-nvim-lsp-signature-help',
		after = { "hrsh7th/nvim-cmp" },
		requires = { "hrsh7th/nvim-cmp" },
	};

--	-- game 'vim-be-good'
--	'ThePrimeagen/vim-be-good';
}
