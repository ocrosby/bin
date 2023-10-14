# bin

## Overview

This repository contains my personal bin utility scripts from ~/bin

## Table of Contents

- [purge-images](#purge-images)

### My Git Helpers

- in - performs a `git add .` followed by a `git commit -m <commit-message>` and a `git push` where <commit-message> is the first arg passed please double quote it 
- feat - passes it's first argument to in prefixing the commit message with feat:
- fix - passes it's first argument to in prefixing the commit message with fix:
- chore - passes it's first argument to in prefixing the commit message with chore:
- docs - passes it's first argument to in prefixing the commit message with docs:
- style - passes it's first argument to in prefixing the commit message with style:
- test - passes it's first argument to in prefixing the commit message with test:
- ci - passes it's first argument to in prefixing the commit message with ci:
- branch - creates a new branch with the first argument, then checks it out, and finally pushes the upstream origin (you should be on that branch after this finishes)
- delete - checks out main, performs a `git pull`, forcefully deletes the branch specified in the argument, executes `git branch` to show you where you are at

### My Docker Helpers

#### purge-images

- requires no arguments
- purges images to save space locally

Note: run this regularly or your drive will fill up

