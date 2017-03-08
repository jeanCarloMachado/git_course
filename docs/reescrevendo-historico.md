Rebase
------

```
git rebase master

```

A regra de ouro do rebase
-------------------------

https://www.atlassian.com/git/tutorials/merging-vs-rebasing?section=the-golden-rule-of-rebasing

Squash
------

```
git rebase -i

```
Ou

```
git merge --squash feature_branch

```

Editar um commit anterior
-------------------------

- Rebase no commit e marcar ele como editado
- Comitar as alterações
- Fazer um fix up no commit com seu pai


```
git rebase -i HEAD~3

```

Criando dois commits a partir de 1
----------------------------------

```
rebase iterativo com edit
git reset HEAD^
... add commit 2x
rebase --continue
```


Removendo arquivos do último commit
-----------------------------------

```
git rm file_name

```

filter-branch
-------------

```
git filter-branch --tree-filter 'rm -rf passwords.txt' HEAD.

```

```
 git filter-branch --force --index-filter \
'git rm --cached --ignore-unmatch PATH-TO-YOUR-FILE-WITH-SENSITIVE-DATA' \
--prune-empty --tag-name-filter cat -- --all

```




