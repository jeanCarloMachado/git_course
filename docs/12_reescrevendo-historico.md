É possível adicionar algo a um commit nos seguintes passos:

- Rebase no commit e marcar ele como editado
- Comitar as alterações
- Fazer um fix up no commit com seu pai


A regra de ouro do rebase
https://www.atlassian.com/git/tutorials/merging-vs-rebasing?section=the-golden-rule-of-rebasing

Revert
------

Desfaz um commit criando um novo commit. Recomendado em branches
públicas onde o histórico não pode ser reescrito.

```
git checkout hotfix
git revert HEAD~2

```
