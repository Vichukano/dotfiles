---------------------------
-----Назначение клавиш-----
---------------------------
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local mapb = vim.api.nvim_buf_set_keymap
-- Лидер
vim.g.mapleader = ' '
-- Стрелочки откл. Использовать hjkl
map('', '<up>', ':echoe "Use k"<CR>', {noremap = true, silent = false})
map('', '<down>', ':echoe "Use j"<CR>', {noremap = true, silent = false})
map('', '<left>', ':echoe "Use h"<CR>', {noremap = true, silent = false})
map('', '<right>', ':echoe "Use l"<CR>', {noremap = true, silent = false})
-- Включить/отключить специальные символы
map('n', '<leader>lc', '<cmd>set list!<CR>', default_opts)
map('n', '<C-s>', '<cmd>w<CR>', default_opts)
-- Перемещение в режиме редактирования
map('i', '<C-h>', '<left>', default_opts)
map('i', '<C-j>', '<down>', default_opts)
map('i', '<C-k>', '<up>', default_opts)
map('i', '<C-l>', '<right>', default_opts)
-- Переключение вкладок (akinsho/bufferline.nvim)
map('n', '<S-l>', ':BufferLineCycleNext<CR>', default_opts)
map('n', '<S-h>', ':BufferLineCyclePrev<CR>', default_opts)
-- Переключение окон, закрытие, управление размером
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<leader>c', ':bd<CR>', default_opts) -- закрыть текущий буфер
map('n', '<leader>wc', '<C-w>c', default_opts) -- закрыть текущее окно
map('n', '<leader>wv', '<C-w>v', default_opts) -- разделить по вертикали 
map('n', '<leader>ws', '<C-w>s', default_opts) -- разделить по горизонтали 
map('n', '<A-k>', '<C-w>+', default_opts) 
map('n', '<A-j>', '<C-w>-', default_opts) 
map('n', '<A-h>', '<C-w><', default_opts) 
map('n', '<A-l>', '<C-w>>', default_opts) 
-- Move text up and down
map("v", "<A-j>", "<cmd>m .+1<CR>==", { desc = "move text down" })
map("v", "<A-k>", "<cmd>m .-2<CR>==", { desc = "move text up" })
-- Очищаем последний поиск с подсветкой
map('n', '<leader>h', ':nohl<CR>', default_opts)
--Для временной вставки из буфера, чтобы отключить авто идент
vim.o.pastetoggle='<leader>p'
-- Файловый менеджер
map('n', '<leader>e', '<cmd>NvimTreeToggle<CR><cmd>NvimTreeRefresh<CR>', default_opts)
-- LSP
map('n', '<leader>lq', [[ <cmd>lua vim.lsp.buf.hover()<CR> ]], default_opts)
map('n', 'gd', [[ <cmd>lua vim.lsp.buf.definition()<CR> ]], default_opts)
map('n', 'gi', [[ <cmd>lua vim.lsp.buf.implementation()<CR> ]],default_opts)
map('n', 'gr', [[ <cmd>lua vim.lsp.buf.references()<CR> ]], default_opts)
map('n', '<leader>la', [[ <cmd>lua vim.lsp.buf.code_action()<CR> ]], default_opts)
map('n', '<leader>lf', [[ <cmd>lua vim.lsp.buf.formatting()<CR> ]], default_opts)
map('n', '<leader>lr', [[ <cmd>lua vim.lsp.buf.rename()<CR> ]], default_opts)
