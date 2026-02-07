return {
  'tpope/vim-rails',
  ft = { 'ruby', 'eruby' },
  keys = {
    { '<leader>ra', '<cmd>A<CR>', desc = '[A]lternate file' },
    { '<leader>rr', '<cmd>R<CR>', desc = '[R]elated file' },
    { '<leader>rm', '<cmd>Emodel<CR>', desc = '[M]odel' },
    { '<leader>rc', '<cmd>Econtroller<CR>', desc = '[C]ontroller' },
    { '<leader>rv', ':Eview ', desc = '[V]iew' },
    { '<leader>rs', '<cmd>Espec<CR>', desc = '[S]pec' },
    { '<leader>ri', '<cmd>Emigration<CR>', desc = 'M[i]gration' },
    { '<leader>rh', '<cmd>Ehelper<CR>', desc = '[H]elper' },
    { '<leader>rfm', ':Emodel ', desc = '[F]ind [M]odel' },
    { '<leader>rfc', ':Econtroller ', desc = '[F]ind [C]ontroller' },
    { '<leader>rfs', ':Espec ', desc = '[F]ind [S]pec' },
    { '<leader>rfi', ':Emigration ', desc = '[F]ind M[i]gration' },
    { '<leader>rfh', ':Ehelper ', desc = '[F]ind [H]elper' },
  },
}
