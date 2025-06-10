--if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  -- Now using aider instead at plugins/ai.lua
  -- { import = "astrocommunity.completion.avante-nvim" },

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.everforest" },
  { import = "astrocommunity.colorscheme.gruvbox-baby" },
  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.colorscheme.nordic-nvim" },
  { import = "astrocommunity.colorscheme.iceberg-vim" },
  { import = "astrocommunity.colorscheme.gruvbox-nvim" },
  { import = "astrocommunity.colorscheme.neofusion-nvim" },
  { import = "astrocommunity.colorscheme.miasma-nvim" },
  -- { import = "astrocommunity.colorscheme.github-nvim-theme", opts = {
  --   transparent = true,
  -- } },
}
