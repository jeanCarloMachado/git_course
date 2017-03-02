Reescrevendo Histórico
======================

É possível adicionar algo a um commit nos seguintes passos:

- Rebase no commit e marcar ele como editado
- Comitar as alterações
- Fazer um fix up no commit com seu pai


A regra de ouro do rebase
https://www.atlassian.com/git/tutorials/merging-vs-rebasing?section=the-golden-rule-of-rebasing

Revert
------

Usar em branches públicas
Reverting undoes a commit by creating a new commit. This is a safe way to undo changes, as it has no chance of re-writing the commit history. For example, the following command will figure out the changes contained in the 2nd to last commit, create a new commit undoing those changes, and tack the new commit onto the existing project.

git checkout hotfix
git revert HEAD~2


Command	Scope	Common use cases
git reset	Commit-level	Discard commits in a private branch or throw away uncommited changes
git reset	File-level	Unstage a file
git checkout	Commit-level	Switch between branches or inspect old snapshots
git checkout	File-level	Discard changes in the working directory
git revert	Commit-level	Undo commits in a public branch
git revert	File-level	(N/A)
https://www.atlassian.com/git/tutorials/resetting-checking-out-and-reverting
