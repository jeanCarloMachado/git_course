Histórico em grafo
------------------

Os commits no git são estruturados em forma de grafo

![Grafo acíclico](direct-acyclic-graph.svg)

Áreas de armazemanto do git
---------------------------

Git tem 3 áreas de armazenamento principais

 - Staging (index)
 - Repositório Local
 - Repositório Remoto

![Comandos de trasporte e áreas de armazenamento](git-transport.png)


Merges
------

### Fast-forward merge

Acontece quando o histórico do merge está a frente do HEAD atual,
então move-se apenas o ponteiro da branch.


### Recursive merge

Também conhecido como merge de 3 vias. Encontra-se o último commit
ancestral(CA) das duas branches(B1,B2).
Faz-se um diff de B1 com CA e B2 com CA

Navega-se entre todos os blocos identificados nas diff's. Se os
dois lados introduziram a mesma modificação no mesmo lugar,
aceita-se ela. Se uma branch introduz uma modificação e a outra
não mexe na região adiciona-se a modificação no final. Se as duas
adicionam modificações no mesmo lugar, mas elas conflitam,
marca-se o local para ser ajustado manualmente.

Packfiles
---------

São arquivos "otimizados" para remover tamanho desenecessários do
sistema.


```
$ git verify-pack -v .git/objects/pack/pack-978e03944f5c581011e6998cd0e9e30000905586.idx

```

Todo commit é uma hash sha1 e muda conforme o pai for reescrito.

HEAD
----

É a última versão da branch atual.
Utilizada pelo comando git commit para ser o pai do novo commit.
