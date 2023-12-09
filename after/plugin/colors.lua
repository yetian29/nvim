require('monokai').setup {}
require('monokai').setup { palette = require('monokai').soda }
require('monokai').setup { italics = false }

vim.cmd('hi Normal guibg=#1c1c1c')

vim.cmd[[
  augroup HighlightCurrentLine
    autocmd!
    autocmd WinEnter,WinLeave * set cursorline
    autocmd InsertEnter * set nocursorline
    autocmd InsertLeave * set cursorline
    autocmd CursorMoved * set cursorline
    autocmd WinEnter,BufWinEnter,FocusGained * set cursorline
    autocmd WinLeave,BufWinLeave,FocusLost * set nocursorline
      autocmd CursorMoved * hi CursorLineNR guifg=#14ff14
  augroup END
]]

