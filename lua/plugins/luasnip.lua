local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep
local fmt = require("luasnip.extras.fmt").fmt
local c = ls.choice_node
local f = ls.function_node
local sn = ls.snippet_node

return {

    vim.keymap.set({ "i", "s" }, "<c-k>", function()
        if ls.expand_or_jumpable() then
            ls.expand_or_jump()
        end
    end, { silent = true }),

    vim.keymap.set({ "i", "s" }, "<c-j>", function()
        if ls.jumpable(-1) then
            ls.jump(-1)
        end
    end, { silent = true }),

    ls.add_snippets("lua", {
        -- s("hello", {
        --     t('print("hello '),
        --     i(1),
        --     t(' world")'),
        -- }),
        -- s("fi", {
        --     t('if '),
        --     i(1, "true"),
        --     t(' then '),
        --     i(2),
        --     t(' end')
        -- }),

        -- s("beg", {
        --     t("\\begin{"), i(1), t("}"),
        --     t({ "", "\t"}), i(0),
        --     t({ "", "\\end{" }), rep(1), t("}"),
        -- })
    }),
    ls.add_snippets("html", {
        s("sso", {
            t('<script src="'), i(1),
            t('"></script> ') }),
    }),
    ls.add_snippets("javascript", {
        s("gid", {
            t('let '), i(1),
            t(' = document.getElementById("'), i(2),
            t('")'),
            -- t('print("hello '),
            -- i(1),
            -- t(' world")'),
        }),
        s("gcl", {
            t('let '), i(1),
            t(' = document.getElementsByClassName("'), i(2),
            t('")'),
            -- t('print("hello '),
            -- i(1),
            -- t(' world")'),
        }),
        s("cl", {
            t('console.log('),
            i(1),
            t(')'),
            -- t('print("hello '),
            -- i(1),
            -- t(' world")'),
        }),
        -- s("fn", {
        --     t('function '), i(1),
        --     t('('), i(2),
        --     t(')'),
        --     t('{}'),
        --     -- t('print("hello '),
        --     -- i(1),
        --     -- t(' world")'),
        -- }),
        -- s("fi", {
        --     t('if '),
        --     i(1, "true"),
        --     t(' then '),
        --     i(2),
        --     t(' end')
        -- }),

        -- s("beg", {
        --     t("\\begin{"), i(1), t("}"),
        --     t({ "", "\t"}), i(0),
        --     t({ "", "\\end{" }), rep(1), t("}"),
        -- })
    }),

    ls.add_snippets("typescript", {
        s("gid", {
            t('let '), i(1),
            t(' = document.getElementById("'), i(2),
            t('")'),
            -- t('print("hello '),
            -- i(1),
            -- t(' world")'),
        }),
        s("gcl", {
            t('let '), i(1),
            t(' = document.getElementsByClassName("'), i(2),
            t('")'),
            -- t('print("hello '),
            -- i(1),
            -- t(' world")'),
        }),
        s("cl", {
            t('console.log('),
            i(1),
            t(')'),
            -- t('print("hello '),
            -- i(1),
            -- t(' world")'),
        }),
        -- s("fi", {
        --     t('if '),
        --     i(1, "true"),
        --     t(' then '),
        --     i(2),
        --     t(' end')
        -- }),

        -- s("beg", {
        --     t("\\begin{"), i(1), t("}"),
        --     t({ "", "\t"}), i(0),
        --     t({ "", "\\end{" }), rep(1), t("}"),
        -- })
    }),
}
