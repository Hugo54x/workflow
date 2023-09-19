# Git

## Udacity Codestyle

feat: A new feature

fix: A bug fix

docs: Changes to documentation

style: Formatting, missing semi colons, etc; no code change

refactor: Refactoring production code

test: Adding tests, refactoring test; no production code change

chore: Updating build tasks, package manager configs, etc; no production code change

## Change commit message of an already committed change

```bash
git commit --amend -m "New commit message"
```

## View Upstream Branch

```bash
git branch -vv
```

## Show the current state of file at commit

```bash
git show <commit_hash>:<file>
```

## List a history with file names which is grep-able

```bash
git whatchanged -p
```

## Show only the latest change

```bash
git diff HEAD^ HEAD
```

## Show the history of one specific file

```bash
git log -p -- <filename>
```

## Git undo last commit

```bash
git reset HEAD~
```
