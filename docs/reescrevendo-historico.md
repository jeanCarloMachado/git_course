### Trocar a última mensagem de commit

```
git commit --amend

```

### Adicionando/removendo um arquivo ao commit anterior

O *ammend* leva em consideração a área de *staging*.

```sh
git add file_x.md
git rm file_y.md
git commit --amend

```


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

Rebase iterativo
----------------

Permite realizar várias operações (bem diferente do rebase
normal).

```
git rebase -i HEAD~3

```

**Para editar os últimos 3 commits use: HEAD~3.**
**A lista do rebase vem em ordem reversa ao log, com os mais
antigos no topo.**

### Squash

Permite juntar um commit ao seu ancestral formando apenas 1.

### Drop

Permite deletar um commit e seu conteúdo

### Edit

Para o processo logo após o commit em questão, possibilitando usar
o amend para editá-lo.

Também é possível utilizar o reset HEAD^ para desfazer ele
completamente.


Cherry-Pick
-----------

Permite aplicar um único commit de outra branch.

```
git cherry-pick commitId

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

