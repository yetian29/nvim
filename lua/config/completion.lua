
local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(), -- Kích hoạt quá trình hoàn thành mã
    ['<C-e>'] = cmp.mapping.abort(), -- Hủy bỏ quá trình hoàn thành mã hiện tại.
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Xác nhận lựa chọn hiện tại trong danh sách hoàn thành.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'path' },
  }),
})
