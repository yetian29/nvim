
-- Map Ctrl + J in insert mode to act as Esc

vim.api.nvim_set_keymap('i', '<C-J>', '<Esc>', { noremap = true })

vim.api.nvim_set_var('mapleader', ' ')

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)


-- Hiển thị số dòng

vim.opt.nu = true
vim.opt.relativenumber = true

-- Chía cửa sổ


vim.api.nvim_set_keymap("n", "<C-f>", "<Cmd>split<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-l>", "<Cmd>vsplit<CR>", {noremap = true, silent = true})


vim.keymap.set("n", "<C-g>", "<C-w><C-w>", {noremap = true})
vim.keymap.set("n", "<C-w>", "<C-w>q", {noremap = true})

-- Di chuyển dòng xuống

vim.api.nvim_set_keymap('n', '<C-M>', ':m .+1<CR>', { noremap = true, silent = true })

-- Di chuyển dòng lên

vim.api.nvim_set_keymap('n', '<C-U>', ':m .-2<CR>', { noremap = true, silent = true })

-- Di chuyển khối mã lên
vim.api.nvim_set_keymap('x', '<C-U>', ":move '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Di chuyển khối mã xuống
vim.api.nvim_set_keymap('x', '<C-M>', ":move '>+1<CR>gv=gv", { noremap = true, silent = true })




