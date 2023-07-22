local function insert_incremental_number()
  local current_line = vim.api.nvim_get_current_line()
  local number, dot = current_line:match("^%s*(%d+)(%.*)")

  if number and dot then
    local next_number = tonumber(number) + 1
    local next_line = next_number .. dot
    vim.api.nvim_feedkeys("o" .. next_line .. ' ', "n", true)
  else
    vim.api.nvim_feedkeys("o1. ", "n", true)
  end
end

_G.insert_incremental_number = insert_incremental_number

local function setup()
  vim.api.nvim_set_keymap('n', '<leader>n', ':lua insert_incremental_number()<CR>', { noremap = true, silent = true })
end

return {
  insert_incremental_number = insert_incremental_number,
  setup = setup
}



