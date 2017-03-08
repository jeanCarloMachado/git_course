Removendo arquivos do último commit
-----------------------------------

```
git rm file_name

```


filter-branch
-------------

```
 git filter-branch --force --index-filter \
'git rm --cached --ignore-unmatch PATH-TO-YOUR-FILE-WITH-SENSITIVE-DATA' \
--prune-empty --tag-name-filter cat -- --all

```
