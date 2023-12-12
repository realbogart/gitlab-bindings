if vim.fn.has("nvim-0.7.0") == 0 then
  vim.api.nvim_err_writeln("gitlab_bindings requires at least nvim-0.7.0.1")
  return
end

-- make sure this file is loaded only once
if vim.g.loaded_gitlab_bindings == 1 then
  return
end
vim.g.loaded_gitlab_bindings = 1

-- create any global command that does not depend on user setup
-- usually it is better to define most commands/mappings in the setup function
-- Be careful to not overuse this file!
local gitlab_bindings = require("gitlab_bindings")

vim.api.nvim_create_user_command(
  "MyAwesomePluginGenericGreet",
  gitlab_bindings.generic_greet,
  {})

