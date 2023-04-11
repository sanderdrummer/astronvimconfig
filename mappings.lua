-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
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
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- harpoon
    ["<leader>q"] = {
      function() require("harpoon.mark").add_file() end,
    },
    ["<C-e>"] = {
      function() require("harpoon.ui").toggle_quick_menu() end,
    },
    ["<leader>,"] = {
      function() require("spectre").open() end,
    },
    ["<leader>,w"] = {
      function() require("spectre").open_visual { select_word = true } end,
    },
    ["<leader>,f"] = {
      function() require("spectre").open_file_search() end,
    },
    -- best remap
    ["<leader>p"] = { ":lua require('telescope').extensions.neoclip.default() <cr>" },
    -- open terminal
    ["<leader>t"] = { "<cmd>!kitty &<cr>" },
    ["<leader>d"] = { "<C-o>" },
    ["<leader>dd"] = { "<C-i>" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
