require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}

-- Cấu hình nvim-ts-autotag
require('nvim-ts-autotag').setup({
  -- Tự động thụt lề cho các tệp HTML, JSX, TSX, và JS
  autotag_filetypes = {'html', 'jsx', 'tsx', 'js'},
  -- Tự động đóng mở thẻ HTML
  tagbar_autoclose = true,
})

