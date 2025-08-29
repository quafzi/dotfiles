local M = {}

function M.build_tags()
    local cwd = vim.fn.getcwd()
    local cmd = "!ctags -R . $(bundle list --paths)"
    vim.cmd(cmd)
end

return M
