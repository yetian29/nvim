require("litee.lib").setup({})
require("litee.calltree").setup({})

-- Calltree keybindings
vim.keymap.set('n', '<leader>ct', ':LTOpenToCalltree<CR>') -- Điều hướng và hiểu các mối quan hệ giữa các chức năng trong mã
