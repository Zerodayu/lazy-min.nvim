local M = {}

function M.colorscheme()
  -- Load the main colors
  require("lazymin.colors").apply()
end

function M.lualine()
  return require("lazymin.lualine")
end

function M.snacks()
  require("lazymin.snacks").apply()
end

function M.mini_icons()
  require("lazymin.mini-icons").apply()
end

function M.treesitter()
  require("nvim-treesitter.configs").setup({
    highlight = { enable = true },
  })
end

return M