return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  event = { "BufReadPost", "BufNewFile" }, -- Load as soon as a file opens
  build = ':TSUpdate',
  config = function()
    local nvim_treesitter = require("nvim-treesitter")

    local to_install = {
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
    }

    nvim_treesitter.setup {
      -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
      install_dir = vim.fn.stdpath('data') .. '/site',
      ensure_installed = to_install,
      sync_install = true, 
      auto_install = true,
      highlight = {
        enable = true, -- Must be explicitly enabled
      },
    }
    nvim_treesitter.install(to_install)
  end
}
