local lsp = require('lsp-zero')


lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'hls',
    'gopls',
    'clangd',
    'jedi_language_server',
    'rust_analyzer',
    'elp',
  }, 
  handlers = {
    lsp.default_setup,
  },
})

-- require("lspconfig").clangd.setup {
--     init_options = {
--         fallbackFlags = {'--std=c++20'}
--     },
-- }

lsp.preset("recommended")

local cmp = require('cmp')
local cmp_action = lsp.cmp_action()

cmp.setup({
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
    }),
    sources = {
        {name = 'nvim_lsp'},
    },
})
