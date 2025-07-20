return {
  {
    'karb94/neoscroll.nvim',
    event = 'VeryLazy',
    opts = {
      hide_cursor = true,
      duration_multiplier = 0.35,
      mappings = {
        -- keys to be mapped to their corresponding default scrolling animation
        '<C-u>',
        '<C-d>',
        '<C-b>',
        'zt',
        'zz',
        'zb',
      },
    },
  },
  {
    'sphamba/smear-cursor.nvim',
    event = 'VeryLazy',
    opts = {
      stiffness = 0.7,
    },
  },
  {
    'dstein64/nvim-scrollview',
  },
}
