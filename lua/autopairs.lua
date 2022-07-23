local status_ok_npairs, npairs = pcall(require, 'nvim-autopairs')
local status_ok_rule, Rule = pcall(require, 'nvim-autopairs.rule')

if not status_ok_npairs then
  return
end

if not status_ok_rule then
  return
end

npairs.setup({
    check_ts = true,
    ts_config = {
        lua = {'string'},-- it will not add a pair on that treesitter node
        javascript = {'template_string'},
        java = false,-- don't check treesitter on java
    }
})

local ts_conds = require('nvim-autopairs.ts-conds')


-- press % => %% only while inside a comment or string
npairs.add_rules({
  Rule("%", "%", "lua")
    :with_pair(ts_conds.is_ts_node({'string','comment'})),
  Rule("$", "$", "lua")
    :with_pair(ts_conds.is_not_ts_node({'function'}))
})

