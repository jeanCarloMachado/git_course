Rev-parse
---------

Retorna o commit que alguma branch está apontando.

```
git rev-parse master
git rev-parse HEAD

```

Reflog
------

Mostra um log dos comandos usados no repositório. Similar ao
.bash_history (para operações locais)

```
git reflog

ou

git log -g
```


Generate a zip from the repository
----------------------------------

```
git archive --format zip --output /full/path/to/zipfile.zip master 

```
