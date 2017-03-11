Blame
-----

Mostra as últimas alterações de cada linha de arquivo com o autor.

```
$ git blame -L 141,153 simplegit.rb

```
Git não guarda renames explicitamente. Quando passado o -C git
tenta identificar de onde o código veio.

```
$ git blame -C  GITPackUpload.m

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
