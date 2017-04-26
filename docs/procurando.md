Procurando
-----------



### Quando string foi introduzida

Encontrar commits com string X

```sh
git log -SX

```

Onde a string foi introduzida
-----------------------------

Encontrar string no repositório

n: line number

```sh
git grep [-i] [-n] [--count] [--untracked ] linus
```


Procurar por modifcações em bloco de texto
------------------------------------------

```sh
git log -L '/deleteUserFromClient/',/\ \ \ \}/:\
Backend/module/Application/src/Application/Service/Client/Client.php
```
