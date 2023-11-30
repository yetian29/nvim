require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}

-- Cấu hình nvim-ts-autotagk
require('nvim-ts-autotag').setup({
  -- Tự động thụt lề cho các tệp HTML, JSX, TSX, và JS
  autotag_filetypes = {'html', 'jsx', 'tsx', 'js'},
  -- Tự động đóng mở thẻ HTML
  tagbar_autoclose = true,
})
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

