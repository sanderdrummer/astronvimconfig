-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
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
  -- { import = "astrocommunity.media.image-nvim" },
  -- DiffviewOpen
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.editing-support.multicursors-nvim" },
  -- { import = "astrocommunity.bars-and-lines.dropbar-nvim" },
}
