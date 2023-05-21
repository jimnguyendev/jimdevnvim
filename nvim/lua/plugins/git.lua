return {
  {
    "dinhhuy258/git.nvim",
    config = function()
      require("git").setup({
        keymaps = {
          diff = "<Leader>gd",
          diff_close = "<Leader>gD",
          revert = "<Leader>gr",
          revert_file = "<Leader>gR",
        },
      })
    end,
  },
}
