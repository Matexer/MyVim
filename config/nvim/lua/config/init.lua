local path = (...):match("(.-)[^%.]+$")

require(path .. "coc_config")
require(path .. "telescope_config")
require(path .. "dap_ui_config")
require(path .. "nvimtree_config")
