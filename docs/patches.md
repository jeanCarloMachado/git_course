Format patch
------------

Patches são mudanças em um formato padronizado que podem ser
transferidas de um lugar para outro:

Para criar um patch do último commit:

```
git format-patch master

```

Appy
----

Para aplicar um patch

```
curl -L https://goo.gl/p1LEc7 -o 0001-historia.patch
git apply 0001-historia.patch
```

Diff e show e log
----------------

O resultado destes comandos também são compatíveis com
patches do git.

```
git diff > my_patch.patch
git show > my_patch.patch
git diff --cached > my_patch.patch
git log -p

```

Criar um patch de uma branch
----------------------------

```
git format-patch master

```

