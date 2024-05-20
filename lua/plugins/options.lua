return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      options = {
        opt = {
          colorcolumn = "100",
        },
      },
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          ["<tab>"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "New tab" },
          ["<S-tab>"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous tab" },
          ["<leader>go"] = { ":Neotree position=float git_status<CR>", desc = "Git status" },
          ["<leader>fe"] = { ":Telescope neoclip<CR>", desc = "Find in clipboard" },
        },
      },
    },
  },
}
