-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- ------------------------
-- Set up custom filetypes
-- ------------------------
vim.filetype.add {
  extension = {
    templ = "templ",
  },
}

function PythonSettings()
  vim.bo.tabstop = 4
  vim.bo.shiftwidth = 4
end

function GolangSettings()
  vim.bo.tabstop = 4
  vim.bo.shiftwidth = 4
end

vim.cmd [[
augroup FileTypeSettings
    autocmd!
    autocmd FileType python lua PythonSettings()
    autocmd FileType go lua GolangSettings()
augroup END
]]

-- ------------------------
-- Keymaps
-- ------------------------

-- windows
vim.keymap.set("n", "<leader><left>", ":vertical resize +20<cr>")
vim.keymap.set("n", "<leader><right>", ":vertical resize -20<cr>")
vim.keymap.set("n", "<leader><up>", ":resize +10<cr>")
vim.keymap.set("n", "<leader><down>", ":resize -10<cr>")

-- files
vim.keymap.set("n", "<leader>cwd", ":cd %:h<cr>", { desc = "set the current directory to the file's directory" })

-- ------------------------
-- Appearance
-- ------------------------
-- hide the folding column indicator on the left
vim.opt.foldcolumn = "0"

-- ------------
-- Avante
-- ------------
-- views can only be fully collapsed with the global statusline
vim.opt.laststatus = 3

-- ------------
-- CodeCompanion
-- ------------
-- vim.keymap.set({ "n", "v" }, "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
-- vim.keymap.set({ "n", "v" }, "<LocalLeader>a", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
-- vim.keymap.set("v", "ga", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true })

-- Expand 'cc' into 'CodeCompanion' in the command line
-- vim.cmd [[cab cc CodeCompanion]]

-- -------------------
-- Floating Terminal
-- -------------------
local Terminal = require("toggleterm.terminal").Terminal

-- ------------
-- Lazydocker
-- ------------
local lazydocker = Terminal:new { cmd = "lazydocker", hidden = true }
function lazydocker_toggle() lazydocker:toggle() end

vim.cmd [[command! Lazydocker lua lazydocker_toggle()]]
vim.api.nvim_set_keymap(
  "n",
  "<leader>dd",
  "<cmd>lua lazydocker_toggle()<CR>",
  { desc = "Lazydocker", noremap = true, silent = true }
)

--- ------------
--- curl.nvim
--- ------------
local curl = require "curl"
curl.setup {}

vim.keymap.set(
  "n",
  "<leader>rr",
  function() curl.open_curl_tab() end,
  { desc = "Open a curl tab scoped to the current working directory" }
)

vim.keymap.set("n", "<leader>co", function() curl.open_global_tab() end, { desc = "Open a curl tab with gloabl scope" })

-- These commands will prompt you for a name for your collection
vim.keymap.set(
  "n",
  "<leader>rlc",
  function() curl.create_scoped_collection() end,
  { desc = "Create or open a collection with a name from user input" }
)

vim.keymap.set(
  "n",
  "<leader>rgc",
  function() curl.create_global_collection() end,
  { desc = "Create or open a global collection with a name from user input" }
)

vim.keymap.set(
  "n",
  "<leader>rlp",
  function() curl.pick_scoped_collection() end,
  { desc = "Pick a local/scoped collection and open it" }
)

vim.keymap.set(
  "n",
  "<leader>rgp",
  function() curl.pick_global_collection() end,
  { desc = "Pick a global collection and open it" }
)
