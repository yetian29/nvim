return {
  {
    "ldelossa/litee.nvim",
    dependencies = {
      "ldelossa/litee-calltree.nvim",
    },
    config = function()
      require("config.litee")
    end,
  }
}
