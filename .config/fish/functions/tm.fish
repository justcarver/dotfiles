function tm -a 'sessionname'
  if test -n "$sessionname"
    tmux attach -t $sessionname || tmux new -s $sessionname
  else
    set -lx SESSION (tmux list-sessions -F "#{session_name}" 2>/dev/null | fzf --exit-0)
    tmux attach -t $SESSION || echo "No sessions found"
  end
end
