local status, nvimtree = pcall(require, "nvim-tree")
if (not status) then return end

nvimtree.setup({
  sort_by = "case_sensitive",
  actions = {
    open_file = { quit_on_open = true }
  },
  update_focused_file = {
    enable = true,
    update_cwd = true
  },
  filters = {
    custom = { '^.git$', '^node_modules$' }
  },
  git = {
    enable = false
  },
  log = {
    enable = true,
    types = {
      diagnostics = true
    }
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    debounce_delay = 50,
    icons = {
      hint = 'H',
      info = 'I',
      warning = 'W',
      error = 'E'
    }
  }
})

vim.keymap.set('n', '<c-e>', '<cmd>NvimTreeToggle<cr>')
