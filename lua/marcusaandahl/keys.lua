local wk = require("which-key")
local hop = require("hop")
local directions = require("hop.hint").HintDirection
local gitsigns = require("gitsigns")
local telescope = require("telescope.builtin")

wk.add({
  {
    "<leader>f",
    group = "[F]ile",
    {
      mode = "n",
      "<leader>ft",
      "<CMD>NvimTreeToggle<CR>",
      desc = "[F]ile [T]oggle",
    },
    -- Telescope
    {
      mode = "n",
      "<leader>ff",
      telescope.find_files,
      desc = "[F]ile [F]ind"
    },
    {
      mode = "n",
      "<leader>fg",
      telescope.live_grep,
      desc = "[F]ile [G]rep"
    },
  },

  -- Format
  {
    mode = "n",
    "<leader>o",
    group = "F[O]rmat",
    function()
      vim.lsp.buf.format { async = true }
    end
  },

  -- Git
  {
    mode = "n",
    "<leader>g",
    group = "[G]it",
    {
      "<leader>gb",
      gitsigns.toggle_current_line_blame,
      desc = "[G]it [B]lame"
    },
    {
      "<leader>gd",
      gitsigns.toggle_word_diff,
      desc = "[G]it [D]iff"
    }
  },

  -- Hop
  {
    {
      mode = { "n", "v" },
      "f",
      function()
        hop.hint_char1({ direction = directions.AFTER_CURSOR })
      end,
      remap = true,
    },
    {
      mode = { "n", "v" },
      "F",
      function()
        hop.hint_char1({ direction = directions.BEFORE_CURSOR })
      end,
      remap = true,
    },
    {
      mode = { "n", "v" },
      "t",
      function()
        hop.hint_char1({ direction = directions.AFTER_CURSOR, hint_offset = -1 })
      end,
      remap = true,
    },
    {
      mode = { "n", "v" },
      "T",
      function()
        hop.hint_char1({ direction = directions.BEFORE_CURSOR, hint_offset = 1 })
      end,
      remap = true,
    },
  },
})
