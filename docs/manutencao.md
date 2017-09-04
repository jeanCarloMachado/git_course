## Tags


Tags anotadas guardam o commit, quem comitou e uma descrição
```sh
git tag -l "v1.*"
git tag -a v1.1  -m "informações adicionais" [commitId]
git show v1.1

```

Uma tag leve não guarda informações adicionais a não ser o commit


```sh
git tag -l "v1.*"
git tag  v1.2 [commitId]
git show v1.2
```


### Enviando pro server

```sh
git push origin v1.2
git push origin --tags

```

### Número de versão

```sh
git describe master

```


Archive the repository
----------------------

Não mantém o histórico.

```
git archive --format zip --output /full/path/to/zipfile.zip master 
git archive master --format=tar --output=../website-12-10-2012.tar

```

Bundle
------

Mantém o histórico.

```
git bundle create ../repo.bundle master
git bundle clone ../repo.bundle master /tmp/foo

```


Changelog
---------

```sh
git shortlog --no-merges master --not v1.0.1

```


Encontrando objetos soltos
--------------------------

```
git fsck --unreachable

```

Fazendo garbage collection "packfiles"
--------------------------------------

```
git reflog expire --expire-unreachable=now --all
git gc --prune=now
```

## Removendo branches já trabalhadas

```
git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d

```

Git só deleta objetos quando você faz um `git gc`.



## Bisect

Ferramenta para descobrir qual commit quebrou uma feature.

```sh
git bisect start
git bisect bad commitid
git bisect good commitid

```

git bisect reset

Automate bisect:

```sh
$ git bisect start HEAD v1.0
$ git bisect run test-error.sh
```

## Quebrar uma pasta em um repositório

```sh
git filter-branch --prune-empty --subdirectory-filter <folderName> master
```
