function __launch_emacs -w emacsclient -d "Cleanly start an emacsclient from fish."
  set -l x (emacsclient --alternate-editor '' --eval '(x-display-list)' 2>/dev/null)

  if test -z "$x" -o "$x" = nil
    emacsclient --alternate-editor '' --create-frame $argv
  else
    emacsclient --alternate-editor '' $argv
  end
end
