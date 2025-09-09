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

# Open the Pull Request URL for your current directory's branch (base branch defaults to main)
  function openpr() {
    github_url=`git remote -v | awk '/fetch/{print $2}' | sed -Ee 's#(git@|git://)#https://#' -e 's@com:@com/@' -e 's%\.git$%%' | awk '/github/'`;
    branch_name=`git symbolic-ref HEAD | cut -d"/" -f 3,4`;
    pr_url=$github_url"/compare/main..."$branch_name
    open $pr_url;
  }

# Check, build and run Cargo
  alias cc="cargo check"
  alias cb="cargo build"
  alias cr="cargo run"

# Activate venv
  alias activate="source .venv/bin/activate"
