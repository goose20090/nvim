vim.g.startup_bookmarks = {
  ['N'] = '~/.config/nvim/init.lua',
  ['F'] = '~/.config/fish/config.fish',
  ['G'] = '~/.config/ghostty/config',
}
return {
  'startup-nvim/startup.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-file-browser.nvim' },
  config = function()
    require('startup').setup { theme = 'my_theme' }
  end,
}
