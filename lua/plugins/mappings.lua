return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<tab>"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "New tab" },
          ["<S-tab>"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous tab" },
        },
      },
    },
  },
}
