return {
  "f-person/auto-dark-mode.nvim",
  opts = {
    update_interval = 1000,
    set_dark_mode = function()
      vim.api.nvim_set_option_value("background", "dark", {})
      -- vim.cmd "colorscheme terafox"
      vim.cmd "colorscheme vesper"
    end,
    set_light_mode = function()
      vim.api.nvim_set_option_value("background", "light", {})
      -- vim.cmd "colorscheme astrolight"
      vim.cmd "colorscheme github_light"
    end,
  },
}
