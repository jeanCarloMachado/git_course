Exercícios
----------


### Básico
<!--{{{-->
- Crie um novo diretório para o projeto
- Crie um arquivo resumindo como inicializar um projeto git, preferencialmente no formato Markdown
- Comite esse arquivo
- Crie um arquivo resumindo como utilizar o commit
- Comite esse arquivo
- Consulte a versão anterior com o git log ou gitk
https://guides.github.com/features/mastering-markdown
<!--}}} -->

### Branches
<!-- {{{ -->

- Crie uma branch de nova feature a partir da master
- Faça algumas modificações nesta nova branch com o conteúdo que você aprendeu
- Volte para a master e faça uma nova branch de hotfix e trabalhe nela
- Após validar as modificações faça merge da branch de hotfix para a master
- Volte a trabalhar na branch de nova feature
- Tragas as modificações para a master, via merge

<!-- }}} -->

### Patches
<!-- {{{ -->
- Altere o conteúdo do seu projeto em uma nova branch, commite e
conteúdo e gere um patch da branch.
- Em outra branch aplique as modificações.
<!-- }}} -->

### Recuperando e desfazendo

#### 1.0
<!-- {{{ -->
- Introduza um commit errado no seu projeto que delete algum
arquivo importante na sua master.
- Utilize do revert para desfazer as modificações
<!-- }}} -->

#### 2.0
<!-- {{{ -->
- Faça modificações em vários arquivos
- Faça um commit com todas as modificações
- Desfaça volte no histórico e reescreva com commits mais
- semânticos
<!-- }}} -->


### Remoto

#### 1.0
<!-- {{{ -->
- Crie uma conta no Github ou Gitlab
- Crie um repositório para o projeto do git
- Envie as modificações para lá via https
- Configure suas chaves ssh
- Envie novas modificações via ssh

<!-- }}} -->

#### 1.0
<!-- {{{ -->
- Envie pull/requests para a branch de um de seus colegas com
melhorarias.
<!-- }}} -->

#### Tema de casa

<!-- {{{ -->

```sh
Centralizem os trabalhos em um único repositório que vai servir
como referência da empresa pra git.
Bonus: Utilizar o mkdocs ou ferramenta similar para gerar html
Bonus: Publicar online (possivelmente em algum serviço como o
githubio)

```

<!-- }}} -->
