return {
  'phaazon/hop.nvim',
  branch = 'v2', -- optional but strongly recommended
  config = function()
    -- Hop configuration
    vim.api.nvim_set_keymap('', '<Tab>', '<cmd>HopChar1MW<CR>', {})
    -- vim.api.nvim_set_keymap('n', 't', '<cmd>HopPattern<CR>', { noremap = true })
    -- you can configure Hop the way you like here; see :h hop-config
    require('hop').setup { keys = 'etovxqpdygfblzhckisuran' }
  end,
}
