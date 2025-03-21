-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")

-- 在补全菜单中使用 Ctrl+j 和 Ctrl+k 上下选择
vim.api.nvim_set_keymap('i', '<C-j>', 'pumvisible() ? "\\<Down>" : "\\<C-j>"', { noremap = true, expr = true })
vim.api.nvim_set_keymap('i', '<C-k>', 'pumvisible() ? "\\<Up>" : "\\<C-k>"', { noremap = true, expr = true })




