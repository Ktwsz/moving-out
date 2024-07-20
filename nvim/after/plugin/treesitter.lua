require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = {"c", "lua", "rust", "go", "haskell", "python"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

vim.api.nvim_set_hl(0, "@function", { link = "function" })
vim.api.nvim_set_hl(0, "@function.builtin", { link = "function" })
vim.api.nvim_set_hl(0, "@function.call", { link = "function" })
vim.api.nvim_set_hl(0, "@function.macro", { link = "function" })
vim.api.nvim_set_hl(0, "@function.method", { link = "function" })
vim.api.nvim_set_hl(0, "@function.method.call", { link = "function" })
vim.api.nvim_set_hl(0, "@constructor", { link = "function" })


vim.api.nvim_set_hl(0, "@variable", { link = "variable" })
vim.api.nvim_set_hl(0, "@variable.builtin", { link = "variable" })
vim.api.nvim_set_hl(0, "@variable.parameter", { link = "variable" })
vim.api.nvim_set_hl(0, "@variable.parameter.builtin", { link = "variable" })
vim.api.nvim_set_hl(0, "@variable.member", { link = "variable" })

vim.api.nvim_set_hl(0, "@constant.builtin", { link = "constant" })
vim.api.nvim_set_hl(0, "@module.builtin", { link = "module" })
vim.api.nvim_set_hl(0, "@type.builtin", { link = "type" })
