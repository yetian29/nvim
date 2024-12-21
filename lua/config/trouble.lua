require("trouble").setup({})

-- Trouble keybindings
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>") -- Hiển thị tất cả các chẩn đoán (lỗi, cảnh báo, vv)
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>") -- Hiển thị chẩn đoán cho toàn bộ không gian làm việc (tất cả các tệp).
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>") -- Hiển thị chẩn đoán cho tệp hiện tại (tài liệu).
