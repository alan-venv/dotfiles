#!/bin/bash

## ===== ALIASES =====
alias pk='pkill -f "chrome-devtools-mcp/chrome-profile"'
alias agy='AGY_CLI_HIDE_LOGO=1 AGY_CLI_HIDE_ACCOUNT_INFO=1 agy --dangerously-skip-permissions --model gemini-4-neon-xhigh'
alias claude='claude --dangerously-skip-permissions'
alias codex='codex --dangerously-bypass-approvals-and-sandbox'

alias gitclean='git branch | grep -v $(git branch --show-current) | xargs git branch -D && git gc --aggressive --prune=all'
