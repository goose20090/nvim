return {
  'sindrets/diffview.nvim',
  cmd = { 'DiffviewOpen', 'DiffviewFileHistory' },
  keys = {
    { '<leader>vd', '<cmd>DiffviewOpen<CR>', desc = 'Diffview: Open' },
    { '<leader>vf', '<cmd>DiffviewFileHistory %<CR>', desc = 'Diffview: File history' },
    { '<leader>vx', '<cmd>DiffviewClose<CR>', desc = 'Diffview: Close' },
  },
  opts = {},
}
