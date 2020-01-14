
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

clonefork() {
  hub clone "$1"
  cd "${1##*/}"
  hub fork
}

alias git='hub'
alias update-fork='git fetch upstream && git checkout master && git merge upstream/master && git push origin master'

alias gitzip="git archive HEAD -o "

alias glg1="git log --graph --all --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%cr)%C(reset) %C(white)%s%C(reset) %C(bold white)â€” %cn%C(reset)%C(bold yellow)%d%C(reset)' --abbrev-commit --date=relative"
alias glg2="git log --graph --all --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%cD%C(reset) %C(bold green)(%cr)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(bold white)â€” %cn%C(reset)' --abbrev-commit"
# alias glg= !"git lg1"
alias gdname="git diff --name-only origin"
alias gundocommit="git reset HEAD~1"
alias goldiff="git diff --name-status"
alias gs="git status -s"
alias gci="git commit"
alias gbr="git branch"
alias gco="git checkout"
alias gdf="git diff"
alias gdc="git diff --cached"
alias glg="git log -p"
alias glol="git log --graph --decorate --pretty=oneline --abbrev-commit"
alias glola="git log --graph --decorate --pretty=oneline --abbrev-commit --all"
alias glsf="git ls-files"
alias glogsinglefile="git log --follow"
alias ghist="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias gtype="git cat-file -t"
alias gdump="git cat-file -p"
alias gec="git config --global -e"
alias gpa="alias | grep '^g'"

alias gpd="git push d3omni HEAD:refs/drafts/102/master/mm_2"