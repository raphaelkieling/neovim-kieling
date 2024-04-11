-- return {
--   'catppuccin/nvim',
--   name = 'catppuccin',
--   priority = 1000,
--   config = function()
--     require('catppuccin').setup {}
--     vim.cmd 'colorscheme catppuccin'
--   end,
-- }
return {
  'rose-pine/neovim',
  name = 'rose-pine',
  config = function()
    require('rose-pine').setup {
      variant = 'auto',
    }
    vim.cmd 'colorscheme rose-pine'
  end,
}
