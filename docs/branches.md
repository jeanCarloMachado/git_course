Uma branch é uma linha de trabalho independente. Podem ser usadas para diversos propósitos.

Pode-se ter uma branch para:

 - experimentar uma tecnologia nova;
 - uma branch para um bug-fix;
 - outra para o trabalho do sprint;

A branch padrão no git é a `master`. Para listar todas as branches
use: `git branch`


```sh
git commit "informações sobre branches no master"
git checkout -b "recursos_adicionais" #cria outra linha de trabalho
curl -L https://goo.gl/XlMc3m -o 0001-recursos_adicionais.patch
git apply 0001-recursos_adicionais.patch

```

O comando checkout serve para criar a branch e entrar nela.

