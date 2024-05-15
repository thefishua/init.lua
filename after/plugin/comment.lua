-- Create group to assign commands
-- "clear = true" must be set to prevent loading an
-- auto-command repeatedly every time a file is resourced
-- https://stackoverflow.com/questions/77147995/setting-up-formatters-in-neovim-with-mason-lsp-zero
local comment = require('Comment')
comment.setup()
