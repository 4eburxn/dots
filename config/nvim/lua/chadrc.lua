-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "doomchad",

	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},
}

M.nvdash = {
  buttons = require "nvdash",
  header = {
"                             ▄▌▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌                       ",
"                          ▄▄██▌█ ═ Фура ═ Говнокода ═══ ▌                ⁘      ",
"                       ▄▄▄▌▐██▌█ ═══ Разгружаем ═══════ ▌       ⁘  ⁘ ⁘ ⁘ ⁘ ⁘⁘⁘⁘⁘", -- TODO host gettr
"                       ███████▌█▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌.⁘⁘⁘*⁘⁘⁘⁘ *⁘⁘⁘⁘        ",
"                       ▀(⊙)▀▀▀▀(⊙)(⊙)▀▀▀▀▀▀▀▀▀▀▀▀▀(⊙).*⁘⁘⁘⁘*⁘ ⁘  *⁘             ",
    "",
    "",
    "",
},
  load_on_startup = true,
  -- buttons = fonny()
  -- buttons = {{txt="  Find File", keys="ff", cmd="Telescope find_files"}, unpack(fonny())} -- table.unpack
}

-- vim.print("M.nvdash.buttons=",M.nvdash.buttons)
-- vim.print(vim.inspect(require("project_nvim").get_recent_projects()))

M.ui = {
      tabufline = {
        order = { "treeOffset", "buffers", "tabs"},
         lazyload = false
     }
}

return M
