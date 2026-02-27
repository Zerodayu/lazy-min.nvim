local colors = require("lazymin.colors").palette

local M = {}

function M.apply()
  local p = colors

  -- Gitsigns
  vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = p.red, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "GitSignsChange", { fg = p.light_red, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = p.crimson, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "GitSignsChangedelete", { fg = p.light_red, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "GitSignsTopdelete", { fg = p.crimson, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "GitSignsUntracked", { fg = p.pink, bg = p.bg1 })

  -- Current line blame
  vim.api.nvim_set_hl(0, "GitSignsCurrentLineBlame", { fg = p.fg3, bg = p.bg1, italic = true })

  -- Line highlights
  vim.api.nvim_set_hl(0, "GitSignsAddLn", { bg = "#1A2E1A" })
  vim.api.nvim_set_hl(0, "GitSignsChangeLn", { bg = "#2E1A1A" })
  vim.api.nvim_set_hl(0, "GitSignsDeleteLn", { bg = "#3A1A1A" })

  -- Word diff
  vim.api.nvim_set_hl(0, "GitSignsAddInline", { fg = p.bg1, bg = p.red })
  vim.api.nvim_set_hl(0, "GitSignsChangeInline", { fg = p.bg1, bg = p.light_red })
  vim.api.nvim_set_hl(0, "GitSignsDeleteInline", { fg = p.bg1, bg = p.crimson })

  -- Virtual line (for deleted content)
  vim.api.nvim_set_hl(0, "GitSignsAddVirtLn", { fg = p.red, bg = "#1A2E1A" })
  vim.api.nvim_set_hl(0, "GitSignsDeleteVirtLn", { fg = p.crimson, bg = "#3A1A1A" })

  -- Staged highlights
  vim.api.nvim_set_hl(0, "GitSignsStagedAdd", { fg = p.red })
  vim.api.nvim_set_hl(0, "GitSignsStagedChange", { fg = p.light_red })
  vim.api.nvim_set_hl(0, "GitSignsStagedDelete", { fg = p.crimson })
  vim.api.nvim_set_hl(0, "GitSignsStagedChangedelete", { fg = p.light_red })
  vim.api.nvim_set_hl(0, "GitSignsStagedTopdelete", { fg = p.crimson })
end

return M
