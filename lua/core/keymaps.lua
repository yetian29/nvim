local keymap = vim.keymap.set
vim.g.mapleader = " "	

keymap('n', '<leader>e', vim.diagnostic.open_float) -- Xem chi tiết lỗi	

keymap('n', '[d', vim.diagnostic.goto_prev) -- Di chuyển giữa các lỗi ([d và ]d)	
keymap('n', ']d', vim.diagnostic.goto_next)

keymap('n', '<leader>q', vim.diagnostic.setloclist)	-- Xem danh sách tất cả lỗi 	
     
keymap('i', '<C-j>', '<Esc>', { noremap = true, desc = "Switch to normal mode" })
