if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        highlight = {
            additional_vim_regex_highlighting = false,
        },
        ensure_installed = {
            "lua",
            "vim",
            "go",
            "html",
            "css",
            "scss",
            "sql",
            "dockerfile",
            "bash",
            "gitignore",
        },
    },
}
