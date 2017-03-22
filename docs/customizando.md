As configurações globais ficam em

```sh
~/.gitconfig

```

Configurações para todos usuários podem ir em

```sh
/etc/gitconfig

```

Em repositórios

```sh
.git/config


Para listar as configurações:

```sh
git config --list

```
```

Cores
-----

```sh
git config --global color.ui true

```

Setar o editor padrão
---------------------

```
git config --global core.editor vim

```

Trocar template de mensagem de commit
-------------------------------------

```
git config --global commit.template vim

```

Pager
-----

```
git config --global core.pager 'less'

```

Aliases
-------

```sh
git config --global alias.co checkout

```

### Logs

```sh
git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
git config --global alias.lol "log --graph --decorate --pretty=oneline --abbrev-commit --all"
git config --global alias.mylog "log --pretty=format:'%h %s [%an]' --graph"

```
