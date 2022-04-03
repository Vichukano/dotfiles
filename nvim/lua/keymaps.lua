local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}


-- Лидер
vim.g.mapleader = ' '

-- Вставка из системного буфера обмена
map('n', '<S-Insert>', '"+p', default_opts) -- В нормальном режиме
map('i', '<S-Insert>', '<C-R>*', default_opts) -- В режиме редактирования
-- Стрелочки откл. Использовать hjkl
map('', '<up>', ':echoe "Use k"<CR>', {noremap = true, silent = false})
map('', '<down>', ':echoe "Use j"<CR>', {noremap = true, silent = false})
map('', '<left>', ':echoe "Use h"<CR>', {noremap = true, silent = false})
map('', '<right>', ':echoe "Use l"<CR>', {noremap = true, silent = false})
-- Перемещение в режиме редактирования
map('i', '<C-h>', '<left>', default_opts)
map('i', '<C-j>', '<down>', default_opts)
map('i', '<C-k>', '<up>', default_opts)
map('i', '<C-l>', '<right>', default_opts)
-- Автоформат для rust, как в нормальном, так и в insert режиме
map('n', '<C-S-l>', ':RustFmt<CR>:w<CR>',  default_opts)
map('i', '<C-S-l>', '<esc>:RustFmt<CR>:w<CR>', default_opts)
-- Переключение вкладок с помощью TAB или shift-tab (akinsho/bufferline.nvim)
map('n', '<Tab>', ':BufferLineCycleNext<CR>', default_opts)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', default_opts)
-- Переключение окон, закрытие
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-F4>', ':bd<CR>', default_opts) -- закрыть текущий буфер
map('n', '<C-S-F4>', '<C-w>c', default_opts) -- закрыть текущее окно

-----------------------------------------------------------
-- Фн. клавиши по F1 .. F12
-----------------------------------------------------------
-- По F1 очищаем последний поиск с подсветкой
map('n', '<F1>', ':nohl<CR>', default_opts)
-- shift + F1 = удалить пустые строки
map('n', '<S-F1>', ':g/^$/d<CR>', default_opts)
-- <F2> для временной вставки из буфера, чтобы отключить авто идент
vim.o.pastetoggle='<F2>'
-- <F6> дерево файлов.
map('n', '<F6>', ':NvimTreeRefresh<CR>:NvimTreeToggle<CR>', default_opts)

