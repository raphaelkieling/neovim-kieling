-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- local plugin_bracket = require 'custom.ownplugins.bracket'
-- plugin_bracket.setup {}

return {
  require 'custom.plugins.colorscheme',
  require 'custom.plugins.tabs',
  require 'custom.plugins.statusbar',
  require 'custom.plugins.hop',
  'github/copilot.vim',
  'xiyaowong/transparent.nvim',
  'ThePrimeagen/vim-be-good',
  'tpope/vim-fugitive',
}
