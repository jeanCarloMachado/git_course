
Criando um submódulo
--------------------

```
git submodule add https://github.com/chaconinc/DbConnector

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

git submodule update  --remote jeancarlomachado.github.io
ou
git submodule update --remote

```

Comitando
---------


Diff
----

```
git diff --submodule

```

Status
------

```
 git config status.submodulesummary 1

```


