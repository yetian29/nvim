local builtin = require('telescope.builtin')

-- Use vim.api.nvim_set_keymap to set key mappings
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>lua require("telescope.builtin").find_files()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>g', '<cmd>lua require("telescope.builtin").git_files()<CR>', { noremap = true, silent = true })

-- Thiết lập phím tắt cho tìm kiếm từ khóa trong file đang mở
vim.api.nvim_set_keymap('n', '<Leader>tf', [[:lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], { noremap = true, silent = true })


