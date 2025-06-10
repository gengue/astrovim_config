---@type LazySpec
return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "",
        "    ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄    ▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄ ▄▄▄▄▄▄▄",
        "   █       █       █  █  █ █       █       █   █       █",
        "   █   ▄▄▄▄█    ▄▄▄█   █▄█ █    ▄▄▄█  ▄▄▄▄▄█   █  ▄▄▄▄▄█",
        "   █  █  ▄▄█   █▄▄▄█       █   █▄▄▄█ █▄▄▄▄▄█   █ █▄▄▄▄▄",
        "   █  █ █  █    ▄▄▄█  ▄    █    ▄▄▄█▄▄▄▄▄  █   █▄▄▄▄▄  █",
        "   █  █▄▄█ █   █▄▄▄█ █ █   █   █▄▄▄ ▄▄▄▄▄█ █   █▄▄▄▄▄█ █",
        "   █▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄█  █▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄█▄▄▄▄▄▄▄█",
      }
      return opts
    end,
  },

  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  {
    "tpope/vim-fugitive",
    lazy = false,
  },

  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },

  { "mg979/vim-visual-multi" },

  { "joerdav/templ.vim" },

  {
    "akinsho/toggleterm.nvim",
    version = "*",
    lazy = false,
    opts = {
      open_mapping = [[<c-\>]],
      direction = "float",
    },
  },

  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
      direction = "float",
    },
  },

  {
    "folke/zen-mode.nvim",
    event = "VeryLazy",
    opts = {
      window = {
        options = {
          signcolumn = "no",
          number = false,
          relativenumber = false,
          cursorline = false,
          cursorcolumn = false,
          foldcolumn = "0",
          list = false,
        },
      },
    },
    dependencies = {
      "folke/twilight.nvim",
    },
  },

  {
    "oysandvik94/curl.nvim",
    cmd = { "CurlOpen" },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = true,
  },

  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      file_types = { "markdown", "Avante", "codecompanion" },
    },
    ft = { "markdown", "Avante", "codecompanion" },
  },

  {
    "datsfilipe/vesper.nvim",
    lazy = true,
    opts = {
      transparent = true, -- Boolzyean: Sets the background to transparent
      italics = {
        comments = true, -- Boolean: Italicizes comments
        keywords = false, -- Boolean: Italicizes keywords
        functions = false, -- Boolean: Italicizes functions
        strings = false, -- Boolean: Italicizes strings
        variables = false, -- Boolean: Italicizes variables
      },
    },
  },
  {
    "projekt0n/github-nvim-theme",
    lazy = true,
  },

  {
    "webhooked/kanso.nvim",
    lazy = false,
    priority = 1000,
  },

  { "kepano/flexoki-neovim", name = "flexoki" },

  { "echasnovski/mini.ai", version = "*" },

  {
    "folke/ts-comments.nvim", -- Enhance Neovim's native comments
    opts = {},
    event = "VeryLazy",
  },

  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      bigfile = {
        notify = false, -- show notification when big file detected
        size = 1.5 * 1024 * 1024, -- 1.5MB
        line_length = 1000, -- average line length (useful for minified files)
      },
    },
  },

  { "sindrets/diffview.nvim" },

  { "subnut/nvim-ghost.nvim" },

  {
    "karb94/neoscroll.nvim",
    opts = {},
  },
}
