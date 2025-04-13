local opt = vim.opt

opt.encoding        = 'utf-8'
opt.mouse           = 'a'

opt.syntax          = 'on'
opt.filetype        = 'on'
opt.filetype.plugin = 'on'

opt.colorcolumn     = '90'
opt.cursorline      = true
opt.cursorcolumn    = true

opt.number          = true
opt.relativenumber  = true

opt.hlsearch        = true
opt.incsearch       = true

--
-- tabs & spaces
--
opt.tabstop         = 4 -- visual tab width (default=8)
opt.shiftwidth      = 4 -- positions for Shift+> & Shift+<
opt.expandtab       = false -- replace tab with space(s)

opt.list            = true
opt.listchars:append {
	tab			    = "> ",
	-- tab			= "│┈",
	-- tab		= "▒░",
	multispace      = " ",
	lead            = " ",
	trail           = "·",
	nbsp            = "‿",
	extends         = "▶", -- if nowrap
	precedes        = "◀", -- if nowrap
	-- eol             = "¶"
}
vim.cmd([[
colorscheme zaibatsu
]])


--Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortness: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
--- opt.completeopt = {'menuone', 'noselect', 'noinsert'}
--- opt.shortmess = vim.opt.shortmess + { c = true}
--- vim.api.nvim_set_option('updatetime', 1500) 

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error 
-- Show inlay_hints more frequently 
--- vim.cmd([[
--- set signcolumn=yes
--- autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
--- ]])

