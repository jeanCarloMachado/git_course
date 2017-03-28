Status
------

Git status dá informações de como está seu repositório. Muito útil
ara saber qual a próxima coisa a se fazer.

```sh
git status
git status -s

```

Add
---

Git add adiciona arquivos a uma área temporária
para compor um commit (staging).

```
git add $ARQUIVO|$DIRETORIO
```

Commit
------

Cada mudança no histórico de um projeto é representado por um
commit. `git show` mostra o  último commit.

Para uma lista completa dos commits use: `git log`.

```
git commit
```

O commit transfere as informações para o repositório local.

Para pular a fase de staging em arquivos já existentes:

```sh
git commit -a

```

Consultando o histórico
-----------------------

### Git log

```sh
git log

```

### Gitk

```sh
gitk

```

### Setup mkdocs


```sh
gitk nome_do_arquivo

```

Removendo arquivos
------------------

```sh
git rm --cached foo.txt//staging
git rm foo.txt

```

Gitignore
----------

```sh
site/*
*.pd
*.doc
presentation.pdf
.DS_Store
*.un~
*.disabled
Backend/data/tmp*
*.eml
Backend/config/autoload/*local.php

```
Renomeando arquivos
-------------------

```sh
git mv REDME.md README

```

é equivalente a

```sh
mv README.md README
git rm README.md
git add README

```
