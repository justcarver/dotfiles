function tm -a 'sessionname'
  if test -n "$sessionname"
    tmux attach -t $sessionname || tmux new -s $sessionname
  else
    tmux attach -t dev || tmux new -s dev
  end
end
