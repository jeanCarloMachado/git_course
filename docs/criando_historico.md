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
ou

```sh
gitk nome_do_arquivo

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
