return {
  'zbirenbaum/copilot.lua',
  dependencies = {
    'copilotlsp-nvim/copilot-lsp', -- optional for NES functionality
  },
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    -- Copilot requires Node >= 22. If the project node is too old,
    -- fall back to mise's latest node installation.
    local node = vim.fn.exepath 'node' or 'node'
    local major = tonumber(vim.fn.system(node .. ' --version'):match 'v(%d+)')
    if major and major < 22 then
      local mise_dir = vim.fn.trim(vim.fn.system 'mise where node@latest 2>/dev/null')
      if vim.v.shell_error == 0 and mise_dir ~= '' then
        node = mise_dir .. '/bin/node'
      end
    end

    require('copilot').setup {
      copilot_node_command = node,
      suggestion = {
        auto_trigger = false,
        keymap = {
          accept = '<Tab>',
        },
      },
    }
  end,
}
