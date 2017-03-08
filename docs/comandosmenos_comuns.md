Rev-parse
---------

Retorna o commit que alguma branch está apontando.

```
git rev-parse master
git rev-parse HEAD
cat .git/HEAD
```

Reflog
------

Mostra um log dos comandos usados no repositório. Similar ao
.bash_history (para operações locais)

```
git reflog

ou

git log -g
```


Generate a zip from the repository
----------------------------------

```
git archive --format zip --output /full/path/to/zipfile.zip master 

```
Merge de múltiplas branches
---------------------------

octopus merge

ours
http://stackoverflow.com/questions/16208144/how-do-i-merge-multiple-branches-into-master

Staging parcial
---------------

```
git add -p

```

Gui para fazer merge
--------------------

```
 git mergetool

```


Git grep
--------


### Procura pro conteúdo de commits

```
git grep -i "linux" $(git rev-list --all )
git grep <regexp> $(git rev-list --all -- lib/util) -- lib/util
```


Remover arquivos não versionados
--------------------------------

```
git clean -f

```

Git rerere
----------

Para "ensinar" o git a resolver algum tipo de conflito
