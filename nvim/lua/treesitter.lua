local M = {}

function M.config()
  local status_ok, treesitter = pcall(require, "nvim-treesitter")
  if status_ok then
    treesitter.setup({
    ensure_installed = {'rust', 'lua', 'java'},
    highlight = {enable = true},
    indent = {enable = true}
  })
  end
end

return M
