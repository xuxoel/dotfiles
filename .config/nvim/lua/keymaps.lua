-- Telescope
vim.api.nvim_set_keymap('n','<leader>ff','<cmd>Telescope find_files<cr>',{})
vim.api.nvim_set_keymap('n','<leader>fg','<cmd>Telescope live_grep<cr>',{})
vim.api.nvim_set_keymap('n','<leader>fb','<cmd>Telescope buffers<cr>',{})
vim.api.nvim_set_keymap('n','<leader>fh','<cmd>Telescope help_tags<cr>',{})

-- Arduino keymaps
vim.api.nvim_set_keymap('n','<leader>aa','<cmd>ArduinoAttach<cr>',{})
vim.api.nvim_set_keymap('n','<leader>av','<cmd>ArduinoVerify<cr>',{})
vim.api.nvim_set_keymap('n','<leader>au','<cmd>ArduinoUpload<cr>',{})
vim.api.nvim_set_keymap('n','<leader>as','<cmd>ArduinoSerial<cr>',{})
vim.api.nvim_set_keymap('n','<leader>aus','<cmd>ArduinoUploadAndSerial<cr>',{})
vim.api.nvim_set_keymap('n','<leader>ab','<cmd>ArduinoChooseBoard<cr>',{})
vim.api.nvim_set_keymap('n','<leader>ap','<cmd>ArduinoChooseProgrammer<cr>',{})

-- Deadkeys
vim.api.nvim_set_keymap('i',"'a",'á',{})
vim.api.nvim_set_keymap('i',"'e",'é',{})
vim.api.nvim_set_keymap('i',"'i",'í',{})
vim.api.nvim_set_keymap('i',"'o",'ó',{})
vim.api.nvim_set_keymap('i',"'u",'ú',{})
vim.api.nvim_set_keymap('i',"'A",'Á',{})
vim.api.nvim_set_keymap('i',"'E",'É',{})
vim.api.nvim_set_keymap('i',"'I",'Í',{})
vim.api.nvim_set_keymap('i',"'O",'Ó',{})
vim.api.nvim_set_keymap('i',"'U",'Ú',{})
vim.api.nvim_set_keymap('i',"~n",'ñ',{})
vim.api.nvim_set_keymap('i',"~N",'Ñ',{})

