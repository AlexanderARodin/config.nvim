-- some addon custom automatization

-- return error
-- map('n', '<C-n>', [[:NvimTreeToggle<CR>]], {})

nm('<C-y>', '<cmd>wa | ! clear; cargo test -- --show-output<CR>')
nm('<C-l>', '<cmd>wa | ! clear; cargo rustc -- -Awarnings<CR>')
