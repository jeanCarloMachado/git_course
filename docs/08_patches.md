Format patch
------------

Patches são mudanças que podem ser transferidas de um repositório
para outro:

Para criar um patch do último commit:

```
git format-patch master

```

Appy
----

Para aplicar um patch:

```
curl -L https://goo.gl/p1LEc7 -o 0001-historia.patch
git apply 0001-historia.patch
```

Diff e show
-----------

O resultado de `git show` e `git diff` também são comapatíveis com 
patches do git.

```
git diff > my_patch.patch
git show > my_patch.patch
git diff --cached > my_patch.patch

```

