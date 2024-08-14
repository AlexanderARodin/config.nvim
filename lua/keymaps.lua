local map = vim.api.nvim_set_keymap 

function nm(key, command) 
	map('n', key, command, {noremap = true})
end

function im(key, command)
	map('i', key, command, {noremap = true})
end

function vm(key, command)
	map('v', key, command, {noremap = true})
end

function tm(key, command)
	map('t', key, command, {noremap = true})
end

-- main key binds
map('i', 'jk', '<ESC>', {})
map('n', '<C-n>', [[:NvimTreeToggle<CR>]], {})



-- some custom automatization
nm('<C-y>', '<cmd>w | ! clear; make run <CR>')

