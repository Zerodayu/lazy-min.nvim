local colors = require("lazymin.colors").palette

local M = {}

function M.apply()
  local p = colors

  -- nvim-cmp completion menu
  vim.api.nvim_set_hl(0, "CmpItemAbbr", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { fg = p.gray, strikethrough = true })
  vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = p.crimson, bold = true })
  vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = p.light_red, bold = true })
  vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = p.fg3, italic = true })

  -- Kind highlights
  vim.api.nvim_set_hl(0, "CmpItemKind", { fg = p.fg2 })
  vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = p.fg2 })
  vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = p.lavender })
  vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = p.lavender })
  vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { fg = p.crimson })
  vim.api.nvim_set_hl(0, "CmpItemKindField", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = p.orange })
  vim.api.nvim_set_hl(0, "CmpItemKindInterface", { fg = p.orange })
  vim.api.nvim_set_hl(0, "CmpItemKindModule", { fg = p.fg0 })
  vim.api.nvim_set_hl(0, "CmpItemKindProperty", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "CmpItemKindUnit", { fg = p.blue })
  vim.api.nvim_set_hl(0, "CmpItemKindValue", { fg = p.blue })
  vim.api.nvim_set_hl(0, "CmpItemKindEnum", { fg = p.orange })
  vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { fg = p.crimson })
  vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = p.pink })
  vim.api.nvim_set_hl(0, "CmpItemKindColor", { fg = p.orange })
  vim.api.nvim_set_hl(0, "CmpItemKindFile", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "CmpItemKindReference", { fg = p.fg2 })
  vim.api.nvim_set_hl(0, "CmpItemKindFolder", { fg = p.fg2 })
  vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", { fg = p.blue })
  vim.api.nvim_set_hl(0, "CmpItemKindConstant", { fg = p.blue })
  vim.api.nvim_set_hl(0, "CmpItemKindStruct", { fg = p.orange })
  vim.api.nvim_set_hl(0, "CmpItemKindEvent", { fg = p.crimson })
  vim.api.nvim_set_hl(0, "CmpItemKindOperator", { fg = p.fg0 })
  vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", { fg = p.orange })

  -- Documentation window
  vim.api.nvim_set_hl(0, "CmpDocumentation", { fg = p.fg1, bg = p.bg3 })
  vim.api.nvim_set_hl(0, "CmpDocumentationBorder", { fg = p.gray, bg = p.bg3 })
end

return M
