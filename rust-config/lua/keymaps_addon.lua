-- some addon custom automatization

-- return error
-- map('n', '<C-n>', [[:NvimTreeToggle<CR>]], {})

nm('<C-y>', '<cmd>w | ! clear; cargo test -- --show-output<CR>')
nm('<C-l>', '<cmd>w | ! clear; cargo rustc -- -Awarnings<CR>')
