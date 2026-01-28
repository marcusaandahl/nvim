return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({
      current_line_blame_formatter = '<author>, <author_time:%R> - <summary>', -- Add commit id?
    })
  end
}
