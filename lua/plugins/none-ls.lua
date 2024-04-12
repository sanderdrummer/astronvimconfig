-- Customize None-ls sources

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  dependencies = "davidmh/cspell.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"
    local cspell = require "cspell"
    local cspell_config = {
      diagnostics_postprocess = function(diagnostic)
        diagnostic.severity = vim.diagnostic.severity["HINT"] -- ERROR, WARN, INFO, HINT
      end,
      config = {
        find_json = function(_) return vim.fn.expand "~/.cspell.json" end,
        on_success = function(cspell_config_file_path, params, action_name)
          if action_name == "add_to_json" then
            os.execute(
              string.format(
                "cat %s | jq -S '.words |= sort' | tee %s > /dev/null",
                cspell_config_file_path,
                cspell_config_file_path
              )
            )
          end
        end,
      },
    }
    null_ls.setup {
      sources = {
        cspell.diagnostics.with(cspell_config),
        cspell.code_actions.with(cspell_config),
        null_ls.builtins.formatting.stylua.with {
          condition = function(utils) return utils.root_has_file { "stylua.toml", ".stylua.toml" } end,
        },
        null_ls.builtins.formatting.prettier.with {
          filetypes = { "yaml", "md", "markdown", "javascript", "typescript", "typescriptreact", "javascriptreact" },
        },
        null_ls.builtins.formatting.black,
      },
    }
    return config -- return final config table
  end,
}
