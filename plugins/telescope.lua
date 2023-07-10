return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    opts.extensions = {
      file_browser = {
        cwd_to_path = true,
      },
    }
    return opts
  end,
}
