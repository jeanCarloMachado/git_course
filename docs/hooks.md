Hooks
-----

### pre-commit

Antes de digitar a mensagem de commit

Usos: rodar checagens de estilo, procurar por espaços adicionais,
etc


```sh
#!/bin/bash

for i in $(git diff --cached --name-only --diff-filter=ACMR HEAD)
do
    echo $i
    if [[ $i =~ txt$ ]]
    then
        echo "Cannot commit txt!"
        exit 1
    fi
done

```

### post-merge


Útil para rodar rotinas de validação do estado do repositório.

```sh
#!/bin/bash
cp "$CLIPP_PATH/Cli/cpf-pre-commit" "$CLIPP_PATH/.git/hooks/pre-commit"
chmod +x "$CLIPP_PATH/.git/hooks/pre-commit"
cp "$CLIPP_PATH/Cli/cpf-pre-push" "$CLIPP_PATH/.git/hooks/pre-push"
chmod +x "$CLIPP_PATH/.git/hooks/pre-push"
cp "$CLIPP_PATH/Cli/cpf-post-merge-development" "$CLIPP_PATH/.git/hooks/post-merge"
chmod +x "$CLIPP_PATH/.git/hooks/post-merge"
$scriptDir/cpf-permissions-fix 2> /dev/null
```


### post-commit

Bom para notificações, deploy, etc.

### commit-msg

Recebe como argumento a mensagem que o desenvolvedor escreveu.
Boa para validação de mensagens de commits.
