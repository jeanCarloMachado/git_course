### O que ainda não está comitado

```
git reset --hard HEAD

```

### Remover arquivos criados mas não versionados

```
git ls-files --others --exclude-standard | xargs rm

```

### Remover do staging

```
git reset HEAD $FILE

```

### Revert

Desfaz um commit criando um novo commit. Recomendado em branches
públicas onde o histórico não pode ser reescrito.

```
git checkout hotfix
git revert HEAD~2

```

### Trocar a última mensagem de commit

```
git commit --amend

```

### Desfazendo últimos 3 commits - sem desfazer o código

```
git reset --soft HEAD~3

```

### Desfazendo últimos 3 commits - desfazendo o código

```
git reset --hard HEAD~3

```

