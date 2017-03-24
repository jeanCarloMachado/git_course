Uma branch é uma linha de trabalho independente. Podem ser usadas para diversos propósitos.

Pode-se ter uma branch para:

 - experimentar uma tecnologia nova;
 - uma branch para um bug-fix;
 - outra para o trabalho do sprint;

A branch padrão no git é a `master`. Para listar todas as branches
use: `git branch`


### Branches no git são baratas

![Objetos que compõem o histórico](history_objects.png)

A branch atual é aquela apontada pelo objeto HEAD.

```sh
cat .git/HEAD


```
Listando branches
-----------------

git branch
git branch -v
git branch --merged
git branch --no-merged

### Criando branches

```sh
git branch nova_branch

```

### Movendo para a branch

```sh
git checkout nova_branch

```

### Usando branches

```sh
git commit "informações sobre branches no master"
git checkout -b "recursos_adicionais" #cria outra linha de trabalho

```

O comando checkout serve para criar a branch e entrar nela.


### Merge

Merge mescla o conteúdo de branches

```sh
git merge recursos_adicionais
git log

```

Fast-forward: move o ponteiro da master para o último commit da
branch. Possível utilizar quando não há divergências entre as
branches

```
git merge

```

### Deletando branch

```sh
git branch -d branch_name

```

Exercícios
----------

```sh
Faça algumas modificações em uma branch de nova feature
Volte para a master e faça uma nova branch de hotfix e trabalhe
nela

Após validar as modificações faça merge da branch de hotfix
Volte a trabalhar na branch de nova feature
Tragas as modificações para a master

```
