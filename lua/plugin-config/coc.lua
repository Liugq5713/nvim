vim.g.coc_global_extensions = {
   'coc-html',
   'coc-json',
   'coc-css',
   'coc-tsserver',
   'coc-lists',
   'coc-gitignore',
   'coc-vimlsp',
   'coc-lists',
   'coc-git',
   'coc-sourcekit',
   'coc-highlight',
   'coc-snippets',
   'coc-eslint',
   'coc-prettier',
   'coc-webpack',
   'coc-spell-checker',
   'coc-texlab',
   'coc-cssmodules',
   'coc-pairs',
   'coc-styled-components'
}

vim.api.nvim_set_keymap("n", "<leader>rn", "<Plug>(coc-rename)", {})
vim.api.nvim_set_keymap("n", "<leader><leader>", ":CocAction", {})

vim.api.nvim_set_keymap("n", "[g", "<Plug>(coc-diagnostic-prev)", {})
vim.api.nvim_set_keymap("n", "g]", "<Plug>(coc-diagnostic-next)", {})
vim.api.nvim_set_keymap("n", "gd", "<Plug>(coc-definition)", {})
vim.api.nvim_set_keymap("n", "gy", "<Plug>(coc-type-definition)", {})
vim.api.nvim_set_keymap("n", "gi", "<Plug>(coc-implementation)", {})
vim.api.nvim_set_keymap("n", "gr", "<Plug>(coc-references)", {})

vim.api.nvim_set_keymap("i", "<TAB>", "pumvisible() ? '<C-n>' : '<TAB>'", {noremap = true, silent = true, expr = true})
vim.api.nvim_set_keymap("i", "<S-TAB>", "pumvisible() ? '<C-p>' : '<C-h>'", {noremap = true, expr = true})
vim.api.nvim_set_keymap("i", "<CR>", "pumvisible() ? coc#_select_confirm() : '<C-G>u<CR><C-R>=coc#on_enter()<CR>'", {silent = true, expr = true, noremap = true})
