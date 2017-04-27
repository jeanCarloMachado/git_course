Removendo arquivos do histórico
-------------------------------

```
git filter-branch --tree-filter 'rm -rf passwords.txt' HEAD.

```

```
 git filter-branch --force --index-filter \
'git rm --cached --ignore-unmatch PATH-TO-YOUR-FILE-WITH-SENSITIVE-DATA' \
--prune-empty --tag-name-filter cat -- --all

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

Encontrando objetos soltos
--------------------------

```
git fsck --unreachable

```

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
