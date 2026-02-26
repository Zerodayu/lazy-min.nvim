---@diagnostic disable: undefined-global

local M = {}

M.palette = {
  -- Base shades
  bg0 = "#0D0D0D",
  bg1 = "#131313",

  fg0 = "#FFFFFF",
  fg1 = "#EAEAEA",
  fg2 = "#BEBEBE",
  fg3 = "#8A8A8D",
  fg4 = "#333333",

  -- Aliases for plugin integrations
  fg = "#EAEAEA",
  bg = "#121212",

  selbg = "#262626",
  selfg = "#FFFFFF",

  comment = "#8A8A8D",

  -- Accent palette (red-based theme)
  red = "#A00000",
  crimson = "#FF0000",
  cursor_red = "#B91C1C",
  light_red = "#ff8181",
  medium_red = "#D35F5F",
  orange = "#F59E0B", 
  amber = "#D97706",
  yellow = "#FBBF24", 
  gold = "#EFBF04",
  ochre = "#BF9903",

  lavender = "#b392f0",
  sky_blue = "#79b8ff",
  blue = "#3B82F6",
  purple = "#8D20B2",
  cyan = "#1EA7A0",

  pink = "#F87171",
  magenta = "#B027DE",

  gray = "#5C6370",
  gray1 = "#A3A3A3",
  gray2 = "#737373",
}

function M.apply()
  local p = M.palette
  local function set(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end
  vim.o.background = "dark"
  vim.g.colors_name = "lazymin"

  set("Normal", { fg = p.fg1, bg = p.bg1 })
  set("NormalFloat", { fg = p.fg1, bg = p.bg1 })
  set("FloatBorder", { fg = p.bg1, bg = p.bg1 })
  set("SignColumn", { fg = p.bg1, bg = p.bg1 })
  set("NonText", { fg = p.bg1 })

  set("Cursor", { fg = p.bg1, bg = p.cursor_red })
  set("CursorLine", { bg = p.bg1 })
  set("CursorColumn", { bg = p.bg1 })
  set("CursorLineNr", { fg = p.cursor_red })
  set("LineNr", { fg = p.bg1 })
  set("MatchParen", { fg = p.red, bg = p.bg1, bold = true })

  set("Visual", { fg = p.selfg, bg = p.bg1 })
  set("VisualNOS", { fg = p.selfg, bg = p.bg1 })
  set("Search", { fg = p.bg1, bg = p.red })
  set("IncSearch", { fg = p.bg1, bg = p.crimson })
  set("Substitute", { fg = p.bg1, bg = p.crimson })
  set("HighlightedyankRegion", { bg = p.bg1 })

  set("FoldColumn", { fg = p.bg1, bg = p.bg1 })
  set("Folded", { fg = p.fg2, bg = p.bg1 })

  set("StatusLine", { fg = p.fg1, bg = p.bg1 })
  set("StatusLineNC", { fg = p.fg3, bg = p.bg1 })
  set("WinSeparator", { fg = p.bg1 })
  set("VertSplit", { fg = p.bg1 })
  set("TabLine", { fg = p.fg3, bg = p.bg1 })
  set("TabLineFill", { bg = p.bg1 })
  set("TabLineSel", { fg = p.fg1, bg = p.bg1, bold = true })

  set("Pmenu", { fg = p.fg2, bg = p.bg1 })
  set("PmenuSel", { fg = p.fg1, bg = p.bg1 })
  set("PmenuSbar", { bg = p.bg1 })
  set("PmenuThumb", { bg = p.fg3 })
  set("WildMenu", { fg = p.bg1, bg = p.red })

  set("DiffAdd", { fg = p.sky_blue })
  set("DiffDelete", { fg = p.crimson })
  set("DiffChange", { fg = p.light_red })
  set("DiffText", { fg = p.light_red, bold = true })

  set("DiagnosticOk", { fg = p.sky_blue })
  set("DiagnosticHint", { fg = p.blue })
  set("DiagnosticInfo", { fg = p.light_red })
  set("DiagnosticWarn", { fg = p.cursor_red })
  set("DiagnosticError", { fg = p.crimson })

  set("Comment", { fg = p.comment, italic = true })
  set("Constant", { fg = p.red })
  set("String", { fg = p.fg1 })
  set("Character", { fg = p.red })
  set("Number", { fg = p.red })
  set("Float", { fg = p.red })
  set("Boolean", { fg = p.sky_blue })
  set("Identifier", { fg = p.red })
  set("Function", { fg = p.crimson })
  set("Statement", { fg = p.lavender })
  set("Keyword", { fg = p.lavender })
  set("Conditional", { fg = p.lavender })
  set("Repeat", { fg = p.lavender })
  set("Operator", { fg = p.fg2 })
  set("Exception", { fg = p.lavender })
  set("PreProc", { fg = p.light_red })
  set("Include", { fg = p.blue })
  set("Define", { fg = p.light_red })
  set("Macro", { fg = p.light_red })
  set("PreCondit", { fg = p.light_red })
  set("Type", { fg = p.light_red })
  set("StorageClass", { fg = p.light_red })
  set("Structure", { fg = p.light_red })
  set("Typedef", { fg = p.light_red })
  set("Special", { fg = p.red })
  set("SpecialChar", { fg = p.red })
  set("Tag", { fg = p.lavender })
  set("Delimiter", { fg = p.fg3 })
  set("SpecialComment", { fg = p.comment, italic = true })
  set("Underlined", { fg = p.red, underline = true })
  set("Todo", { fg = p.bg1, bg = p.light_red, bold = true })

  vim.g.terminal_color_0 = p.bg1
  vim.g.terminal_color_1 = p.red
  vim.g.terminal_color_2 = p.crimson
  vim.g.terminal_color_3 = p.red
  vim.g.terminal_color_4 = p.light_red
  vim.g.terminal_color_5 = p.medium_red
  vim.g.terminal_color_6 = p.fg2
  vim.g.terminal_color_7 = p.fg2
  vim.g.terminal_color_8 = p.fg3
  vim.g.terminal_color_9 = p.cursor_red
  vim.g.terminal_color_10 = p.crimson
  vim.g.terminal_color_11 = p.red
  vim.g.terminal_color_12 = p.light_red
  vim.g.terminal_color_13 = p.cursor_red
  vim.g.terminal_color_14 = p.fg1
  vim.g.terminal_color_15 = p.fg0
  vim.g.terminal_color_background = p.bg1
  vim.g.terminal_color_foreground = p.fg1

  require("lazymin.treesitter").apply()
  require("lazymin.snacks").apply()
  require("lazymin.todo-comments").apply()
  require("lazymin.noice").apply()
  require("lazymin.neotree").apply()
end

return M