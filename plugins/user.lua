return {
  "editorconfig/editorconfig-vim",
  {
    "AckslD/nvim-neoclip.lua",
    lazy = false,
    config = function() require("neoclip").setup() end,
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
}
