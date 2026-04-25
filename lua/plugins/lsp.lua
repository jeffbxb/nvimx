return {
  -- LSP + Mason
  {
    "neovim/nvim-lspconfig",
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "neovim/nvim-lspconfig", "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls", "pyright", "ts_ls", "clangd", "rust_analyzer", -- "gopls", -- requires go installed
        },
        automatic_installation = true,
      })
    end,
  },

  -- Snippets
  { "L3MON4D3/LuaSnip" },

  -- Modern completion (blink.cmp is fast and excellent in 2026)
  {
    "saghen/blink.cmp",
    version = "1.*",
    build = "cargo build --release",
    dependencies = {
      "rafamadriz/friendly-snippets",
      "L3MON4D3/LuaSnip",
    },
    opts = {
      keymap = {
        preset = "default",        -- or "super-tab" / "enter"
      },
      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "mono",
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
      snippets = { preset = "luasnip" },
    },
  },

  -- Treesitter for better highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup({
        ensure_installed = { "lua", "python", "javascript", "typescript", "rust", "go", "c", "cpp" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}
