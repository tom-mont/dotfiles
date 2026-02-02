return {
  { "nvim-lua/plenary.nvim" },
  { "ThePrimeagen/harpoon" },
  { "nvim-lua/plenary.nvim", dependencies = { "OXY2DEV/markview.nvim" }, lazy = false },
  -- Set up telescope settings
  { "nvim-treesitter/nvim-treesitter" },
  { "nvim-tree/nvim-web-devicons", opts = {} },
  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("hlchunk").setup({
        chunk = {
          enable = true,
          opts = {
            delay = 1,
            duration = 1,
          },
        },
      })
    end,
  },
  { "BurntSushi/ripgrep" },
  { "windwp/nvim-autopairs", enabled = true },
}
