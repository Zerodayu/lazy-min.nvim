local colors = require("lazymin.colors").palette

local M = {}

function M.apply()
  local p = colors

  -- Telescope main window
  vim.api.nvim_set_hl(0, "TelescopeNormal", { fg = p.fg1, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = p.gray, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "TelescopeTitle", { fg = p.crimson, bg = p.bg1, bold = true })

  -- Prompt
  vim.api.nvim_set_hl(0, "TelescopePromptNormal", { fg = p.fg1, bg = p.bg2 })
  vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = p.gray, bg = p.bg2 })
  vim.api.nvim_set_hl(0, "TelescopePromptTitle", { fg = p.red, bg = p.bg2, bold = true })
  vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = p.crimson, bg = p.bg2, bold = true })
  vim.api.nvim_set_hl(0, "TelescopePromptCounter", { fg = p.fg3, bg = p.bg2 })

  -- Preview
  vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { fg = p.fg1, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = p.gray, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { fg = p.pink, bg = p.bg1, bold = true })
  vim.api.nvim_set_hl(0, "TelescopePreviewLine", { bg = p.bg2 })
  vim.api.nvim_set_hl(0, "TelescopePreviewMatch", { fg = p.crimson, bold = true })

  -- Results
  vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { fg = p.fg1, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = p.gray, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { fg = p.light_red, bg = p.bg1, bold = true })

  -- Selection and matching
  vim.api.nvim_set_hl(0, "TelescopeSelection", { fg = p.fg0, bg = p.bg2, bold = true })
  vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = p.crimson, bg = p.bg2, bold = true })
  vim.api.nvim_set_hl(0, "TelescopeMultiSelection", { fg = p.pink, bg = p.bg2 })
  vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = p.crimson, bold = true })
  vim.api.nvim_set_hl(0, "TelescopeMatchingSpecialChars", { fg = p.light_red, bold = true })

  -- File path components
  vim.api.nvim_set_hl(0, "TelescopeResultsFileIcon", { fg = p.fg2 })
  vim.api.nvim_set_hl(0, "TelescopeResultsPath", { fg = p.fg3 })
  vim.api.nvim_set_hl(0, "TelescopeResultsIdentifier", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "TelescopeResultsLineNr", { fg = p.gray })
  vim.api.nvim_set_hl(0, "TelescopeResultsComment", { fg = p.comment, italic = true })
  vim.api.nvim_set_hl(0, "TelescopeResultsSpecialComment", { fg = p.comment, italic = true })
  vim.api.nvim_set_hl(0, "TelescopeResultsNumber", { fg = p.blue })
  vim.api.nvim_set_hl(0, "TelescopeResultsConstant", { fg = p.blue })
  vim.api.nvim_set_hl(0, "TelescopeResultsFunction", { fg = p.lavender })
  vim.api.nvim_set_hl(0, "TelescopeResultsMethod", { fg = p.lavender })
  vim.api.nvim_set_hl(0, "TelescopeResultsOperator", { fg = p.fg0 })
  vim.api.nvim_set_hl(0, "TelescopeResultsField", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "TelescopeResultsVariable", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "TelescopeResultsClass", { fg = p.orange })
  vim.api.nvim_set_hl(0, "TelescopeResultsStruct", { fg = p.orange })

  -- Diff markers in preview
  vim.api.nvim_set_hl(0, "TelescopeResultsDiffAdd", { fg = p.sky_blue })
  vim.api.nvim_set_hl(0, "TelescopeResultsDiffChange", { fg = p.light_red })
  vim.api.nvim_set_hl(0, "TelescopeResultsDiffDelete", { fg = p.crimson })
  vim.api.nvim_set_hl(0, "TelescopeResultsDiffUntracked", { fg = p.pink })
end

return M
