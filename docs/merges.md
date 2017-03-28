
Fast-forward
============

Acontece quando o histórico do merge está a frente do HEAD atual,
então move-se apenas o ponteiro da branch.

Muda o ponteiro do commit.

### Antes

<!--
[ c0 ] -> [ c1 ] -> [ c2 ] -> [ c3 ]
[ master ] -> [ c3 ]
[ c3 ] -> [ c4 ] -> [ c5 ] -> [ c6 ]
[ new_feature ] -> [ c6 ]
-->

```sh
+----+     +----+     +----+     +--------+     +----+     +----+     +----+     +-------------+
| c0 | --> | c1 | --> | c2 | --> |   c3   | --> | c4 | --> | c5 | --> | c6 | <-- | new_feature |
+----+     +----+     +----+     +--------+     +----+     +----+     +----+     +-------------+
                                   ^
                                   |
                                   |
                                 +--------+
                                 | master |
                                 +--------+
```

### Depois

<!--
[ c0 ] -> [ c1 ] -> [ c2 ] -> [ c3 ]
[ c3 ] -> [ c4 ] -> [ c5 ] -> [ c6 ]
[ master ] -> [ c6 ]
[ hotfix ] -> [ c2 ]
[ new_feature ] -> [ c6 ]
-->

```sh
+----+     +----+     +----+     +----+     +----+     +----+     +--------+     +-------------+
| c0 | --> | c1 | --> | c2 | --> | c3 | --> | c4 | --> | c5 | --> |   c6   | <-- | new_feature |
+----+     +----+     +----+     +----+     +----+     +----+     +--------+     +-------------+
                                                                    ^
                                                                    |
                                                                    |
                                                                  +--------+
                                                                  | master |
                                                                  +--------+


```

Recursive
---------

É o método usado quando as modificações são conflitantes.
Usando os snapshots das duas branches e o ancestral comum dos
dois.  É criado um commit com dois pais.

<!--
[ c0 ] -> [ c1 ] -> [ c2 ] -> [ c3 ]
[ master ] -> [ c3 ]
[ c2 ] -> [ c4 ] -> [ c5 ] -> [ c6 ]
[ new_feature ] -> [ c6 ]

-->

### Antes

```sh
+--------+     +----+     +----+     +----+     +----+     +----+     +-------------+
|   c0   | --> | c1 | --> | c2 | --> | c4 | --> | c5 | --> | c6 | <-- | new_feature |
+--------+     +----+     +----+     +----+     +----+     +----+     +-------------+
                            |
                            |
                            |
+--------+     +----+       |
| master | --> | c3 | <-----+
+--------+     +----+

```

### Depois

<!--
[ c0 ] -> [ c1 ] -> [ c2 ] -> [ c3 ]
[ master ] -> [ c7 ]
[ c2 ] -> [ c4 ] -> [ c5 ] -> [ c6 ]
[ new_feature ] -> [ c6 ]
[ c6 ] -> [ c7 ]
[ c3 ] -> [ c7 ]
-->

```sh
                                                       +-------------+
                                                       | new_feature |
                                                       +-------------+
                                                         |
                                                         |
                                                         v
+----+     +----+     +----+     +----+     +----+     +-------------+     +----+     +--------+
| c0 | --> | c1 | --> | c2 | --> | c4 | --> | c5 | --> |     c6      | --> | c7 | <-- | master |
+----+     +----+     +----+     +----+     +----+     +-------------+     +----+     +--------+
                        |                                                    ^
                        |                                                    |
                        v                                                    |
                      +----+                                                 |
                      | c3 | ------------------------------------------------+
                      +----+


```

#### Pseudo algoritmo

- Encontre um commit base (c2) que é ancestral de ambas as versões
(c3, c6)
- Executa diffs entre  c3 e c2 e entre c6 e c2.
- Percorre os blocos de mudança identificados nos diff's.
- Se ambas as versões introduziram a mesma modificação no mesmo lugar aceita uma delas.
- Se uma versão introduz uma modificação e a outra não mexe no
mesmo lugar adiciona-se a modificação
- Se ambas as versões introduzem modificações diferentes no mesmo
lugar marca-se a área como conflitante e pede-se para o usuário
corrigir.

