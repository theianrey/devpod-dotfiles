-- comments highlighter plugin 


return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    events = "User AstroFile",
  }  
}
