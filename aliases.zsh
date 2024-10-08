# ====ALIAS-CONFIGURATION====

# Go back
  alias ..="cd .."

# Go to vegardpedersen
  alias vp="cd ~/vegardpedersen"

# Open vscode
  alias c="code ."

# Git add
  alias ga="git add"

# Git commit
  alias gc="git commit"

# Git status
  alias gs="git status"

# Git push
  alias gp="git pull"

# Git checkout main
  alias gcm="git checkout main"

# Git checkout new branch
  alias gcn="git checkout -b"

# Git branch
  alias gb="git branch"

# Show previous branches
  function branch() {git checkout $(git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)|%(committerdate:relative)|%(authorname)' --color=always|column -ts'|' | fzf | cut -f 1 -d ' ')}
  alias b='branch'

# Check, build and run Cargo
  alias cc="cargo check"
  alias cb="cargo build"
  alias cr="cargo run"
