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
    ["@constant"] = { fg = p.blue },
    ["@constant.builtin"] = { fg = p.blue },
    ["@constant.macro"] = { fg = p.blue },

    -- Strings
    ["@string"] = { fg = p.orange },
    ["@string.documentation"] = { fg = p.orange },
    ["@string.regex"] = { fg = p.orange },
    ["@string.escape"] = { fg = p.orange },
    ["@string.special"] = { fg = p.orange },
    ["@string.special.symbol"] = { fg = p.orange },
    ["@string.special.path"] = { fg = p.orange },
    ["@string.special.url"] = { fg = p.orange, italic = true },

    -- Characters & numbers
    ["@character"] = { fg = p.orange },
    ["@character.special"] = { fg = p.orange },
    ["@number"] = { fg = p.blue },
    ["@number.float"] = { fg = p.blue },
    ["@boolean"] = { fg = p.blue },

    -- Functions
    ["@function"] = { fg = p.lavender },
    ["@function.builtin"] = { fg = p.lavender },
    ["@function.call"] = { fg = p.lavender },
    ["@function.macro"] = { fg = p.crimson },
    ["@function.method"] = { fg = p.lavender },
    ["@function.method.call"] = { fg = p.lavender },
    ["@function.decorator"] = { fg = p.crimson },
    ["@constructor"] = { fg = p.crimson },

    -- Variables
    ["@variable"] = { fg = p.fg0 },
    ["@variable.builtin"] = { fg = p.blue },
    ["@variable.parameter"] = { fg = p.fg0 },
    ["@variable.member"] = { fg = p.fg0 },
    ["@variable.global"] = { fg = p.fg0 },
    ["@variable.special"] = { fg = p.blue, italic = true },

    -- Fields & properties
    ["@field"] = { fg = p.fg0 },
    ["@property"] = { fg = p.fg0 },
    ["@label"] = { fg = p.crimson },

    -- Types & namespaces
    ["@type"] = { fg = p.orange },
    ["@type.builtin"] = { fg = p.orange, italic = true },
    ["@type.definition"] = { fg = p.orange },
    ["@type.qualifier"] = { fg = p.crimson },
    ["@type.interface"] = { fg = p.orange, italic = true },
    ["@type.parameter"] = { fg = p.orange, italic = true },
    ["@namespace"] = { fg = p.fg0, italic = true },
    ["@module"] = { fg = p.fg0, italic = true },

    -- Keywords & operators
    ["@keyword"] = { fg = p.crimson },
    ["@keyword.function"] = { fg = p.crimson },
    ["@keyword.operator"] = { fg = p.fg0 },
    ["@keyword.return"] = { fg = p.crimson },
    ["@keyword.import"] = { fg = p.crimson },
    ["@keyword.conditional"] = { fg = p.crimson },
    ["@keyword.repeat"] = { fg = p.crimson },
    ["@keyword.exception"] = { fg = p.crimson },
    ["@keyword.directive"] = { fg = p.crimson },
    ["@keyword.directive.define"] = { fg = p.crimson },
    ["@keyword.modifier"] = { fg = p.crimson },
    ["@operator"] = { fg = p.fg0 },

    -- Punctuation
    ["@punctuation"] = { fg = p.fg0 },
    ["@punctuation.delimiter"] = { fg = p.fg0 },
    ["@punctuation.bracket"] = { fg = p.fg0 },
    ["@punctuation.special"] = { fg = p.fg0 },
    ["@punctuation.special.symbol"] = { fg = p.fg0 },

    -- Decorators & attributes
    ["@attribute"] = { fg = p.crimson, italic = true },
    ["@decorator"] = { fg = p.crimson },

    -- Tags
    ["@tag"] = { fg = p.crimson },
    ["@tag.attribute"] = { fg = p.fg0, italic = true },
    ["@tag.delimiter"] = { fg = p.fg0 },

    -- Markup
    ["@markup.strong"] = { fg = p.fg0, bold = true },
    ["@markup.italic"] = { fg = p.fg0, italic = true },
    ["@markup.heading"] = { fg = p.crimson, bold = true },
    ["@markup.link"] = { fg = p.lavender, underline = true },
    ["@markup.link.url"] = { fg = p.orange, underline = true },
    ["@markup.link.label"] = { fg = p.fg0 },
    ["@markup.list"] = { fg = p.fg0 },
    ["@markup.list.checked"] = { fg = p.blue },
    ["@markup.list.unchecked"] = { fg = p.fg0 },
    ["@markup.quote"] = { fg = p.fg0, italic = true },
    ["@markup.raw"] = { fg = p.orange },
    ["@markup.raw.block"] = { fg = p.orange },
    ["@markup.math"] = { fg = p.blue },
    ["@markup.underline"] = { fg = p.fg0, underline = true },

    -- Diff / SCM
    ["@diff.plus"] = { fg = p.sky_blue },
    ["@diff.minus"] = { fg = p.crimson },
    ["@diff.delta"] = { fg = p.red },

    -- Preprocessor
  ["@preproc"] = { fg = p.crimson },
  ["@include"] = { fg = p.crimson },
  ["@define"] = { fg = p.crimson },
    ["@conditional"] = { fg = p.crimson },
    ["@repeat"] = { fg = p.crimson },
    ["@exception"] = { fg = p.crimson },

    -- Special cases
    ["@character.printf"] = { fg = p.orange },
  }

  for group, spec in pairs(highlights) do
    set(group, spec)
  end

  -- Language specific overrides
  set("@function.builtin.lua", { fg = p.lavender })
  set("@variable.builtin.lua", { fg = p.blue, italic = true })
  set("@function.builtin.python", { fg = p.lavender })
  set("@variable.builtin.python", { fg = p.blue, italic = true })
  set("@function.builtin.javascript", { fg = p.lavender })
  set("@variable.builtin.javascript", { fg = p.blue, italic = true })
end

return M
