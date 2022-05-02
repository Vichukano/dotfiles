local cmd = vim.cmd             -- execute Vim commands
local exec = vim.api.nvim_exec  -- execute Vimscript
local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped options
-- Компактный вид у тагбара и Отк. сортировка по имени у тагбара
g.tagbar_compact = 1
g.tagbar_sort = 0

-----------------------------------------------------------
-- Главные
-----------------------------------------------------------
opt.colorcolumn = '80'              -- Разделитель на 80 символов
opt.cursorline = true               -- Подсветка строки с курсором
opt.spelllang= { 'en_us', 'ru' }    -- Словари рус eng
opt.number = true                   -- Включаем нумерацию строк
opt.so=999                          -- Курсор всегда в центре экрана
opt.fileencoding='utf-8'
-----------------------------------------------------------
-- Цветовая схема
-----------------------------------------------------------
opt.termguicolors = true      --  24-bit RGB colors
cmd'colorscheme gruvbox'
-----------------------------------------------------------
-- Табы и отступы
-----------------------------------------------------------
cmd([[
filetype indent plugin on
syntax enable
]])
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 2        -- shift 2 spaces when tab
opt.tabstop = 2           -- 1 tab == 2 spaces
opt.smartindent = true    -- autoindent new lines
-----------------------------------------------------------
-- Полезные фишки
-----------------------------------------------------------
-- Запоминает где nvim последний раз редактировал файл
-- Подсвечивает на доли секунды скопированную часть текста
exec([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup end
]], false)
opt.list = false 
opt.listchars = {
  tab = "▸ ",
  nbsp = "⍽",
  extends = "⟩",
  precedes = "⟨",
  trail = "-",
  space = ".",
  eol = "↲",
}
