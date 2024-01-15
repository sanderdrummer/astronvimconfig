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
  -- "psliwka/vim-smoothie",
  -- "MarcWeber/vim-addon-manager",
  "editorconfig/editorconfig-vim",
  -- "edluffy/hologram.nvim",
  -- "MunifTanjim/nui.nvim",
  {
    "AckslD/nvim-neoclip.lua",
    lazy = false,
    config = function() require("neoclip").setup() end,
  },
  -- {
  --   "m4xshen/hardtime.nvim",
  --   lazy = false,
  --   config = function()
  --     require("hardtime").setup {
  --       enabled = false,
  --       disabled_keys = {
  --         ["<LEFT>"] = {},
  --         ["<RIGHT>"] = {},
  --         ["<UP>"] = {},
  --         ["<DOWN>"] = {},
  --       },
  --       disable_mouse = false,
  --     }
  --   end,
  -- },
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
