Operadores relativos
--------------------

```
HEAD@{5} #fith prior value of HEAD
HEAD@{yesterday}
HEAD@{2.months.ago}

```

### Sintaxe alternativa

```
git rev-parse 34ab345c70~2
git rev-parse HEAD~1
HEAD~5

```


### Referência a ancestrais com múltiplos pais

```
git rev-parse HEAD^
git rev-parse 2aad^^
```

#### Para funcionar o (^) nos zsh e bash sem necessitar escapar

```
setopt NO_NOMATCH
setopt NO_EXTENDED_GLOB

```

### Todos os commits que estão na branch experiment mas que ainda não estão na master


```sh
git log master..experiment

```

### Que estão na branch e não estão na master

```sh
git log origin/master..HEAD

```


Commits que estão em apenas umas das branches
---------------------------------------------

```sh
git log master...experiment

```
