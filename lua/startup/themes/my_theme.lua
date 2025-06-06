-- mostly taken from the 'evil' theme from the startup repo
local settings = {
  -- every line should be same width without escaped \
  header = {
    type = 'text',
    align = 'center',
    fold_section = false,
    title = 'Header',
    margin = 5,
    content = require('startup.headers').persona_header_only,
    highlight = 'Statement',
    default_color = '',
    oldfiles_amount = 0,
  },
  header_2 = {
    type = 'text',
    oldfiles_directory = false,
    align = 'center',
    fold_section = false,
    title = 'Quote',
    margin = 5,
    content = require('startup.functions').quote(),
    highlight = 'Constant',
    default_color = '',
    oldfiles_amount = 0,
  },
  -- name which will be displayed and command
  body_2 = {
    type = 'oldfiles',
    oldfiles_directory = true,
    align = 'center',
    fold_section = false,
    title = 'Oldfiles of Directory',
    margin = 5,
    content = {},
    highlight = 'TSString',
    default_color = '#FFFFFF',
    oldfiles_amount = 5,
  },
  footer = {
    type = 'oldfiles',
    oldfiles_directory = false,
    align = 'center',
    fold_section = false,
    title = 'Oldfiles',
    margin = 5,
    content = { 'startup.nvim' },
    highlight = 'TSString',
    default_color = '#FFFFFF',
    oldfiles_amount = 5,
  },

  clock = {
    type = 'text',
    content = function()
      local clock = ' ' .. os.date '%H:%M'
      local date = ' ' .. os.date '%d-%m-%y'
      return { clock, date }
    end,
    oldfiles_directory = false,
    align = 'center',
    fold_section = false,
    title = '',
    margin = 5,
    highlight = 'TSString',
    default_color = '#FFFFFF',
    oldfiles_amount = 10,
  },

  footer_2 = {
    type = 'text',
    content = require('startup.functions').packer_plugins(),
    oldfiles_directory = false,
    align = 'center',
    fold_section = false,
    title = '',
    margin = 5,
    highlight = 'TSString',
    default_color = '#FFFFFF',
    oldfiles_amount = 10,
  },

  options = {
    after = function()
      require('startup.utils').oldfiles_mappings()
    end,
    mapping_keys = true,
    cursor_column = 0.5,
    empty_lines_between_mappings = true,
    disable_statuslines = true,
    paddings = { 2, 2, 2, 2, 2, 2, 2 },
  },
  colors = {
    background = '#1f2227',
    folded_section = '#56b6c2',
  },
  parts = {
    'header',
    'header_2',
    'body_2',
    'footer',
    'clock',
    'footer_2',
  },
}
return settings
