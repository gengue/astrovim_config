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
