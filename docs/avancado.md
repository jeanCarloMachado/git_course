Operadores relativos
--------------------

Para funcionar o (^) nos zsh e bash sem necessitar escapar
----------------------------------------------------------

```
setopt NO_NOMATCH
setopt NO_EXTENDED_GLOB

```



### Topo da branch atual

```
HEAD
HEAD~ == HEAD~1

git show 34ab345c70^2
```

### 5 commits atrás

```
HEAD~5

```

### Sintaxe alternativa flexível

```
HEAD@{5}
HEAD@{yesterday}
HEAD@{2.months.ago}

```


Merge de múltiplas branches
---------------------------

octopus merge

ours
http://stackoverflow.com/questions/16208144/how-do-i-merge-multiple-branches-into-master

Manutenção
----------

### Trabalhando com histórico grande

### Deletando arquivos do histórico

Integrando ferramentas ao github
--------------------------------

Estudando fluxos de projetos open-source
----------------------------------------

Criando um server remoto
------------------------

Variaveis internas do Git
-------------------------

Pumbling
--------

git cat-file

Comitando (hardcore version)
--------------------------

Criando um objeto manualmente
-----------------------------


Todo commit é uma hash sha1 e muda conforme o pai for reescrito.

Comandos menos conhecidos
-------------------------
