return {
  { "akinsho/bufferline.nvim", enabled = false },
  { "neovim/nvim-lspconfig", enabled = false },
  {
    "folke/snacks.nvim",
    opts = {
      indent = { enabled = false },
      -- This disables the vertical lines for indentation
      -- See hlchunk in files.lua for how we handle
      -- indentation
    },
  },
}
