-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
--
-- Load Catppuccin Mocha with transparency
require("catppuccin").setup({
  flavour = "mocha",
  transparent_background = true,
})

-- Apply the theme
vim.cmd("colorscheme catppuccin")
vim.cmd("highlight CursorLine guibg=NONE")

if vim.g.neovide then
  local alpha = function()
    return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
  end
  vim.g.neovide_transparency = 0.9
  vim.g.transparency = 0.9
  vim.g.neovide_background_color = "#8caaee" .. alpha()
  vim.cmd("colorscheme tokyonight")
  vim.g.tokyonight_style = "storm"
  vim.g.neovide_cursor_trail_size = 0.2
end
