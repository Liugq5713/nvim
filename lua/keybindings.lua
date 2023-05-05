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

map("n", "<C-g>", ":GFiles?<CR>", opt)
map("n", "<C-h>", ":History<CR>", opt)
-- Telescope
vim.api.nvim_set_keymap('n', '<leader>p', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>k', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>j', "<cmd>lua require('telescope.builtin').buffers()<CR>", { noremap = true })

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

-- lsp 回调函数快捷键设置
pluginKeys.mapLSP = function(mapbuf)
  -- rename
  --[[
  Lspsaga 替换 rn
  mapbuf("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)
  --]]
  mapbuf("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opt)
  -- code action
  --[[
  Lspsaga 替换 ca
  mapbuf("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opt)
  --]]
  mapbuf("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opt)
  -- go xx
  --[[
  Lspsaga 替换 gd
  mapbuf("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
  --]]
  mapbuf("n", "gd", "<cmd>Lspsaga preview_definition<CR>", opt)
  --[[
  Lspsaga 替换 gh
  mapbuf("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
  --]]
  mapbuf("n", "gh", "<cmd>Lspsaga hover_doc<cr>", opt)
  --[[
  Lspsaga 替换 gr
  mapbuf("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
  --]]
  mapbuf("n", "gr", "<cmd>Lspsaga lsp_finder<CR>", opt)
  --[[
  Lspsaga 替换 gp, gj, gk
  mapbuf("n", "gp", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)
  mapbuf("n", "gj", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)
  mapbuf("n", "gk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
  --]]
  -- diagnostic
  mapbuf("n", "gp", "<cmd>Lspsaga show_line_diagnostics<CR>",opt)
  mapbuf("n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", opt)
  mapbuf("n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opt)
  -- mapbuf("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opt)
  -- 未用
  -- mapbuf("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
  -- mapbuf("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
  -- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
  -- mapbuf("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opt)
  -- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_work
end

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
