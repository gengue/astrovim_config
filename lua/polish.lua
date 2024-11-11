--if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    templ = "templ",
  },
}

-- for Avante
-- views can only be fully collapsed with the global statusline
vim.opt.laststatus = 3

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

local Terminal = require("toggleterm.terminal").Terminal
local lazydocker = Terminal:new { cmd = "lazydocker", hidden = true }

function lazydocker_toggle() lazydocker:toggle() end

-- Lazydocker
vim.cmd [[command! Lazydocker lua lazydocker_toggle()]]
vim.api.nvim_set_keymap(
  "n",
  "<leader>dd",
  "<cmd>lua lazydocker_toggle()<CR>",
  { desc = "Lazydocker", noremap = true, silent = true }
)

-- It can be helpful to add mappings to make moving in and out of a terminal easier once toggled, whilst still keeping it open.
-- function _G.set_terminal_keymaps()
--   local opts = { buffer = 0 }
--   vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
--   vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
--   vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
--   vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
--   vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
--   vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
--   vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
-- end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
-- vim.cmd "autocmd! TermOpen term://* lua set_terminal_keymaps()"
