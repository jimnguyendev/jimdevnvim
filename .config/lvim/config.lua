lvim.format_on_save.enabled = true
lvim.colorscheme = "lunar"
lvim.transparent_window = true
lvim.builtin.dap.active = true

-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- delete single character without copying into register
lvim.keys.normal_mode["x"] = '"_x'
vim.keymap.set("n", "<C-a>", "gg<S-v>G")
vim.keymap.set('n', 'te', ':tabedit')

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})

-- Split window
vim.keymap.set('n', 'ss', ':split<Return><C-w>w')
vim.keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
  "php",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    exe = "prettier",
    filetypes = {
      "javascriptreact",
      "javascript",
      "typescriptreact",
      "typescript",
      "vue",
      "json",
      "markdown",
      "css",
      "scss"
    },
  },
}

-- Additional Plugins

lvim.plugins = {
  {
    "dinhhuy258/git.nvim",
    config = function()
      require("git").setup {
        keymaps = {
          diff = "<Leader>gd",
          diff_close = "<Leader>gD",
          revert = "<Leader>gr",
          revert_file = "<Leader>gR",
        }
      }
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "sindrets/diffview.nvim",
    event = "BufRead",
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "*"; })
    end,
  },
}
