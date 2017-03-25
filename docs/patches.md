Format patch
------------

Patches são mudanças em um formato padronizado que podem ser
transferidas de um lugar para outro:

Para criar um patch do último commit:

```
git format-patch master

```

Apply
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

Criar patches a partir de uma branch
------------------------------------

```
git format-patch master

```

### Patch Exemplo
```sh
From 6a617a94815f3c0756c903630a8408db747f483e Mon Sep 17 00:00:00 2001
From: Jean Carlo Machado <contato@jeancarlomachado.com.br>
Date: Tue, 28 Feb 2017 10:03:09 -0300
Subject: [PATCH] historia

---
 docs/historia.md | 10 ++++++++++
 1 file changed, 10 insertions(+)
 create mode 100644 docs/historia.md

diff --git a/docs/historia.md b/docs/historia.md
new file mode 100644
index 0000000..1634532
--- /dev/null
+++ b/docs/historia.md
@@ -0,0 +1,10 @@
+Historia do git
+===============
+
+Git foi criado em 2005 por Linus Torvalds, o criador do Linux.
+A motivação de criar o Git foi porquê o CVS anterior (SVN) era
+muito lento para comportar o trabalho do kernel.
+
+Alguns significados para o termo:
+ - "global information tracker"
+ - "goddamn idiotic truckload of sh*t"
-- 
2.12.0

```
