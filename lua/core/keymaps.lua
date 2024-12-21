local keymap = vim.keymap.set
vim.g.mapleader = " "	

keymap('n', '<leader>e', vim.diagnostic.open_float) -- Xem chi tiết lỗi	

keymap('n', '[d', vim.diagnostic.goto_prev) -- Di chuyển giữa các lỗi ([d và ]d)	
keymap('n', ']d', vim.diagnostic.goto_next)

keymap('n', '<leader>q', vim.diagnostic.setloclist)	-- Xem danh sách tất cả lỗi 	
     
keymap('i', '<C-i>', '<Esc>', { noremap = true, desc = "Switch to normal mode" })

-- Di chuyển dòng lên
keymap('n', '<C-k>', ':m .-2<CR>==', { noremap = true, silent = true })
keymap('i', '<C-k>', '<Esc>:m .-2<CR>==gi', { noremap = true, silent = true })
keymap('v', '<C-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Di chuyển dòng xuống
keymap('n', '<C-j>', ':m .+1<CR>==', { noremap = true, silent = true })
keymap('i', '<C-j>', '<Esc>:m .+1<CR>==gi', { noremap = true, silent = true })
keymap('v', '<C-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
