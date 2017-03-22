### Remover do staging o que ainda não está comitado

```sh
git reset HEAD

```

ou

```sh
git reset HEAD file.txt

```
### Remover arquivos criados mas não versionados

```sh
git clean

```


Desfazer modificações não comitadas
-----------------------------------

```sh
git checkout -- filename

```


### Trocar a última mensagem de commit

```
git commit --amend

```

### Adicionando um arquivo ao commit anterior

```
git add file_x.md
git commit --amend

```

### Revert

Desfaz um commit criando um novo commit. Recomendado em branches
públicas onde o histórico não pode ser reescrito.

```
git checkout hotfix
git revert HEAD~2

```

### Desfazendo últimos 3 commits - sem desfazer o código

```
git reset --soft HEAD~3

```

### Desfazendo últimos 3 commits - desfazendo o código

```
git reset --hard HEAD~3

```

