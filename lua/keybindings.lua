-- leader key 为空
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 本地变量
local map = vim.api.nvim_set_keymap

local opt = {
  noremap = true,
  silent = true
}

map("n", "<leader>e", ":NvimTreeFindFileToggle<CR>", opt)
map("n", "gx", "<Plug>(openbrowser-smart-search)", opt)

-- 插件快捷键
local pluginKeys = {}

-- map("n", '<leader>fg', ":GFiles?<CR>", opt)
-- map("n", '<leader>fh', ":History<CR>", opt)
-- Telescope
-- oldfiles
vim.api.nvim_set_keymap('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fh', "<cmd>lua require('telescope.builtin').oldfiles()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fg', "<cmd>lua require('telescope.builtin').git_status()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fl', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<CR>", { noremap = true })

-- vistal 
-- vim.api.nvim_set_keymap("n", "T", ":Vista!!<CR>", {noremap = true, silent = true})

-- terminal
vim.api.nvim_set_keymap("n", "<C-t>", ":ToggleTerm<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {noremap = true, silent = true})

-- git gutter
vim.api.nvim_set_keymap("n", "[h", ":GitGutterPrevHunk<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "]h", ":GitGutterNextHunk<CR>", {noremap = true, silent = true})


-- map("n", "<leader>f", ":Prettier<CR>", opt)
-- map("x", "<leader>f", ":Prettier<CR>", opt)

-- Telescope 列表中 插入模式快捷键
pluginKeys.telescopeList = {
  i = {
    -- 上下移动
    ["<C-j>"] = "move_selection_next",
    ["<C-k>"] = "move_selection_previous",
    ["<C-n>"] = "move_selection_next",
    ["<C-p>"] = "move_selection_previous",
    -- 历史记录
    ["<Down>"] = "cycle_history_next",
    ["<Up>"] = "cycle_history_prev",
    -- 关闭窗口
    -- ["<esc>"] = actions.close,
    ["<C-c>"] = "close",
    -- 预览窗口上下滚动
    ["<C-u>"] = "preview_scrolling_up",
    ["<C-d>"] = "preview_scrolling_down"
  }
}

-- coc.nvim
map("n", "<leader>rn", "<Plug>(coc-rename)", {})
map("n", "<leader><leader>", ":CocAction<CR>", {})

vim.api.nvim_set_keymap("n", "<leader>l", ":CocCommand eslint.executeAutofix<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>f", ":CocCommand prettier.formatFile<CR>", {noremap = true})

map("n", "[g", "<Plug>(coc-diagnostic-prev)", {})
map("n", "]g", "<Plug>(coc-diagnostic-next)", {})
map("n", "gd", "<Plug>(coc-definition)", {})
map("n", "gy", "<Plug>(coc-type-definition)", {})
map("n", "gi", "<Plug>(coc-implementation)", {})
map("n", "gr", "<Plug>(coc-references)", {})

map("x", "<leader><leader>", "<Plug>(coc-codeaction-selected)", {})

return pluginKeys
