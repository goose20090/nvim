return {
  'zbirenbaum/copilot.lua',
  dependencies = {
    'copilotlsp-nvim/copilot-lsp', -- optional for NES functionality
  },
  cmd = 'Copilot',
  event = 'InsertEnter',
  keys = {
    {
      '<leader>tc',
      function()
        require('copilot.suggestion').toggle_auto_trigger()
        local enabled = vim.b.copilot_suggestion_auto_trigger
        vim.notify(enabled and 'Copilot enabled' or 'Copilot disabled')
      end,
      desc = '[T]oggle [C]opilot',
    },
  },
  config = function()
    require('copilot').setup {
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = '<Tab>',
        },
      },
    }
  end,
}
