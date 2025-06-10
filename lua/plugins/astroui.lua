--if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    -- colorscheme = "catppuccin-mocha",
    -- colorscheme = "gruvbox",
    -- colorscheme = "terafox",
    colorscheme = "vesper",
    -- colorscheme = "base16-black-metal-bathory",
    -- colorscheme = "rose-pine-moon",
    -- colorscheme = "duskfox",

    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      terafox = {
        Normal = { bg = "none" },
        NormalNC = { bg = "none" },
        NormalFloat = { bg = "none" },
        FloatBorder = { bg = "none" },
        Pmenu = { bg = "none" },
        StatusLine = { bg = "none" },
        StatusLineNC = { bg = "none" },
        -- Only neo-tree gets transparency
        NeoTreeNormal = { bg = "none" },
        NeoTreeNormalNC = { bg = "none" },
        -- CursorLine = { bg = "#0f1c1e" },
        CursorLine = { bg = "none" },
      },
      vesper = {
        CursorLine = { bg = "none" },
        Visual = { bg = "#33281f" },
        Whitespace = { fg = "#19140f" },
        Search = { bg = "#575757" },
        IncSearch = { bg = "#575757" },
      },
      -- github_light = {
      -- Normal = { bg = "#ffffff" },
      -- NormalNC = { bg = "#ffffff" },
      -- NormalFloat = { bg = "none" },
      -- FloatBorder = { bg = "none" },
      -- Normal         xxx guifg=#1f2328 guibg=#ffffff
      -- Normal = { bg = "#ffffff" },
      -- NormalSB = { bg = "none" },
      -- NormalNC       xxx guifg=#1f2328 guibg=#ffffff
      --   NormalNC = { bg = "none" },
      -- NeoTreeNormal  xxx links to NormalSB
      -- NeoTreeNormal = { guibg = "none" },
      -- NeoTreeNormalNC xxx links to NeoTreeNormal
      -- NeoTreeNormalNC = { guibg = "none" },
      -- posi acaso
      -- NormalSB       xxx guifg=#1f2328 guibg=#f6f8fa
      -- #f8f8f8
      -- },
      -- init = {
      --   Normal = { bg = "none" },
      --   NormalNC = { bg = "none" },
      --   NormalFloat = { bg = "none" },
      --   FloatBorder = { bg = "none" },
      --   Pmenu = { bg = "none" },
      --   StatusLine = { bg = "none" },
      --   StatusLineNC = { bg = "none" },
      --   NeoTreeNormal = { bg = "none" },
      --   NeoTreeNormalNC = { bg = "none" },
      -- },
    },
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}
