local M = {}
local events = {}

-- M.setup = function()
--   print 'Setting up easy-bracket'
--
--   vim.api.nim_create_autocmd('InsertCharPre', {
--     pattern = { '*' },
--     group = vim.api.nvim_create_augroup('EasyBracket', { clear = true }),
--     callback = function()
--       print 'InsertCharPre'
--     end,
--   })
-- end

return M
