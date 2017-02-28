Git serve para recuperar informação
----------------------------------

```
git log
rm -rf docs
browser http://localhost:8000
git reset --hard HEAD
browser http://localhost:8000

```


Git serve para versionar informações
------------------------------------

### Criando

```
echo "Historia do git" >docs/historia.md
echo "[Historia](historia.md)" >>docs/index.md
git add .
git commit  -m "adicionado arquivos sobre historia"
echo "Git foi criado em 2005 por Linus Torvalds, o criador do Linux" >>docs/historia.md
git commit -a -m "detalhes sobre a historia"

```

### Desfazendo

```
git checkout HEAD~1 docs/historia.md
git checkout HEAD docs/historia.md
```

Git também serve para:

- Trabalhar em múltiplas tarefas concorrentemente
- Trabalhar com múltiplas equipes concorrentemente
- Pode-se versionar todo tipo de informação: projetos de software,
  livros, tcc's, etc.
