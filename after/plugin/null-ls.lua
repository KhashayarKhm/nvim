local status, null_ls = pcall(require, "null-ls")
local methods = require("null-ls.methods")
local helpers = require("null-ls.helpers")

if (not status) then return end

local function ruff_fix()
    return helpers.make_builtin({
        name = "ruff",
        meta = {
            url = "https://github.com/charliermarsh/ruff/",
            description = "An extremely fast Python linter, written in Rust.",
        },
        method = methods.internal.FORMATTING,
        filetypes = { "python" },
        generator_opts = {
            command = "ruff",
            -- args = { "--fix", "-e", "-n", "--stdin-filename", "$FILENAME", "-" },
            args = { "format", "--stdin-filename", "$FILENAME", "-" },
            to_stdin = true
        },
        factory = helpers.formatter_factory
    })
end

null_ls.setup({
  sources = {
    -- null_ls.builtins.formatting.black,
    -- null_ls.builtins.formatting.ruff.with({
    --   arg = { "format", "$FILENAME" },
    -- }),
    ruff_fix(),
    null_ls.builtins.formatting.prettier_d_slim,
    null_ls.builtins.diagnostics.eslint_d.with({
      diagnostics_format = '[eslint] #{m}\n(#{c})'
    })
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
