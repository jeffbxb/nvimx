# Neovim Setup

## Installation
- Built from source (v0.12.1)
- Installed via deb package: `cpack -G DEB` then `sudo dpkg -i nvim-linux-*.deb`

## Plugins (lua/plugins/)
- **nvim-lspconfig** - LSP client
- **mason.nvim** - LSP server installer
- **mason-lspconfig.nvim** - Mason/LSPconfig integration
- **blink.cmp** - Modern completion (requires `cargo build --release` on first install)
- **LuaSnip** - Snippets
- **friendly-snippets** - Pre-built snippets
- **nvim-treesitter** - Syntax highlighting
- **catppuccin** - Colorscheme (catppuccin-mocha)

## Mason LSP Servers
- lua_ls, pyright, ts_ls, clangd, rust_analyzer
- gopls not installed (requires Go)

## Key Settings
- 4-space indent, expandtab
- Solid white blinking block cursor
- termguicolors enabled
- lazy.nvim for plugin management

## Important Notes
- blink.cmp fuzzy library: build with `cargo build --release` in blink.cmp plugin dir
- treesitter: use `:TSInstall <lang>` to install parsers
- rocks config removed from lazy (caused path issues)