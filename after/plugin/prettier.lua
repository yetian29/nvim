vim.g.prettier_config_options = {
  jsxSingleQuote = 'false',
  indent_size = 4,
}

vim.api.nvim_exec([[
  autocmd QuickFixCmdPost [^l]* cclose
]], false)

vim.g.prettier_quickfix_enabled = 0
vim.g.prettier_quickfix_auto_focus = 0

vim.g.prettier_autoformat = 0

vim.cmd([[
  augroup PrettierAutoFormat
    autocmd!
    autocmd TextChanged *.js,*.jsx,*.ts,*.tsx,*.json,*.css,*.scss,*.md,*.html :PrettierAsync
  augroup END
]])

