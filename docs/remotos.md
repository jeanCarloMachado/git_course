Remotos
=======

Git é distriuído.

Remoto local
------------

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

Listar os repositórios remotos
------------------------------

```
Git remote -v

```

Clone
-----

```
git clone https://github.com/schacon/ticgit

```
