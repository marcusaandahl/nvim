local wk = require("which-key")
local hop = require("hop")
local directions = require("hop.hint").HintDirection
-- local harpoon = require("harpoon")
local gitsigns = require("gitsigns")
local telescope = require("telescope.builtin")

-- harpoon:setup()

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

  -- Harpoon
  -- {
  --   mode = "n",
  --   {
  --     "<leader>a",
  --     function() harpoon:list():add() end,
  --     desc = "[A]dd to Harpoon",
  --     remap = true
  --   },
  --   {
  --     "<leader>r",
  --     function() harpoon:list():remove() end,
  --     desc = "[R]emove from Harpoon",
  --     remap = true
  --   },
  --   {
  --     "<C-e>",
  --     function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
  --     desc = "Edit Harpoon",
  --     remap = true
  --   },
  --   {
  --     "<C-z>",
  --     function() harpoon:list().select(1) end,
  --     desc = "Select Harpoon 1",
  --     remap = true
  --   },
  --   {
  --     "<C-x>",
  --     function() harpoon:list().select(2) end,
  --     desc = "Select Harpoon 2",
  --     remap = true
  --   },
  --   {
  --     "<C-c>",
  --     function() harpoon:list().select(3) end,
  --     desc = "Select Harpoon 3",
  --     remap = true
  --   },
  --   {
  --     "<C-v>",
  --     function() harpoon:list().select(4) end,
  --     desc = "Select Harpoon 4",
  --     remap = true
  --   },
  --   {
  --     "<C-n>",
  --     function() harpoon:list().next() end,
  --     desc = "Harpoon Previous",
  --     remap = true
  --   },
  --   {
  --     "<C-m>",
  --     function() harpoon:list().next() end,
  --     desc = "Harpoon Next",
  --     remap = true
  --   },
  -- },

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
