require("luasnip")
local extras = require("luasnip.extras")

-- Check if jsregexp is available
if extras.jsregexp then
  extras.jsregexp() -- Call jsregexp if it exists
else
  print("jsregexp not available in luasnip.extras")
end

-- Other luasnip setup

