# lazymin.nvim

A Matte Black colorscheme for Neovim with comprehensive plugin support.

## Features

- 🌒 **Matte Black aesthetic** - Deep, rich blacks with carefully chosen accent colors
- 🎨 **Comprehensive treesitter support** - Semantic syntax highlighting for modern code editing
- 🔌 **Extensive plugin integrations** - Beautiful theming for popular Neovim plugins
- 🍿 **Snacks.nvim integration** - Beautiful theming for dashboard, picker, notifier, and all components
- 📊 **Lualine theme included** - Matching statusline colors
- 🎯 **Consistent color palette** - Harmonious colors across all UI elements
- ⚡ **LSP and diagnostics support** - Full support for LSP features and diagnostic highlighting
- 🎭 **Multiple completion engines** - nvim-cmp integration with kind icons

## Supported Plugins

- **Treesitter** - Comprehensive syntax highlighting
- **LSP** - Full LSP support with semantic tokens
- **nvim-cmp** - Completion menu with kind highlights
- **Telescope** - Fuzzy finder theming
- **GitSigns** - Git integration highlights
- **which-key** - Keybinding guide styling
- **lazy.nvim** - Plugin manager UI
- **Mason** - LSP installer UI
- **indent-blankline** - Indent guides
- **Snacks.nvim** - Dashboard, picker, notifier, and more
- **todo-comments** - Comment highlighting
- **noice.nvim** - UI enhancement
- **neo-tree** - File explorer
- **Lualine** - Status line

## Screenshots

TBD: Screenshots will be added soon.

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "zerodayu/lazy-min.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "lazymin"
  end,
}
```

I've only tested this with lazy.nvim, but it should work with other plugin managers.

## Usage

### Basic Setup

The colorscheme automatically applies all plugin integrations when loaded:

```lua
-- Apply the complete theme (includes all plugin integrations)
require("lazymin").colorscheme()

-- Or use the traditional method
vim.cmd.colorscheme "lazymin"
```

Both methods will automatically load theming for:
- Treesitter syntax highlighting
- LSP and diagnostics
- nvim-cmp completion
- Telescope fuzzy finder
- GitSigns
- which-key
- lazy.nvim
- Mason
- indent-blankline
- Snacks.nvim
- todo-comments
- noice.nvim
- neo-tree

### Lualine Integration

```lua
require('lualine').setup {
  options = {
    theme = require("lazymin").lualine()
  }
}
```

## Plugin Integration Details

### Treesitter Support

The theme includes extensive treesitter highlight groups for:

- **Core Language Elements** - Functions, variables, types, keywords
- **Advanced Features** - Comments (with todos/warnings), markup, regex
- **Language-Specific** - Enhanced support for Lua, Python, JavaScript/TypeScript
- **Semantic Highlighting** - Context-aware syntax coloring

No additional configuration needed - treesitter highlights are included automatically!

### LSP Features

Full support for:
- Diagnostic signs and virtual text
- Inlay hints
- Code lenses
- Semantic tokens
- Reference highlighting
- Signature help

### Snacks.nvim Support

The theme includes comprehensive support for [Snacks.nvim](https://github.com/folke/snacks.nvim) components:

- **Dashboard** - Beautiful start screen with themed elements
- **Picker** - File finder and fuzzy picker theming
- **Notifier** - Notification popup styling
- **Terminal** - Floating terminal theming
- **Explorer** - File browser integration
- **Input** - Enhanced input dialogs
- **Indent** - Indent guide styling
- **Scroll** - Scrollbar theming
- **And more!** - Full coverage of all Snacks components

## Color Palette

### Base Colors

| Color      | Hex       | Usage                 |
| ---------- | --------- | --------------------- |
| bg0        | `#0D0D0D` | Darkest background    |
| bg1        | `#131313` | Main background       |
| bg2        | `#282828` | Secondary background  |
| bg3        | `#212121` | Tertiary background   |
| bg4        | `#141414` | Accent background     |
| fg0        | `#FFFFFF` | Brightest foreground  |
| fg1        | `#EAEAEA` | Main text             |
| fg2        | `#BEBEBE` | Secondary text        |
| fg3        | `#8A8A8D` | Tertiary text         |

### Accent Colors

| Color       | Hex       | Usage                      |
| ----------- | --------- | -------------------------- |
| red         | `#A00000` | Accents, highlights        |
| crimson     | `#FF0000` | Keywords, errors           |
| cursor_red  | `#B91C1C` | Cursor, warnings           |
| light_red   | `#ff8181` | Titles, important elements |
| medium_red  | `#D35F5F` | Mid-tone accents           |
| orange      | `#F59E0B` | Strings, types             |
| amber       | `#D97706` | Emphasis                   |
| yellow      | `#FBBF24` | Visual accents             |
| gold        | `#EFBF04` | Special highlights         |
| lavender    | `#b392f0` | Functions, methods         |
| sky_blue    | `#79b8ff` | Success, info              |
| blue        | `#3B82F6` | Constants, hints           |
| purple      | `#8D20B2` | Special elements           |
| cyan        | `#1EA7A0` | Utility highlights         |
| pink        | `#F87171` | Parameters, special text   |
| magenta     | `#B027DE` | Distinct highlights        |
| gray        | `#5C6370` | Comments, delimiters       |

## Contributing

Pull requests and issues are welcome! Please open an issue to discuss your ideas or report bugs.

## License

MIT
