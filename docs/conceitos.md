Histórico em grafo
------------------

Os commits no git são estruturados em forma de grafo

![Grafo acíclico](direct-acyclic-graph.svg)

Áreas de armazemanto do git
---------------------------

Git tem 4 áreas de armazenamento principais

- Área de trabalho
- Staging (index)
- Repositório Local
- Repositório Remoto

![Comandos de trasporte e áreas de armazenamento](git-transport.png)


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


