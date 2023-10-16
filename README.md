# bin

## Overview

This repository contains my personal bin utility scripts from ~/bin

## Table of Contents

- [purge-images](#purge-images)


## Usage

### fix commit with a scope

```shell
git add .
git commit -m "fix(myscope): my message"
git push
```

becomes

```shell
fix "my message" myscope
```

### fix commit without a scope

```shell
git add .
git commit -m "fix: my message"
git push
```

becomes

```shell
fix "my message"
```

## My Git Helpers

### status
- requires no arguments
- executes `git status`

### in
- requires a single double quoted argument
- executes `git add .`
- executes `git commit -m "<arg>"`
- executes `git push`

### feat
- requires a single double quoted argument
- calls in prefixing the commit message with `feat:`.

### fix
- requires a single double quoted argument
- calls in prefixing the commit message with `fix:`.

### chore
- requires a single double quoted argument
- calls in prefixing the commit message with `chore:`.

### docs
- requires a single double quoted argument
- calls in prefixing the commit message with `docs:`.

### style
- requires a single double quoted argument
- calls in prefixing the commit message with `style:`.

### test
- requires a single double quoted argument
- calls in prefixing the commit message with `test:`.

### ci
- requires a single double quoted argument
- calls in prefixing the commit message with `ci:`.

### branch
- requires a single argument that is the name of a branch you wish to create
- creates the new branch
- checks out the new branch
- pushes the upstream origin
- calls `git branch` to show you where you are
- this should leave you on the new branch

### delete
- requires a single double quoted argument that is the name of the branch you wish to delete
- checks out main
- calls `git pull`
- forcefully deletes the specified branch
- calls `git ranch` to show you where you are

Note: I need to modify delete to detect the current branch you are on so it doesn't have to be specified.

## My Docker Helpers

### purge-images

- requires no arguments
- purges images to save space locally

Note: run this regularly or your drive will fill up

