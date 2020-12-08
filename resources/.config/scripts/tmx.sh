#!/bin/sh

SESSION_NAME=general

if [[ -z $(tmux ls | grep $SESSION_NAME) ]]
then
  tmux new -d -s $SESSION_NAME
fi

if [[ "$@" ]]
then
  tmux new-window -t $SESSION_NAME "$@; read"
else
  tmux attach -t $SESSION_NAME
fi

