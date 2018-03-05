#!/bin/zsh
set -eu

# By: hjort
# Simple script to setup prezto without copy and paste. This is simply taken from the README, but made into a runnable script.

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
