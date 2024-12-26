local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Configure language servers
local servers = { "pyright", "ts_ls" }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    capabilities = capabilities,
  })
end

lspconfig.pyright.setup({
  capabilities = capabilities,
    settings = {
      python = {
	analysis = {
	  autoSearchPaths = true,
	  diagnosticMode = "workspace",
	  useLibraryCodeForTypes = true
	}
      }
    }
  })

-- LSP keybindings
local keymap = vim.keymap.set
keymap('n', 'gD', vim.lsp.buf.declaration) --  Nhảy đến declaration của biến/hàm
keymap('n', 'gd', vim.lsp.buf.definition) --  Nhảy đến definition (nơi implement)	
keymap('n', 'K', vim.lsp.buf.hover) -- Hiển thị documentation hover (như khi rê chuột vào code trong VSCode)
keymap('n', 'gi', vim.lsp.buf.implementation) -- Nhảy đến implementation (useful cho interface/abstract)
keymap('n', '<C-k>', vim.lsp.buf.signature_help) -- Hiển thị thông tin signature của hàm (parameters, return type)
keymap('n', '<space>D', vim.lsp.buf.type_definition) -- <space>D (Space + D): Nhảy đến type definition
keymap('n', '<space>rn', vim.lsp.buf.rename) -- <space>rn (Space + rn): Rename biến/hàm ở mọi nơi sử dụng
keymap('n', '<space>ca', vim.lsp.buf.code_action) -- <space>ca (Space + ca): Mở menu code actions (quick fixes, refactoring)
keymap('n', 'gr', vim.lsp.buf.references) -- Tìm tất cả references (nơi sử dụng) của biến/hàm

require("lsp_signature").setup({
  bind = true,
  handler_opts = {
    border = "rounded"
  }
})

vim.diagnostic.config({
    virtual_text = false,  -- Tắt thông báo lỗi dạng text ảo trong file
    signs = false,         -- Tắt các dấu hiệu bên lề (gutter)
		underline = false
})

