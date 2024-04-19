return {
  'smoka7/hop.nvim',
  config = function()
    -- Hop configuration
    vim.api.nvim_set_keymap('', 'S', '<cmd>HopChar1MW<CR>', {})
    vim.api.nvim_set_keymap('', 's', '<cmd>HopChar1<CR>', {})
    -- you can configure Hop the way you like here; see :h hop-config
    require('hop').setup {}
  end,
}
