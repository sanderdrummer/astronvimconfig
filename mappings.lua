-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    ["q"] = { "<Esc>" },
    ["x"] = { '"_x' },
    -- second key is the lfthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>xc"] = { "<cmd>ZenMode <CR>" },
    ["<leader>b"] = { name = "Buffers" },
    ["<C-a>"] = {
      function() require("harpoon.mark").add_file() end,
    },
    ["<Cmd+a>"] = {
      function() require("harpoon.ui").toggle_quick_menu() end,
    },
    ["<Cmd>a"] = {
      function() require("harpoon.ui").toggle_quick_menu() end,
    },
    ["<Cmd-a>"] = {
      function() require("harpoon.ui").toggle_quick_menu() end,
    },
    ["<leader>a"] = {
      function() require("harpoon.ui").toggle_quick_menu() end,
    },
    ["<leader>ee"] = {
      function() require("dropbar.api").pick() end,
    },
    ["<leader>Sa"] = {
      function() require("cd-project.api").add_current_project() end,
    },
    ["<leader>Sb"] = {
      function() require("cd-project.api").back() end,
    },
    ["<leader>Ss"] = {
      "<cmd>CdProject <CR>",
    },
    ["<leader>fd"] = { "<cmd>Telescope dir live_grep<CR>" },
  },
  v = {
    ["x"] = { '"_x' },
  },
}
