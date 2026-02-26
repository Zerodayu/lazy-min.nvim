local colors = require("lazymin.colors").palette

local lazymin = {}

lazymin.normal = {
  a = { fg = colors.bg1, bg = colors.red, gui = "bold" },
  b = { fg = colors.fg1, bg = "#2A2A2A" },
  c = { fg = colors.gray, bg = "#1A1A1A" },
}

lazymin.insert = {
  a = { fg = colors.bg1, bg = colors.sky_blue, gui = "bold" },
}

lazymin.visual = {
  a = { fg = colors.bg1, bg = colors.yellow, gui = "bold" },
}

lazymin.replace = {
  a = { fg = colors.bg1, bg = colors.pink, gui = "bold" },
}

lazymin.command = {
  a = { fg = colors.bg1, bg = colors.purple, gui = "bold" },
}

lazymin.inactive = {
  a = { fg = colors.gray, bg = colors.bg1 },
  b = { fg = colors.gray, bg = colors.bg1 },
  c = { fg = colors.gray, bg = colors.bg1 },
}

return lazymin 