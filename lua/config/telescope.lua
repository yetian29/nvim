local telescope = require("telescope")
telescope.setup({
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown({})
    }
  }
})
telescope.load_extension("ui-select")

-- Telescope keybindings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files) -- Tìm tập tin.
vim.keymap.set('n', '<leader>fg', builtin.live_grep) --  Live grep (tìm kiếm trong các tập tin).
vim.keymap.set('n', '<leader>fb', builtin.buffers) -- Hiển thị bộ đệm mở.
vim.keymap.set('n', '<leader>fh', builtin.help_tags) -- Hiển thị thẻ trợ giúp.
