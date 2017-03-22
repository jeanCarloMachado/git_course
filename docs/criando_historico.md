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

### Gitk

```sh
gitk

```
ou

```sh
gitk nome_do_arquivo

```

### Git log

```sh
git log

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


Removendo arquivos
------------------

git rm --cached foo.txt//staging
git rm foo.txt


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
