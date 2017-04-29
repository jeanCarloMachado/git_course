Procurando
-----------

### Quando string foi introduzida

Encontrar commits com string X

```sh
git log -SX

```

Onde a string foi introduzida
-----------------------------

Encontrar string no repositório

n: line number

```sh
git grep [-i] [-n] [--count] [--untracked ] linus
```


Procurar por modifcações em bloco de texto
------------------------------------------

```sh
git log -L '/deleteUserFromClient/',/\ \ \ \}/:\
Backend/module/Application/src/Application/Service/Client/Client.php
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


Retorna o commit que algo está apontando.

```
git rev-parse master
git rev-parse HEAD
cat .git/HEAD
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
