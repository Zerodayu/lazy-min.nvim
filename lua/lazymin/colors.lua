---@diagnostic disable: undefined-global

local M = {}

M.palette = {
  -- Base shades
  bg0 = "#0D0D0D",
  bg1 = "#131313",
  bg2 = "#282828",
  bg3 = "#212121",
  bg4 = "#141414",

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

  -- Reset existing highlights
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end
  vim.o.background = "dark"
  vim.g.colors_name = "lazymin"

  -- ============================================================================
  -- Editor UI
  -- ============================================================================
  
  -- Basic UI elements
  set("Normal", { fg = p.fg1, bg = p.bg1 })
  set("NormalFloat", { fg = p.fg1, bg = p.bg3 })
  set("FloatBorder", { fg = p.bg2, bg = p.bg3 })
  set("SignColumn", { fg = p.bg2, bg = p.bg1 })
  set("NonText", { fg = p.bg2 })
  set("EndOfBuffer", { fg = p.bg1 })

  -- Cursor and lines
  set("Cursor", { fg = p.bg1, bg = p.cursor_red })
  set("CursorLine", { bg = p.bg3 })
  set("CursorColumn", { bg = p.bg3 })
  set("CursorLineNr", { fg = p.cursor_red })
  set("LineNr", { fg = p.bg2 })
  set("MatchParen", { fg = p.red, bg = p.bg4, bold = true })
  set("ColorColumn", { bg = p.bg2 })

  -- Visual selection and search
  set("Visual", { fg = p.selfg, bg = p.bg2 })
  set("VisualNOS", { fg = p.selfg, bg = p.bg2 })
  set("Search", { fg = p.bg1, bg = p.red })
  set("IncSearch", { fg = p.bg1, bg = p.crimson })
  set("Substitute", { fg = p.bg1, bg = p.crimson })
  set("HighlightedyankRegion", { bg = p.bg4 })

  -- Folds
  set("FoldColumn", { fg = p.bg2, bg = p.bg1 })
  set("Folded", { fg = p.fg2, bg = p.bg3 })

  -- ============================================================================
  -- Window UI
  -- ============================================================================
  
  -- Status line
  set("StatusLine", { fg = p.fg1, bg = p.bg3 })
  set("StatusLineNC", { fg = p.fg3, bg = p.bg2 })
  
  -- Window separators
  set("WinSeparator", { fg = p.bg2 })
  set("VertSplit", { fg = p.bg2 })
  
  -- Tab line
  set("TabLine", { fg = p.fg3, bg = p.bg2 })
  set("TabLineFill", { bg = p.bg1 })
  set("TabLineSel", { fg = p.fg1, bg = p.bg3, bold = true })

  -- ============================================================================
  -- Completion Menu
  -- ============================================================================
  
  set("Pmenu", { fg = p.fg2, bg = p.bg3 })
  set("PmenuSel", { fg = p.fg1, bg = p.bg2 })
  set("PmenuSbar", { bg = p.bg2 })
  set("PmenuThumb", { bg = p.fg3 })
  set("WildMenu", { fg = p.bg1, bg = p.red })

  -- ============================================================================
  -- Diff
  -- ============================================================================
  
  set("DiffAdd", { fg = p.sky_blue })
  set("DiffDelete", { fg = p.crimson })
  set("DiffChange", { fg = p.light_red })
  set("DiffText", { fg = p.light_red, bold = true })

  -- ============================================================================
  -- Diagnostics
  -- ============================================================================
  
  -- Diagnostic signs
  set("DiagnosticOk", { fg = p.sky_blue })
  set("DiagnosticHint", { fg = p.blue })
  set("DiagnosticInfo", { fg = p.light_red })
  set("DiagnosticWarn", { fg = p.cursor_red })
  set("DiagnosticError", { fg = p.crimson })

  -- Diagnostic virtual text
  set("DiagnosticVirtualTextOk", { fg = p.sky_blue, bg = p.bg1 })
  set("DiagnosticVirtualTextHint", { fg = p.blue, bg = p.bg1 })
  set("DiagnosticVirtualTextInfo", { fg = p.light_red, bg = p.bg1 })
  set("DiagnosticVirtualTextWarn", { fg = p.cursor_red, bg = p.bg1 })
  set("DiagnosticVirtualTextError", { fg = p.crimson, bg = p.bg1 })

  -- Diagnostic underline
  set("DiagnosticUnderlineOk", { undercurl = true, sp = p.sky_blue })
  set("DiagnosticUnderlineHint", { undercurl = true, sp = p.blue })
  set("DiagnosticUnderlineInfo", { undercurl = true, sp = p.light_red })
  set("DiagnosticUnderlineWarn", { undercurl = true, sp = p.cursor_red })
  set("DiagnosticUnderlineError", { undercurl = true, sp = p.crimson })

  -- Diagnostic signs
  set("DiagnosticSignOk", { fg = p.sky_blue, bg = p.bg1 })
  set("DiagnosticSignHint", { fg = p.blue, bg = p.bg1 })
  set("DiagnosticSignInfo", { fg = p.light_red, bg = p.bg1 })
  set("DiagnosticSignWarn", { fg = p.cursor_red, bg = p.bg1 })
  set("DiagnosticSignError", { fg = p.crimson, bg = p.bg1 })

  -- ============================================================================
  -- LSP
  -- ============================================================================
  
  set("LspReferenceText", { bg = p.bg2 })
  set("LspReferenceRead", { bg = p.bg2 })
  set("LspReferenceWrite", { bg = p.bg2, underline = true })
  set("LspSignatureActiveParameter", { fg = p.crimson, bold = true })
  set("LspCodeLens", { fg = p.comment, italic = true })
  set("LspCodeLensSeparator", { fg = p.bg2 })
  set("LspInlayHint", { fg = p.fg3, bg = p.bg1, italic = true })

  -- LSP semantic tokens
  set("@lsp.type.class", { link = "Type" })
  set("@lsp.type.decorator", { link = "Function" })
  set("@lsp.type.enum", { link = "Type" })
  set("@lsp.type.enumMember", { link = "Constant" })
  set("@lsp.type.function", { link = "Function" })
  set("@lsp.type.interface", { link = "Type" })
  set("@lsp.type.macro", { link = "Macro" })
  set("@lsp.type.method", { link = "Function" })
  set("@lsp.type.namespace", { link = "@namespace" })
  set("@lsp.type.parameter", { link = "@variable.parameter" })
  set("@lsp.type.property", { link = "@property" })
  set("@lsp.type.struct", { link = "Type" })
  set("@lsp.type.type", { link = "Type" })
  set("@lsp.type.typeParameter", { link = "Type" })
  set("@lsp.type.variable", { link = "@variable" })

  -- ============================================================================
  -- Syntax Highlighting
  -- ============================================================================
  
  -- Comments
  set("Comment", { fg = p.comment, italic = true })
  set("SpecialComment", { fg = p.comment, italic = true })
  
  -- Constants
  set("Constant", { fg = p.blue })
  set("String", { fg = p.orange })
  set("Character", { fg = p.orange })
  set("Number", { fg = p.blue })
  set("Float", { fg = p.blue })
  set("Boolean", { fg = p.blue })
  
  -- Identifiers
  set("Identifier", { fg = p.fg0 })
  set("Function", { fg = p.lavender })
  
  -- Statements
  set("Statement", { fg = p.crimson })
  set("Keyword", { fg = p.crimson })
  set("Conditional", { fg = p.crimson })
  set("Repeat", { fg = p.crimson })
  set("Operator", { fg = p.fg0 })
  set("Exception", { fg = p.crimson })
  
  -- Preprocessor
  set("PreProc", { fg = p.crimson })
  set("Include", { fg = p.crimson })
  set("Define", { fg = p.crimson })
  set("Macro", { fg = p.crimson })
  set("PreCondit", { fg = p.crimson })
  
  -- Types
  set("Type", { fg = p.orange })
  set("StorageClass", { fg = p.orange })
  set("Structure", { fg = p.orange })
  set("Typedef", { fg = p.orange })
  
  -- Special
  set("Special", { fg = p.fg0 })
  set("SpecialChar", { fg = p.orange })
  set("Tag", { fg = p.crimson })
  set("Delimiter", { fg = p.fg0 })
  set("Underlined", { fg = p.red, underline = true })
  set("Todo", { fg = p.bg1, bg = p.light_red, bold = true })

  -- ============================================================================
  -- Messages and Prompts
  -- ============================================================================
  
  set("Error", { fg = p.crimson, bold = true })
  set("ErrorMsg", { fg = p.crimson, bold = true })
  set("WarningMsg", { fg = p.cursor_red, bold = true })
  set("MoreMsg", { fg = p.sky_blue, bold = true })
  set("ModeMsg", { fg = p.fg1, bold = true })
  set("Question", { fg = p.sky_blue, bold = true })
  set("Directory", { fg = p.fg2, bold = true })
  set("Title", { fg = p.crimson, bold = true })
  set("Bold", { bold = true })
  set("Italic", { italic = true })
  
  -- ============================================================================
  -- Spelling
  -- ============================================================================
  
  set("SpellBad", { fg = p.crimson, undercurl = true, sp = p.crimson })
  set("SpellCap", { fg = p.cursor_red, undercurl = true, sp = p.cursor_red })
  set("SpellLocal", { fg = p.orange, undercurl = true, sp = p.orange })
  set("SpellRare", { fg = p.lavender, undercurl = true, sp = p.lavender })
  
  -- ============================================================================
  -- Miscellaneous
  -- ============================================================================
  
  set("Conceal", { fg = p.fg3 })
  set("QuickFixLine", { fg = p.crimson, bold = true })
  set("qfLineNr", { fg = p.fg3 })
  set("qfFileName", { fg = p.fg1 })
  
  -- ============================================================================
  -- Neovim Built-in Features
  -- ============================================================================
  
  set("healthError", { fg = p.crimson })
  set("healthSuccess", { fg = p.sky_blue })
  set("healthWarning", { fg = p.cursor_red })

  -- ============================================================================
  -- Terminal Colors
  -- ============================================================================
  
  vim.g.terminal_color_0 = p.bg2
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

  -- ============================================================================
  -- Plugin Integrations
  -- ============================================================================
  
  require("lazymin.treesitter").apply()
  require("lazymin.cmp").apply()
  require("lazymin.telescope").apply()
  require("lazymin.gitsigns").apply()
  require("lazymin.whichkey").apply()
  require("lazymin.lazy").apply()
  require("lazymin.mason").apply()
  require("lazymin.indent-blankline").apply()
  require("lazymin.snacks").apply()
  require("lazymin.todo-comments").apply()
  require("lazymin.noice").apply()
  require("lazymin.neotree").apply()
end

return M