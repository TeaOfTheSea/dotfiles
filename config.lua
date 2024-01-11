-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- Near-normal mappings
lvim.keys.normal_mode["d"] = '"_d'
lvim.keys.visual_mode["d"] = '"_d'
lvim.keys.normal_mode["x"] = '"+d'
lvim.keys.normal_mode["xx"] = '"+dd'
lvim.keys.normal_mode["p"] = '"_dh"+p'
lvim.keys.visual_mode["p"] = '"_dh"+p'

--Custom insert mode navigation
lvim.keys.insert_mode["<C-h>"] = '<Left>'
lvim.keys.insert_mode["<C-l>"] = '<Right>'
lvim.keys.insert_mode["<C-j>"] = '<Down>'
lvim.keys.insert_mode["<C-k>"] = '<Up>'

--Binds for plugins
lvim.keys.normal_mode["t"] = ':ToggleTerm size=10 direction=horizontal<cr>'
lvim.keys.normal_mode["<C-t>"] = ':NvimTreeOpen<cr>'
