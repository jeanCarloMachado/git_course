Criando um server remoto
------------------------

### Remoto no filesystem local

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

Bare
----

Não tem working dir.

```
cd /tmp/
mkdir foo
git init . --bare
git clone root@45.55.247.185:/tmp/foo /tmp/foo_clone

```
