local colors = require("lazymin.colors").palette

local M = {}

function M.apply()
  local p = colors

  -- Mason
  vim.api.nvim_set_hl(0, "MasonNormal", { fg = p.fg1, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "MasonHeader", { fg = p.bg1, bg = p.crimson, bold = true })
  vim.api.nvim_set_hl(0, "MasonHeaderSecondary", { fg = p.bg1, bg = p.red, bold = true })
  vim.api.nvim_set_hl(0, "MasonHighlight", { fg = p.crimson })
  vim.api.nvim_set_hl(0, "MasonHighlightBlock", { fg = p.bg1, bg = p.crimson })
  vim.api.nvim_set_hl(0, "MasonHighlightBlockBold", { fg = p.bg1, bg = p.crimson, bold = true })
  vim.api.nvim_set_hl(0, "MasonHighlightSecondary", { fg = p.light_red })
  vim.api.nvim_set_hl(0, "MasonHighlightBlockSecondary", { fg = p.bg1, bg = p.light_red })
  vim.api.nvim_set_hl(0, "MasonHighlightBlockBoldSecondary", { fg = p.bg1, bg = p.light_red, bold = true })
  vim.api.nvim_set_hl(0, "MasonLink", { fg = p.lavender, underline = true })
  vim.api.nvim_set_hl(0, "MasonMuted", { fg = p.gray })
  vim.api.nvim_set_hl(0, "MasonMutedBlock", { fg = p.fg1, bg = p.bg2 })
  vim.api.nvim_set_hl(0, "MasonMutedBlockBold", { fg = p.fg1, bg = p.bg2, bold = true })
  vim.api.nvim_set_hl(0, "MasonError", { fg = p.crimson })
  vim.api.nvim_set_hl(0, "MasonWarning", { fg = p.cursor_red })
  vim.api.nvim_set_hl(0, "MasonHeading", { fg = p.crimson, bold = true })
end

return M
