Removendo arquivos do histórico
-------------------------------

```
git filter-branch --tree-filter 'rm -rf passwords.txt' HEAD.

```

```
 git filter-branch --force --index-filter \
'git rm --cached --ignore-unmatch PATH-TO-YOUR-FILE-WITH-SENSITIVE-DATA' \
--prune-empty --tag-name-filter cat -- --all

```

Fazendo garbage collection "packfiles"
--------------------------------------

```
git reflog expire --expire-unreachable=now --all
git gc --prune=now
```

Removendo branches já trabalhadas
---------------------------------

```
git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d

```
