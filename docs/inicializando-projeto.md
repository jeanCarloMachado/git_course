Ajuda
-----

Para ajuda genérica pode-se utilizar

```sh
git --help
man git

```
Para mais detalhes do que como cada comando opera pode utilizar

```sh
man git commando
git commando --help

```

Init
----

Para inicializar um projeto git

São criados arquivos na pasta .git com os
dados versionados.

```
git init $DIRETORIO

```

Para uma lista dos arquivos criados pelo git:

```
cd /tmp
git init foo
find .
```

Config
------


```
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com

```
