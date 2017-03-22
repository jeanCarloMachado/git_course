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

Três estágios de informação

- Comitado
- Modificado
- Em staging

Fast-forward merge
------------------

Acontece quando o histórico do merge está a frente do HEAD atual,
então move-se apenas o ponteiro da branch.


Recursive merge
---------------

É um merge de 3 vias.

Usando os snapshots das duas branches e o ancestral comum dos
dois.

É criado um commit com dois pais.

```
You might be best off looking for a description of a 3-way merge algorithm. A high-level description would go something like this:

Find a suitable merge base B - a version of the file that is an ancestor of both of the new versions (X and Y), and usually the most recent such base (although there are cases where it will have to go back further, which is one of the features of  gits default recursive merge)
Perform diffs of X with B and Y with B.
Walk through the change blocks identified in the two diffs. If both sides introduce the same change in the same spot, accept either one; if one introduces a change and the other leaves that region alone, introduce the change in the final; if both introduce changes in a spot, but they don't match, mark a conflict to be resolved manually.
The full algorithm deals with this in a lot more detail, and even has some documentation (/usr/share/doc/git-doc/technical/trivial-merge.txt for one, along with the git help XXX pages, where XXX is one of merge-base, merge-file, merge, merge-one-file and possibly a few others). If that's not deep enough, there's always source code...
```

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
