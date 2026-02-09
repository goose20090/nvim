return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  config = function()
    local npairs = require 'nvim-autopairs'
    local Rule = require 'nvim-autopairs.rule'
    local cond = require 'nvim-autopairs.conds'

    npairs.setup {}

    npairs.add_rules {
      Rule('<%', ' %>', { 'eruby', 'eruby.html' }),
    }
  end,
}
