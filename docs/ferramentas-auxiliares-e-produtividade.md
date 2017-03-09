Ferramentas & Produtividade
===========================

Stash
-----

Para salvar trabalhos temporários

```
git stash
git stash apply

```

### Visualizar o stash

```
git stash show -p

```

Gitk
----

Uma interface nativa para quem gosta de interfaces gráficas

Bash aliases
------------

```
alias amend='git commit --amend'
alias b='git branch'
alias branch='git branch'
alias check='export PREV_BRANCH=`cb` && git checkout'
alias cm='git commit'
alias cm='git status && git add . && git commit -m "'
alias g='git'
alias ga='git add'
alias gac='git-add-commit'
alias gb='git branch'
alias gbi='git bisect'
alias gc='git commit'
alias gck='git checkout'
alias gckm='git checkout master'
alias gckm='git checkout master'
alias gdf='git diff'
alias gdfn='git --no-pager diff --name-only'
alias gf='git fetch'
alias gfc='git fetch && git checkout'
alias gh='git rev-parse HEAD'
alias git-manual='chromium /home/jean/projects/git/Documentation/user-manual.html'
alias git-show-files='git diff-tree --no-commit-id --name-only -r'
alias git='hub'
alias gl="git log --pretty=oneline"
alias gm='git merge'
alias gp='git push'
alias gr='git remote'
alias grh='git reset --hard HEAD'
alias grhh='git reset --hard HEAD'
alias gs='git status -s'
alias gt='git tag'
alias lcb='git pull origin `cb`'
alias lom='echo "Consider using: [git pull --rebase] instead" ; git pull origin master'
alias lr='git pull compufacil master  --rebase'
alias pcb='git push origin `cb`'
alias status='git status'

```

### Funções


```
current_branch() {
    git branch 2> /dev/null | grep "*" | cut -d" " -f2
}

commit_diff () {
    git diff $1~ $1
}

not_committed_files () {
    git ls-files --others --exclude-standard
}

commit_count () {
    git log --pretty=oneline | wc -l
}


last_diff_file() {
    last_diff=${2:-1}
    file_name=$1
    git log -p --follow -$last_diff $file_name
}
```

