Ferramentas & Produtividade
===========================

Stash
-----

Para salvar trabalhos temporários

```
git stash
git stash apply

```

### Visualizar o stash

```
git stash show -p

```

Gitk
----

Uma interface nativa para quem gosta de interfaces gráficas



### Tags


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
