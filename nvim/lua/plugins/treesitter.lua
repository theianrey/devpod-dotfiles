-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      -- add more arguments for adding more treesitter parsers
      "regex",
      "vimdoc",
    },
    sync_install = false,
    auto_install = true,
    highlight = {
      enabled = true,
    },
  },
}
