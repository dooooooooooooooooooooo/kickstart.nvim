return {
  'stevearc/aerial.nvim',
  opts = {
    backends = { 'lsp', 'treesitter' },

    update_delay = 300,
    filter_kind = false,

    show_guides = true,
    icons = {},
  },
  keys = {
    { '<leader>cs', '<cmd>AerialToggle<CR>', desc = 'Toggle Symbol Outline' },
    { '<leader>cn', '<cmd>AerialNavToggle<CR>', desc = 'Toggle Symbol Navigation' },
  },
  event = { 'BufReadPost', 'BufNewFile' },
}
