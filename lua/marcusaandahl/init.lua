vim.g.mapleader = " "

-- LAZY INIT
require("marcusaandahl.lazy_init")

-- VIM SETTINGS
vim.opt.clipboard = 'unnamedplus' -- Use system clipboard
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false -- Don't wrap text
vim.opt.incsearch = true
vim.opt.termguicolors = true -- Needed for theme

-- THEME SETTINGS
local tokyo = require("tokyonight")
tokyo.setup({
  style = "moon"
})
tokyo.load()

-- LSP SETTINGS
vim.lsp.enable("lua_ls") -- brew install lua-language-server
vim.lsp.enable("jdtls") -- brew install jdtls
vim.lsp.enable("ts_ls") -- npm install -g typescript-language-server typescript
vim.lsp.enable("bashls") -- npm i -g bash-language-server


-- ENABLE HIGHLIGHTING
vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function() vim.treesitter.start() end,
})

-- KEY MAPPINGS
require("marcusaandahl.keys")
