local colors = require("lazymin.colors").palette

local M = {}

function M.apply()
  local p = colors

  -- which-key.nvim
  vim.api.nvim_set_hl(0, "WhichKey", { fg = p.crimson, bold = true })
  vim.api.nvim_set_hl(0, "WhichKeyGroup", { fg = p.lavender })
  vim.api.nvim_set_hl(0, "WhichKeyDesc", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "WhichKeySeparator", { fg = p.gray })
  vim.api.nvim_set_hl(0, "WhichKeyFloat", { fg = p.fg1, bg = p.bg2 })
  vim.api.nvim_set_hl(0, "WhichKeyBorder", { fg = p.gray, bg = p.bg2 })
  vim.api.nvim_set_hl(0, "WhichKeyValue", { fg = p.orange })
  vim.api.nvim_set_hl(0, "WhichKeyIcon", { fg = p.fg2 })
  vim.api.nvim_set_hl(0, "WhichKeyIconAzure", { fg = p.sky_blue })
  vim.api.nvim_set_hl(0, "WhichKeyIconBlue", { fg = p.blue })
  vim.api.nvim_set_hl(0, "WhichKeyIconCyan", { fg = p.cyan })
  vim.api.nvim_set_hl(0, "WhichKeyIconGreen", { fg = p.red })
  vim.api.nvim_set_hl(0, "WhichKeyIconGrey", { fg = p.gray })
  vim.api.nvim_set_hl(0, "WhichKeyIconOrange", { fg = p.orange })
  vim.api.nvim_set_hl(0, "WhichKeyIconPurple", { fg = p.purple })
  vim.api.nvim_set_hl(0, "WhichKeyIconRed", { fg = p.crimson })
  vim.api.nvim_set_hl(0, "WhichKeyIconYellow", { fg = p.yellow })
end

return M
