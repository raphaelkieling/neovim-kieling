local M = {}

M.setup = function(params)
  local params = params or {}
  local pattern = params.pattern or { '*' }
  local keys = params.keys or { '<>', '{}', '()', '[]' }

  print 'Setting up easy-bracket'

  local group = vim.api.nvim_create_augroup('EasyBracket', { clear = true })
  local should_apply = false

  vim.api.nvim_create_autocmd('TextChangedI', {
    pattern = pattern,
    group = group,
    callback = function()
      if should_apply then
        should_apply = false
        local cur_win = vim.api.nvim_get_current_win()
        local pos = vim.api.nvim_win_get_cursor(cur_win)
        vim.api.nvim_win_set_cursor(cur_win, { pos[1], pos[2] - 1 })
      end
    end,
  })

  vim.api.nvim_create_autocmd('InsertCharPre', {
    pattern = pattern,
    group = group,
    callback = function()
      for _, key in ipairs(keys) do
        print(key, key[0])
        local first_key = key:sub(1, 1)
        if vim.v.char == first_key then
          should_apply = true
          vim.v.char = key
          break
        end
      end
    end,
  })
end

return M
