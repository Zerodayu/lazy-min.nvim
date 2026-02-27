local colors = require("lazymin.colors").palette

local M = {}

function M.apply()
  local p = colors

  -- indent-blankline.nvim
  vim.api.nvim_set_hl(0, "IblIndent", { fg = "#2A2A2A", nocombine = true })
  vim.api.nvim_set_hl(0, "IblWhitespace", { fg = "#2A2A2A", nocombine = true })
  vim.api.nvim_set_hl(0, "IblScope", { fg = p.red, nocombine = true })

  -- Legacy indent-blankline (v2)
  vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "#2A2A2A", nocombine = true })
  vim.api.nvim_set_hl(0, "IndentBlanklineSpaceChar", { fg = "#2A2A2A", nocombine = true })
  vim.api.nvim_set_hl(0, "IndentBlanklineSpaceCharBlankline", { fg = "#2A2A2A", nocombine = true })
  vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", { fg = p.red, nocombine = true })
  vim.api.nvim_set_hl(0, "IndentBlanklineContextStart", { underline = true, sp = p.red })
end

return M
