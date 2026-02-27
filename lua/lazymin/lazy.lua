local colors = require("lazymin.colors").palette

local M = {}

function M.apply()
  local p = colors

  -- lazy.nvim plugin manager
  vim.api.nvim_set_hl(0, "LazyNormal", { fg = p.fg1, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "LazyButton", { fg = p.fg1, bg = p.bg2 })
  vim.api.nvim_set_hl(0, "LazyButtonActive", { fg = p.bg1, bg = p.red, bold = true })
  vim.api.nvim_set_hl(0, "LazyH1", { fg = p.bg1, bg = p.crimson, bold = true })
  vim.api.nvim_set_hl(0, "LazyH2", { fg = p.crimson, bold = true })
  vim.api.nvim_set_hl(0, "LazySpecial", { fg = p.orange })
  vim.api.nvim_set_hl(0, "LazyLocal", { fg = p.magenta })
  vim.api.nvim_set_hl(0, "LazyCommit", { fg = p.fg3, italic = true })
  vim.api.nvim_set_hl(0, "LazyCommitType", { fg = p.lavender, bold = true })
  vim.api.nvim_set_hl(0, "LazyCommitScope", { fg = p.blue, italic = true })
  vim.api.nvim_set_hl(0, "LazyCommitIssue", { fg = p.pink })
  vim.api.nvim_set_hl(0, "LazyReasonRuntime", { fg = p.sky_blue })
  vim.api.nvim_set_hl(0, "LazyReasonPlugin", { fg = p.crimson })
  vim.api.nvim_set_hl(0, "LazyReasonEvent", { fg = p.orange })
  vim.api.nvim_set_hl(0, "LazyReasonKeys", { fg = p.lavender })
  vim.api.nvim_set_hl(0, "LazyReasonStart", { fg = p.pink })
  vim.api.nvim_set_hl(0, "LazyReasonSource", { fg = p.cyan })
  vim.api.nvim_set_hl(0, "LazyReasonFt", { fg = p.yellow })
  vim.api.nvim_set_hl(0, "LazyReasonCmd", { fg = p.gold })
  vim.api.nvim_set_hl(0, "LazyReasonImport", { fg = p.gray1 })
  vim.api.nvim_set_hl(0, "LazyValue", { fg = p.cyan })
  vim.api.nvim_set_hl(0, "LazyDir", { fg = p.fg3, underline = true })
  vim.api.nvim_set_hl(0, "LazyUrl", { fg = p.fg3, underline = true })
  vim.api.nvim_set_hl(0, "LazyTaskOutput", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "LazyTaskError", { fg = p.crimson })
  vim.api.nvim_set_hl(0, "LazyProp", { fg = p.fg2 })
  vim.api.nvim_set_hl(0, "LazyDimmed", { fg = p.gray })
  vim.api.nvim_set_hl(0, "LazyProgressDone", { fg = p.red, bold = true })
  vim.api.nvim_set_hl(0, "LazyProgressTodo", { fg = p.gray })
end

return M
