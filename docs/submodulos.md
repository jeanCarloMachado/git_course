
Criando um submódulo
--------------------

```
git submodule add https://github.com/chaconinc/DbConnector
git submodule add ../mainrepo.git submoduleDir

git status
```


Buscando os arquivos
--------------------

```
git submodule init
git submodule update

```

Inicializando os submódulos em um repositório já configurado
------------------------------------------------------------

```
git clone --recursive

```

Mantendo atualizado
-------------------

```
git config -f .gitmodules submodule.jeancarlomachado.github.io.branch master

git submodule update --remote

```

Foreach
-------

```
 git submodule foreach "git add . ; git commit -m 'added assets'"

```

Push
----

```
git config push.recurseSubmodules on-demand
git push
```

Diff/Log
----

```
git $COMANDO --submodule

```
