return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--hidden",
          "--glob",
          "!**/.git/*",
        },
        file_ignore_patterns = { "node_modules", "dist", "build" },
      },
      pickers = {
        find_files = {
          hidden = true,
        },
      },
    },
  },
}
