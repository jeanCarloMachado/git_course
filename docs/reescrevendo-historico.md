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
