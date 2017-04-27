Rebase
------


<!--

[ c3 ] -> [ c2 ] -> [ c1 ] -> [ c0 ]
[ master ] -> [ c3 ]
[ c4 ] -> [ c2 ]
[ experiment ] -> [ c4 ]


-->

```sh

+------------+     +----+     +----+     +----+     +----+
| experiment | --> | c4 | --> | c2 | --> | c1 | --> | c0 |
+------------+     +----+     +----+     +----+     +----+
                                ^
                                |
                                |
+------------+     +----+       |
|   master   | --> | c3 | ------+
+------------+     +----+

```

Coloca o histórico da branch atual(experiment)  no topo do estado
atual da master.

```sh
git checkout experiment
git rebase master

```

<!--
[ c3 ] -> [ c2 ] -> [ c1 ] -> [ c0 ]
[ master ] -> [ c3 ]
[ c4 ] -> [ c3 ]
[ experiment ] -> [ c4 ]


-->

```sh
+------------+     +----+     +--------+     +----+     +----+     +----+
| experiment | --> | c4 | --> |   c3   | --> | c2 | --> | c1 | --> | c0 |
+------------+     +----+     +--------+     +----+     +----+     +----+
                                ^
                                |
                                |
                              +--------+
                              | master |
                              +--------+
```

Transfere pra master as mudanças feitas em exeriment
```sh
git checkout master
git merge experiment

```

<!--
[ c3 ] -> [ c2 ] -> [ c1 ] -> [ c0 ]
[ c4 ] -> [ c3 ]
[ master ] -> [ c4 ]
[ experiment ] -> [ c4 ]



-->

```sh
+------------+     +--------+     +----+     +----+     +----+     +----+
| experiment | --> |   c4   | --> | c3 | --> | c2 | --> | c1 | --> | c0 |
+------------+     +--------+     +----+     +----+     +----+     +----+
                     ^
                     |
                     |
                   +--------+
                   | master |
                   +--------+
```


**Dica**: Rebase reescreve histórico, então nunca faça rebase em histórico compartilhado.

Squash
------

```
git rebase -i

```
Ou

```
git merge --squash feature_branch

```

Editar um commit anterior
-------------------------

- Rebase no commit e marcar ele como editado
- Comitar as alterações
- Fazer um fix up no commit com seu pai


```
git rebase -i HEAD~3

```

Criando dois commits a partir de 1
----------------------------------

```
rebase iterativo com edit
git reset HEAD^
... add commit 2x
rebase --continue
```


Removendo arquivos do último commit
-----------------------------------

```
git rm file_name

```

Removendo arquivos do histórico
-------------------------------

```
git filter-branch --tree-filter 'rm -rf passwords.txt' HEAD.

```

```
 git filter-branch --force --index-filter \
'git rm --cached --ignore-unmatch PATH-TO-YOUR-FILE-WITH-SENSITIVE-DATA' \
--prune-empty --tag-name-filter cat -- --all

```

