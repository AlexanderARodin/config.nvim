-- some addon custom automatization
nm('<C-y>', '<cmd>w | ! clear; cargo test -- --show-output<CR>')
nm('<C-l>', '<cmd>w | ! clear; cargo rustc -- -Awarnings<CR>')
