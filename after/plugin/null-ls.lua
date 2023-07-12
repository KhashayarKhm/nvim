local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.eslint_d.with({
      diagnostics_format = '[eslint] #{m}\n(#{c})'
    }),
    null_ls.builtins.diagnostics.fish
  }
})

-- local null_ls = require("null-ls")
--
-- null_ls.setup({
--     sources = {
--         -- null_ls.builtins.code_actions.eslint_d,
--         null_ls.builtins.code_actions.eslint,
--         null_ls.builtins.code_actions.refactoring,
--         -- null_ls.builtins.diagnostics.eslint_d,
--         null_ls.builtins.diagnostics.eslint,
--         null_ls.builtins.diagnostics.tsc,
--         -- null_ls.builtins.formatting.eslint_d,
--         null_ls.builtins.formatting.eslint,
--         -- null_ls.builtins.formatting.prettier_d_slim,
--         null_ls.builtins.formatting.prettier,
--         null_ls.builtins.completion.spell,
--     },
-- })
