---@diagnostic disable: undefined-global

local colors = require("lazymin.colors")

local M = {}

local function set(group, spec)
  vim.api.nvim_set_hl(0, group, spec)
end

function M.apply()
  local p = colors.palette

  local highlights = {
    -- Comments
    ["@comment"] = { fg = p.comment, italic = true },
    ["@comment.documentation"] = { fg = p.comment, italic = true },
    ["@comment.error"] = { fg = p.crimson, italic = true },
    ["@comment.warning"] = { fg = p.crimson, italic = true },
    ["@comment.todo"] = { fg = p.light_red, italic = true },
    ["@comment.note"] = { fg = p.comment, italic = true },
    ["@comment.hint"] = { fg = p.comment, italic = true },
    ["@comment.hack"] = { fg = p.crimson, italic = true },
    ["@comment.fixme"] = { fg = p.crimson, bold = true },
    ["@comment.xxx"] = { fg = p.purple, bold = true },

    -- Constants
    ["@constant"] = { fg = p.crimson },
    ["@constant.builtin"] = { fg = p.crimson },
    ["@constant.macro"] = { fg = p.light_red },

    -- Strings
    ["@string"] = { fg = p.fg1 },
    ["@string.documentation"] = { fg = p.fg1 },
    ["@string.regex"] = { fg = p.crimson },
    ["@string.escape"] = { fg = p.cursor_red },
    ["@string.special"] = { fg = p.cursor_red },
    ["@string.special.symbol"] = { fg = p.cursor_red },
    ["@string.special.path"] = { fg = p.cursor_red },
    ["@string.special.url"] = { fg = p.red, italic = true },

    -- Characters & numbers
    ["@character"] = { fg = p.cursor_red },
    ["@character.special"] = { fg = p.cursor_red },
    ["@number"] = { fg = p.cursor_red },
    ["@number.float"] = { fg = p.cursor_red },
    ["@boolean"] = { fg = p.sky_blue },

    -- Functions
    ["@function"] = { fg = p.crimson },
    ["@function.builtin"] = { fg = p.crimson },
    ["@function.call"] = { fg = p.red },
    ["@function.macro"] = { fg = p.light_red },
    ["@function.method"] = { fg = p.red },
    ["@function.method.call"] = { fg = p.red },
    ["@function.decorator"] = { fg = p.crimson },
    ["@constructor"] = { fg = p.light_red },

    -- Variables
    ["@variable"] = { fg = p.crimson },
    ["@variable.builtin"] = { fg = p.blue },
    ["@variable.parameter"] = { fg = p.fg2 },
    ["@variable.member"] = { fg = p.fg1 },
    ["@variable.global"] = { fg = p.crimson },
    ["@variable.special"] = { fg = p.blue, italic = true },

    -- Fields & properties
    ["@field"] = { fg = p.red },
    ["@property"] = { fg = p.red },
    ["@label"] = { fg = p.lavender },

    -- Types & namespaces
    ["@type"] = { fg = p.light_red },
    ["@type.builtin"] = { fg = p.red, italic = true },
    ["@type.definition"] = { fg = p.light_red },
    ["@type.qualifier"] = { fg = p.red },
    ["@type.interface"] = { fg = p.light_red, italic = true },
    ["@type.parameter"] = { fg = p.light_red, italic = true },
    ["@namespace"] = { fg = p.medium_red, italic = true },
    ["@module"] = { fg = p.medium_red, italic = true },

    -- Keywords & operators
    ["@keyword"] = { fg = p.lavender },
    ["@keyword.function"] = { fg = p.lavender },
    ["@keyword.operator"] = { fg = p.fg2 },
    ["@keyword.return"] = { fg = p.lavender },
    ["@keyword.import"] = { fg = p.lavender },
    ["@keyword.conditional"] = { fg = p.lavender },
    ["@keyword.repeat"] = { fg = p.lavender },
    ["@keyword.exception"] = { fg = p.lavender },
    ["@keyword.directive"] = { fg = p.blue },
    ["@keyword.directive.define"] = { fg = p.light_red },
    ["@keyword.modifier"] = { fg = p.lavender },
    ["@operator"] = { fg = p.fg2 },

    -- Punctuation
    ["@punctuation"] = { fg = p.fg3 },
    ["@punctuation.delimiter"] = { fg = p.fg3 },
    ["@punctuation.bracket"] = { fg = p.fg3 },
    ["@punctuation.special"] = { fg = p.blue },
    ["@punctuation.special.symbol"] = { fg = p.blue },

    -- Decorators & attributes
    ["@attribute"] = { fg = p.crimson, italic = true },
    ["@decorator"] = { fg = p.crimson },

    -- Tags
    ["@tag"] = { fg = p.lavender },
    ["@tag.attribute"] = { fg = p.crimson, italic = true },
    ["@tag.delimiter"] = { fg = p.fg2 },

    -- Markup
    ["@markup.strong"] = { fg = p.fg1, bold = true },
    ["@markup.italic"] = { fg = p.fg1, italic = true },
    ["@markup.heading"] = { fg = p.crimson, bold = true },
    ["@markup.link"] = { fg = p.red, underline = true },
    ["@markup.link.url"] = { fg = p.red, underline = true },
    ["@markup.link.label"] = { fg = p.red },
    ["@markup.list"] = { fg = p.red },
    ["@markup.list.checked"] = { fg = p.sky_blue },
    ["@markup.list.unchecked"] = { fg = p.red },
    ["@markup.quote"] = { fg = p.fg3, italic = true },
    ["@markup.raw"] = { fg = p.fg1 },
    ["@markup.raw.block"] = { fg = p.fg1 },
    ["@markup.math"] = { fg = p.cursor_red },
    ["@markup.underline"] = { fg = p.red, underline = true },

    -- Diff / SCM
    ["@diff.plus"] = { fg = p.sky_blue },
    ["@diff.minus"] = { fg = p.crimson },
    ["@diff.delta"] = { fg = p.red },

    -- Preprocessor
  ["@preproc"] = { fg = p.light_red },
  ["@include"] = { fg = p.blue },
  ["@define"] = { fg = p.light_red },
    ["@conditional"] = { fg = p.lavender },
    ["@repeat"] = { fg = p.lavender },
    ["@exception"] = { fg = p.lavender },

    -- Special cases
    ["@character.printf"] = { fg = p.cursor_red },
  }

  for group, spec in pairs(highlights) do
    set(group, spec)
  end

  -- Language specific overrides
  set("@function.builtin.lua", { fg = p.crimson })
  set("@variable.builtin.lua", { fg = p.blue, italic = true })
  set("@function.builtin.python", { fg = p.crimson })
  set("@variable.builtin.python", { fg = p.blue, italic = true })
  set("@function.builtin.javascript", { fg = p.crimson })
  set("@variable.builtin.javascript", { fg = p.blue, italic = true })
end

return M
