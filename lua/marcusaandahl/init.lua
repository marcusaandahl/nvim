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
vim.cmd.colorscheme "catppuccin-mocha"

-- LSP SETTINGS
vim.lsp.enable("lua_ls") -- brew install lua-language-server
vim.lsp.enable("jdtls") -- brew install jdtls
vim.lsp.enable("ts_ls") -- npm install -g typescript-language-server typescript
vim.lsp.enable("bashls") -- npm i -g bash-language-server
vim.lsp.enable("tailwindcss") -- npm install -g @tailwindcss/language-server
vim.lsp.enable("svelte") -- npm install -g svelte-language-server
vim.lsp.enable("rust_analyzer") -- brew install rust-analyzer
vim.lsp.enable("pyright") -- npm install -g pyright
vim.lsp.enable("docker_language_server") -- go install github.com/docker/docker-language-server/cmd/docker-language-server@latest
vim.lsp.enable("cssmodules_ls") -- npm install -g cssmodules-language-server
vim.lsp.enable("css_variables") -- npm i -g css-variables-language-server


-- ENABLE HIGHLIGHTING
vim.api.nvim_create_autocmd('FileType', {
  pattern = {
    'lua',
    'svelte',
    'ts',
    'js',
    'tsx',
    'jsx',
    'mts',
    'mjs',
    'json',
    'html',
    'css',
    'rs',
    'java',
    'yaml',
    'md',
    'py'
  },
  callback = function() vim.treesitter.start() end,
})

-- KEY MAPPINGS
require("marcusaandahl.keys")
