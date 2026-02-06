return {
  'saghen/blink.cmp',
  event = 'InsertEnter',
  version = '1.*',
  opts = {
    keymap = {
      ['<C-n>'] = { 'select_next', 'fallback' },
      ['<C-p>'] = { 'select_prev', 'fallback' },
      ['<C-y>'] = { 'accept', 'fallback' },
      ['<C-Space>'] = { 'show' },
      ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
      ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
    },
    signature = { enabled = true },
    sources = {
      default = { 'lsp', 'path', 'buffer' },
    },
  },
}
