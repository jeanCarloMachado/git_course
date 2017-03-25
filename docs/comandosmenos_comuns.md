Rev-parse
---------

Retorna o commit que algo está apontando.

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

Cherry-Pick
-----------

Permite aplicar um único commit de outra branch.

```
git cherry-pick

```


Archive the repository
----------------------

```
git archive --format zip --output /full/path/to/zipfile.zip master 
git archive master --format=tar --output=../website-12-10-2012.tar

```

Bundle
------

```
git bundle create ../repo.bundle master
git bundle unbundle ../repo.bundle master

```
Mantém o histórico.

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

GUI para fazer merge
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




Últimas N alterações em um arquivo
----------------------------------

```
git log -p --follow -2 Backend/module/Api/src/Api/Service/ErrorProcessor.php
```

Diferença entre branches
------------------------

### Todos os commits que estão na branch develop mas não estão na master

```
git log master..experiment ==  git log ^master experiment == git
log experiment --not master

```

### Lista de objetos

```
git rev-parse issue_2..master

4f298373ba0f536115051593bd149539d367937d
^2f35c9c5cc4ad413970d666d0f90b66d3cbf89c7
<0:git-course:/home/jean/projects/git-docs:master:> git rev-parse master..issue_2

2f35c9c5cc4ad413970d666d0f90b66d3cbf89c7
^4f298373ba0f536115051593bd149539d367937d
<0:git-course:/home/jean/projects/git-docs:master:>

```


### Que está em uma branch mas não está na outra (xor)

```
git log master...experimento

```
Está em um mas não no outro. --left-right mostra que lado cada um
se encontra.


### Log de outra branch

```
git log branch_foo
git log <branch> -- <path/to/file>

```


### Que está no local mas não está na origin

```
git log origin/master..master --stat

```


### Que está na master mas não está local

```
git log origin/master..master --stat

```

### Who are the children of a commit

```
 git rev-list --all --not 7ef306ff3ef3cfe694fbf3847f2c35c86067ee87^@ --children | grep "^7ef306ff3ef3cfe694fbf3847f2c35c86067ee87"

```

### Saber a árvore de conflitos de um merge

```sh
git merge-tree `git merge-base $BRANCH HEAD` HEAD $BRANCH

```
