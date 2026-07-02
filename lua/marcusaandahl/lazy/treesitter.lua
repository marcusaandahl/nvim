return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    local nvim_treesitter = require("nvim-treesitter")
    nvim_treesitter.setup {
      -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
      install_dir = vim.fn.stdpath('data') .. '/site',
      ensure_installed = { "go", "gomod", "gosum", "gowork" },
        highlight = {
          enable = true, -- Must be explicitly enabled
        },
    }
    nvim_treesitter.install({
      "typescript",
      "javascript",
      "tsx",
      "markdown",
      "markdown_inline",
      "latex",
      "json",
      "yaml",
      "html",
      "css",
      "svelte",
      "rust",
      "python",
      "go",
      "gomod",
      "gosum"
    })
  end
}
