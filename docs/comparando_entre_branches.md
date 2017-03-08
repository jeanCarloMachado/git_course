Todos os commits que estão na branch develop mas não estão na master
--------------------------------------------------------------------

```
git log master..experiment ==  git log ^master experiment == git
log experiment --not master

```

```
git rev-parse issue_2..master

4f298373ba0f536115051593bd149539d367937d
^2f35c9c5cc4ad413970d666d0f90b66d3cbf89c7
<0:git-course:/home/jean/projects/git-docs:master:> git rev-parse master..issue_2

2f35c9c5cc4ad413970d666d0f90b66d3cbf89c7
^4f298373ba0f536115051593bd149539d367937d
<0:git-course:/home/jean/projects/git-docs:master:>

```


Três pontos (xor)
-----------------

```
git log master...experimento

```
Está em um mas não no outro. --left-right mostra que lado cada um
se encontra.

