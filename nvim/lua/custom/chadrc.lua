---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  tabufline = {
    theme = "gruvbox",
    theme_toggle = { "gruvbox", "gruvbox_light" },
    order = {"treeOffset", "buffers", "tabs", "btns"},

  },
  hl_override = highlights.override,
  hl_add = highlights.add,
  telescope = { style = "borderless" },
   cmp = {
    icons = true,
    lspkind_text = true,
    style = "atom", -- default/flat_light/flat_dark/atom/atom_colored
    border_color = "grey_fg", -- only applicable for "default" style, use color names from base30 variables
    selected_item_bg = "colored", -- colored / simple
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
