return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
      "ray-x/lsp_signature.nvim",
    },

    config = function()
      require("config.lsp")
    end,

  }
}
