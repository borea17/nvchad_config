local M = {}

-- disable keybindings
M.disabled = {
  n = {
    ["<leader>h"] = "",
  }
}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["<leader>qq"] = { "<cmd> qa <cr>", "quit" },

    -- shell 
    ["<leader>sv"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal vterm",
    },

    -- buffer
    ["<leader>bn"] = { "<cmd> enew <CR>", "new buffer" },
  },
}

return M
