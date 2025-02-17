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

  -- You can disable default plugins as follows:
  --{ "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            -- don't add a pair if the next character is %
            :with_pair(cond.not_after_regex "%%")
            -- don't add a pair if  the previous character is xxx
            :with_pair(
              cond.not_before_regex("xxx", 3)
            )
            -- don't move right when repeat character
            :with_move(cond.none())
            -- don't delete if the next character is xx
            :with_del(cond.not_after_regex "xx")
            -- disable adding a newline when you press <cr>
            :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },
  {
    "mg979/vim-visual-multi",
  },
  {
    "joerdav/templ.vim",
  },
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
    "f-person/auto-dark-mode.nvim",
    opts = {
      update_interval = 1000,
      set_dark_mode = function()
        vim.api.nvim_set_option_value("background", "dark", {})
        vim.cmd "colorscheme terafox"
      end,
      set_light_mode = function()
        vim.api.nvim_set_option_value("background", "light", {})
        vim.cmd "colorscheme astrolight"
      end,
    },
  },
  {
    "piersolenski/wtf.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    opts = {},
    keys = {
      {
        "<leader>wa",
        mode = { "n", "x" },
        function() require("wtf").ai() end,
        desc = "Debug diagnostic with AI",
      },
      {
        mode = { "n" },
        "<leader>ws",
        function() require("wtf").search() end,
        desc = "Search diagnostic with Google",
      },
      {
        mode = { "n" },
        "<leader>wh",
        function() require("wtf").history() end,
        desc = "Populate the quickfix list with previous chat history",
      },
      {
        mode = { "n" },
        "<leader>wg",
        function() require("wtf").grep_history() end,
        desc = "Grep previous chat history with Telescope",
      },
    },
  },
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      strategies = {
        chat = {
          adapter = "anthropic",
        },
      },
      inline = {
        adapter = "anthropic",
      },
    },
  },
}
