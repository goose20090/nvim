Snacks.toggle
  .new({
    name = 'Inline Diagnostics',
    get = function() return not not vim.diagnostic.config().virtual_text end,
    set = function(state) vim.diagnostic.config { virtual_text = state } end,
  })
  :map '<leader>td'

Snacks.toggle
  .new({
    name = 'Autoformat on Save',
    get = function() return vim.g.autoformat end,
    set = function(state) vim.g.autoformat = state end,
  })
  :map '<leader>tf'

Snacks.toggle.inlay_hints():map '<leader>th'

Snacks.toggle
  .new({
    name = 'Git Blame Line',
    get = function() return require('gitsigns.config').config.current_line_blame end,
    set = function() require('gitsigns').toggle_current_line_blame() end,
  })
  :map '<leader>tb'

Snacks.toggle
  .new({
    name = 'Copilot',
    get = function() return vim.b.copilot_suggestion_auto_trigger end,
    set = function() require('copilot.suggestion').toggle_auto_trigger() end,
  })
  :map '<leader>tc'

Snacks.toggle
  .new({
    name = 'NES',
    get = function() return require('sidekick.nes').enabled end,
    set = function() require('sidekick.nes').toggle() end,
  })
  :map '<leader>tn'
