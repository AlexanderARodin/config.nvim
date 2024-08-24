local opt = vim.opt

opt.encoding        = 'utf-8'
opt.mouse           = 'a'

opt.syntax          = 'on'
opt.filetype        = 'on'
opt.filetype.plugin = 'on'

opt.colorcolumn     = '90'
opt.cursorline      = true
-- opt.cursorcolumn        = true

opt.number              = true
opt.relativenumber      = true

opt.hlsearch            = true
opt.incsearch           = true

--
-- tabs & spaces
opt.tabstop     = 4 -- visual tab width (default=8)
opt.shiftwidth  = 4 -- positions for Shift+> & Shift+<
opt.expandtab   = true -- replace tab with space(s)

opt.list        = true
opt.listchars:append {
    -- tab  = "│┈",
    -- tab  = "▒░",
    multispace  = " ",
    lead        = " ",
    trail       = "·",
    nbsp        = "‿",
    extends     = "▶", -- if nowrap
    precedes    = "◀", -- if nowrap
    -- eol = "¶"
}

-- Автодополнение (встроенное в Neovim)
-- opt.completeopt = 'menuone,noselect'
