function __kill_emacs -w emacsclient -d "Kill emacs."
  emacsclient --alternate-editor '' --eval '(kill-emacs)' 2>/dev/null
end
