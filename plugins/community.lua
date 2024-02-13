return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.colorscheme.nord-nvim" },
  { import = "astrocommunity.colorscheme.kanagawa-nvim" },
  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  { import = "astrocommunity.colorscheme.rose-pine" },
  { import = "astrocommunity.color.modes-nvim" },
  { import = "astrocommunity.scrolling.vim-smoothie" },
  { import = "astrocommunity.project.nvim-spectre" },
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  { import = "astrocommunity.pack.php" },
  { import = "astrocommunity.media.image-nvim" },
  -- DiffviewOpen
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.editing-support.multicursors-nvim" },
  { import = "astrocommunity.bars-and-lines.dropbar-nvim" },
  -- { -- further customize the options set by the community
  --   "copilot.lua",
  --   opts = {
  --     suggestion = {
  --       keymap = {
  --         accept = "<C-l>",
  --         accept_word = false,
  --         accept_line = false,
  --         next = "<C-.>",
  --         prev = "<C-,>",
  --         dismiss = "<C-/>",
  --       },
  --     },
  --   },
  -- },
}
