return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },

  {
    "ThePrimeagen/harpoon",
    config = function()
      require("harpoon").setup {
        save_on_toggle = false, -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
        save_on_change = true, -- saves the harpoon file upon every change. disabling is unrecommended.
        enter_on_sendcmd = false, -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
        tmux_autoclose_windows = false, -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
        excluded_filetypes = { "harpoon" }, -- filetypes that you want to prevent from adding to the harpoon list menu.
        mark_branch = false, -- set marks specific to each git branch inside git repository
        menu = {
          width = vim.api.nvim_win_get_width(0) - 4,
        },
      }
    end,
  },
  "psliwka/vim-smoothie",
  "editorconfig/editorconfig-vim",
  "edluffy/hologram.nvim",
  "MunifTanjim/nui.nvim",
  {
    "AckslD/nvim-neoclip.lua",
    lazy = false,
    config = function() require("neoclip").setup() end,
  },
  {
    "m4xshen/hardtime.nvim",
    lazy = false,
    config = function()
      require("hardtime").setup {
        disabled_keys = {
          ["<LEFT>"] = {},
          ["<RIGHT>"] = {},
          ["<UP>"] = {},
          ["<DOWN>"] = {},
        },
        disable_mouse = false,
      }
    end,
  },
  {
    "gbprod/yanky.nvim",
    dependencies = { { "kkharji/sqlite.lua", enabled = not jit.os:find "Windows" } },
    opts = function()
      local mapping = require "yanky.telescope.mapping"
      local mappings = mapping.get_defaults()
      mappings.i["<c-p>"] = nil
      return {
        highlight = { timer = 200 },
        ring = { storage = jit.os:find "Windows" and "shada" or "sqlite" },
        picker = {
          telescope = {
            use_default_mappings = false,
            mappings = mappings,
          },
        },
      }
    end,
    keys = {
      {
        "<leader>p",
        function() require("telescope").extensions.yank_history.yank_history {} end,
        desc = "Open Yank History",
      },
      { "y", "<Plug>(YankyYank)", mode = { "n", "x" }, desc = "Yank text" },
      { "p", "<Plug>(YankyPutAfter)", mode = { "n", "x" }, desc = "Put yanked text after cursor" },
      { "P", "<Plug>(YankyPutBefore)", mode = { "n", "x" }, desc = "Put yanked text before cursor" },
      { "gp", "<Plug>(YankyGPutAfter)", mode = { "n", "x" }, desc = "Put yanked text after selection" },
      { "gP", "<Plug>(YankyGPutBefore)", mode = { "n", "x" }, desc = "Put yanked text before selection" },
      { "[y", "<Plug>(YankyCycleForward)", desc = "Cycle forward through yank history" },
      { "]y", "<Plug>(YankyCycleBackward)", desc = "Cycle backward through yank history" },
      { "]p", "<Plug>(YankyPutIndentAfterLinewise)", desc = "Put indented after cursor (linewise)" },
      { "[p", "<Plug>(YankyPutIndentBeforeLinewise)", desc = "Put indented before cursor (linewise)" },
      { "]P", "<Plug>(YankyPutIndentAfterLinewise)", desc = "Put indented after cursor (linewise)" },
      { "[P", "<Plug>(YankyPutIndentBeforeLinewise)", desc = "Put indented before cursor (linewise)" },
      { ">p", "<Plug>(YankyPutIndentAfterShiftRight)", desc = "Put and indent right" },
      { "<p", "<Plug>(YankyPutIndentAfterShiftLeft)", desc = "Put and indent left" },
      { ">P", "<Plug>(YankyPutIndentBeforeShiftRight)", desc = "Put before and indent right" },
      { "<P", "<Plug>(YankyPutIndentBeforeShiftLeft)", desc = "Put before and indent left" },
      { "=p", "<Plug>(YankyPutAfterFilter)", desc = "Put after applying a filter" },
      { "=P", "<Plug>(YankyPutBeforeFilter)", desc = "Put before applying a filter" },
    },
  },
  {
    "princejoogie/dir-telescope.nvim",
    config = function()
      require("dir-telescope").setup {
        -- these are the default options set
        hidden = true,
        no_ignore = false,
        show_preview = true,
      }
    end,
  },
  -- {
  --   "nvim-telescope/telescope-file-browser.nvim",
  -- },
}
