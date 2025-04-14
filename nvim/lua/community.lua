-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  
  { import = "astrocommunity.recipes.heirline-nvchad-statusline" }, -- update status line display 
  -- language packs
  { import = "astrocommunity.pack.lua" },
  -- icons
  { import = "astrocommunity.icon.mini-icons" },
  { import = "astrocommunity.recipes.vscode-icons" }, -- use vscode icons
}
