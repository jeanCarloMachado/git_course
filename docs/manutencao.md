Tags
----


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

Removendo branches já trabalhadas
---------------------------------

```
git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d

```

Git só deleta objetos quando você faz um `git gc`.

