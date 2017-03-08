Operadores relativos
--------------------

```
HEAD@{5}
HEAD@{yesterday}
HEAD@{2.months.ago}

```

### Sintaxe alternativa 

```
git rev-parse 34ab345c70~2
git rev-parse HEAD~1
HEAD~5

```


### Topo da branch atual


```
HEAD
HEAD~ == HEAD~1

```

### Referência a ancestrais

```
git rev-parse HEAD^
git rev-parse 2aad^^
```

^^^ significa o primeiro pai do primeiro pai do primeiro pai

#### Para funcionar o (^) nos zsh e bash sem necessitar escapar

```
setopt NO_NOMATCH
setopt NO_EXTENDED_GLOB

```

