vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'tanvirtin/monokai.nvim'
  use 'mg979/vim-visual-multi'
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    requires = { 'nvim-lua/plenary.nvim' }
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  use("theprimeagen/harpoon")
  use {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v2.x',
            requires = {
                -- LSP Support
                {'neovim/nvim-lspconfig'},             -- Required
                {                                      -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }


use {
  "Pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup({
      enabled = false,
      debounce_delay = 500,
       on_after_save = nil,
    })

    -- Bật auto-save khi vào chế độ chèn
    vim.cmd([[
      augroup AutoSaveOnInsertEnter
        autocmd!
        autocmd InsertEnter * AutoSaveEnable
      augroup END
    ]])

    -- Tắt auto-save khi rời khỏi chế độ chèn
    vim.cmd([[
      augroup AutoSaveOnInsertLeave
        autocmd!
        autocmd InsertLeave * AutoSaveDisable
      augroup END
    ]])
  end,
}


use {
  "windwp/nvim-autopairs",
  config = function() require("nvim-autopairs").setup {} end
}

use {
  'windwp/nvim-ts-autotag',
  config = function() require('nvim-ts-autotag').setup {} end
}


use 'prettier/vim-prettier'

use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
end)



