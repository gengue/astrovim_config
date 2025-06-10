return {
  "GeorgesAlkhouri/nvim-aider",
  cmd = "Aider",
  keys = {
    { "<leader>aa", "<cmd>Aider toggle<cr>", desc = "Toggle Aider" },
    { "<leader>as", "<cmd>Aider send<cr>", desc = "Send to Aider", mode = { "n", "v" } },
    { "<leader>ac", "<cmd>Aider command<cr>", desc = "Aider Commands" },
    { "<leader>ab", "<cmd>Aider buffer<cr>", desc = "Send Buffer" },
    { "<leader>a+", "<cmd>Aider add<cr>", desc = "Add File" },
    { "<leader>a-", "<cmd>Aider drop<cr>", desc = "Drop File" },
    { "<leader>ar", "<cmd>Aider add readonly<cr>", desc = "Add Read-Only" },
    { "<leader>aR", "<cmd>Aider reset<cr>", desc = "Reset Session" },
  },
  dependencies = {
    "folke/snacks.nvim",
    ---Neo-tree integration
    {
      "nvim-neo-tree/neo-tree.nvim",
      opts = function(_, opts)
        -- Example mapping configuration (already set by default)
        -- opts.window = {
        --   mappings = {
        --     ["+"] = { "nvim_aider_add", desc = "add to aider" },
        --     ["-"] = { "nvim_aider_drop", desc = "drop from aider" }
        --     ["="] = { "nvim_aider_add_read_only", desc = "add read-only to aider" }
        --   }
        -- }
        require("nvim_aider.neo_tree").setup(opts)
      end,
    },
  },
  config = true,
}

-- return {
--   "joshuavial/aider.nvim",
--   opts = {
--     auto_manage_context = true, -- automatically manage buffer context
--     default_bindings = true, -- use default <leader>A keybindings
--   },
-- }

-- return {
--   "dlants/magenta.nvim",
--   lazy = false, -- you could also bind to <leader>mt
--   build = "npm install --frozen-lockfile",
--   opts = {
--     sidebar_position = "right",
--   },
-- }
--

-- return {
--   "olimorris/codecompanion.nvim",
--   dependencies = {
--     "nvim-lua/plenary.nvim",
--     "nvim-treesitter/nvim-treesitter",
--     "j-hui/fidget.nvim",
--   },
--   opts = {
--     strategies = {
--       chat = {
--         adapter = "anthropic",
--         -- slash_commands = {
--         --   codebase = require("vectorcode.integrations").codecompanion.chat.make_slash_command(),
--         -- },
--       },
--       inline = {
--         adapter = "copilot",
--       },
--       cmd = {
--         adapter = "anthropic",
--       },
--     },
--   },
--   config = true,
--   -- prompt_library = { },
--   init = function()
--     vim.cmd [[cab cc CodeCompanion]]
--
--     vim.keymap.set({ "n", "v" }, "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
--     vim.keymap.set(
--       { "n", "v" },
--       "<LocalLeader>a",
--       "<cmd>CodeCompanionChat Toggle<cr>",
--       { noremap = true, silent = true }
--     )
--     vim.keymap.set("v", "ga", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true })
--   end,
-- }
--
--{
--   "ravitemer/mcphub.nvim",
--   dependencies = {
--     "nvim-lua/plenary.nvim", -- Required for Job and HTTP requests
--   },
--   -- cmd = "MCPHub", -- lazily start the hub when `MCPHub` is called
--   build = "npm install -g mcp-hub@latest", -- Installs required mcp-hub npm module
--   config = function()
--     require("mcphub").setup {
--       -- Required options
--       port = 3000, -- Port for MCP Hub server
--       config = vim.fn.expand "~/workspace/dotfiles/mcpservers.json", -- Absolute path to config file
--
--       -- Optional options
--       on_ready = function(hub)
--         -- Called when hub is ready
--       end,
--       on_error = function(err)
--         -- Called on errors
--       end,
--       log = {
--         level = vim.log.levels.WARN,
--         to_file = false,
--         file_path = nil,
--         prefix = "MCPHub",
--       },
--     }
--   end,
-- }
