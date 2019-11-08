function efile -d "Get the current file of the Emacs server."
  set -l cmd '(buffer-file-name (window-buffer))'

  __launch_emacs --eval $cmd | tr -d '\"'
end
