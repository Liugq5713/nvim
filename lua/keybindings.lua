-- leader key 为空
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 本地变量
local map = vim.api.nvim_set_keymap

local opt = {
  noremap = true,
  silent = true
}

map("n", "<leader>e", ":NvimTreeFindFile<CR>", opt)

-- 插件快捷键
local pluginKeys = {}

map("n", "<C-g>", ":GFiles?<CR>", opt)
map("n", "<C-h>", ":History<CR>", opt)
-- Telescope
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
map("n", "<C-e>", ":Telescope live_grep<CR>", opt)

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
map("n", "<leader><leader>", ":CocAction", {})

map("n", "[g", "<Plug>(coc-diagnostic-prev)", {})
map("n", "g]", "<Plug>(coc-diagnostic-next)", {})
map("n", "gd", "<Plug>(coc-definition)", {})
map("n", "gy", "<Plug>(coc-type-definition)", {})
map("n", "gi", "<Plug>(coc-implementation)", {})
map("n", "gr", "<Plug>(coc-references)", {})

map("i", "<C-j>", "pumvisible() ? '<C-n>' : '<TAB>'", {noremap = true, silent = true, expr = true})
map("i", "<C-k>", "pumvisible() ? '<C-p>' : '<C-h>'", {noremap = true, expr = true})
map("i", "<CR>", "pumvisible() ? coc#_select_confirm() : '<C-G>u<CR><C-R>=coc#on_enter()<CR>'", {silent = true, expr = true, noremap = true})

return pluginKeys
