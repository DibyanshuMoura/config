return {
  -- Install and setup the Vantablack color scheme plugin
  {
    "bjarneo/vantablack.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("vantablack").setup({
        transparent = false,
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
        },
      })
      vim.cmd.colorscheme("vantablack")
    end,
  },

  -- Tell LazyVim to set Vantablack as the active colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vantablack",
    },
  },
}
