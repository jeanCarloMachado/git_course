Recuperando
-----------


### Recuperando na área de trabalho

```
git log
rm -rf docs
browser http://localhost:8000
git reset --hard HEAD
browser http://localhost:8000

```

### Recuperando versão X do histórico

```sh
git checkout commit X
git checkout -b "nova_branch"
git checkout master
git merge nova_branch

```

### Encontrar commits com string X

```sh
git log -SX

```

### Encontrar string no repositório

```sh
git grep -i [--untracked ] linus
```


