Git é distriuído.

Remoto no filesystem local
--------------------------

```
cd /path/to/git-docs
cd ..
git clone git-docs other-git-docs
cd other-git-docs
git config user.name "other user"
git config user.email other.user@gmail.com


//do some work
cd ../git-docs
git remote add other ../other-git-docs
git merge other/master
```

Remoto online
------------

### Listar os repositórios remotos

```
git remote -v

```

### Git remote add origin

```
git remote add origin git@github.com:compufour/compufacil.git
git remote add origin https://github.com/user/repo.git
```

### Mandar para o repositório

```
git clone https://github.com/JeanCarloMachado/git-docs
git push origin new_branch
```

### Baixar do repositório

```
git pull --rebase

```

Setando remoto e branch padrões
-------------------------------

Permite usar apenas `git push`, ao invés de `git push origin
master`.

```
git branch --set-upstream-to myfork/master

```
