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
