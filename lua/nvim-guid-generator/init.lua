local M = {}

function M.generate_guid(format)
  local rand = math.random
  local template ='xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
  local guid = string.gsub(template, '[xy]', function (c)
    local v = (c == 'x') and rand(0, 0xf) or rand(8, 0xb)
    return string.format('%x', v)
  end)
  if format == 'uppercase' then
    return string.upper(guid)
  elseif format == 'nodash' then
    return string.gsub(guid, '-', '')
  elseif format == 'nodash-uppercase' then
    return string.upper(string.gsub(guid, '-', ''))
  else
    return guid
  end
end

function M.write_guid(format)
  local guid = M.generate_guid(format)
  vim.api.nvim_put({guid}, '', true, true)
end

vim.cmd('command! -nargs=* InsertGuid lua require("nvim-guid-generator").write_guid(<q-args>)')

return M
