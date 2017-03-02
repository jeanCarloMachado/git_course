Remotos
=======

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

#do some work

cd ../git-docs
git remote add other ../other-git-docs
git merge other/master
```

Remoto online
------------

```
git clone https://github.com/JeanCarloMachado/git-docs

```

Listar os repositórios remotos
------------------------------

```
Git remote -v

```

