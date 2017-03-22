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

Boas práticas de nomenclatura de commits
https://www.alexkras.com/19-git-tips-for-everyday-use/#good-commit-message

Consultando o histórico com o gitk
----------------------------------

```
gitk

```

ou

```
gitk nome_do_arquivo

```

### Recuperando arquivos

```
git log
rm -rf docs
browser http://localhost:8000
git reset --hard HEAD
browser http://localhost:8000

```

Exercício
---------

```
Crie um projeto usando o mkdocs
Crie um arquivo resumindo como inicilizar um projeto git
Comite esse arquivo
Crie um arquivo resumindo como utilizar o commit
Comite esse arquivo
Consulte a versão anterior com o gitk
```

### Setup mkdocs


```
$ pip install mkdocs
$ mkdocs new git-docs
$ cd git-docs
$ mkdocs serve
$ browser http://localhost:8000
```

