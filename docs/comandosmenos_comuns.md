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

Staging parcial
---------------

```
git add -p

```

Bisect
------

Ferramenta para descobrir qual commit quebrou uma feature.

```
git bisect start
git bisect bad commitid
git bisect good commitid

```

git bisect reset

Automate bisect:

```
$ git bisect start HEAD v1.0
$ git bisect run test-error.sh

```
