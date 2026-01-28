return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    local nvim_treesitter = require("nvim-treesitter")
    nvim_treesitter.setup {
      -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
      install_dir = vim.fn.stdpath('data') .. '/site'
    }
    nvim_treesitter.install {
      "typescript",
      "tsx",
      "json",
      "markdown",
      "markdown_inline",
      "html",
      "latex",
      "yaml",
    }
  end
}
