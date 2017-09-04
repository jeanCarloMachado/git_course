## Desfazendo


### Últimos 3 commits

```sh
git undo 3
```

### Recuperando na área de trabalho

```
git log
rm -rf docs
browser http://localhost:8000
git reset --hard HEAD
browser http://localhost:8000

```

### Recuperando versão X do histórico

```sh
git checkout commit X
git checkout -b "nova_branch"
git checkout master
git merge nova_branch

```

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


### Revert

Desfaz um commit criando um novo commit. Recomendado em branches
públicas onde o histórico não pode ser reescrito.

```sh
git checkout hotfix
git revert HEAD~2

```

### Desfazendo últimos 3 commits - sem desfazer o código

```sh
git reset --soft HEAD~3

```

### Desfazendo últimos 3 commits - desfazendo o código

```
git reset --hard HEAD~3

```

Stash
-----

Para salvar trabalhos temporários

```sh
git stash
git stash apply

```

### Visualizar o stash

```sh
git stash show -p

```

