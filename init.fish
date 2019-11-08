if not command -sq emacs
  exit 0
end

function __major_version
  if test -n "$argv"
    set -l full_metadata (eval $argv --version)
    set -l major_version (echo $full_metadata | sed -E  's/^[^0-9]*([0-9]+).*/\1/')
    echo $major_version
  end
end

function __set_editor
  if not set -q EDITOR
    set -gx EDITOR emacs
  end
end

if not set -q __emacs
  set __emacs (which emacs)
end

if not set -q __emacsclient
  set __emacsclient (which emacsclient)
end

if not set -q __emacs_version
  set __emacs_version (__major_version $__emacsclient)
end

if test "$__emacs_version" -gt 23
  __set_editor
end

functions -e __major_version
functions -e __set_editor
