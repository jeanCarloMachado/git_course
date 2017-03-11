Rebase
------

Coloca o histórico da branch atual no topo da branch `target`.

```
git rebase target

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

