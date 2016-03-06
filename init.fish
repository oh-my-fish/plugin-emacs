function __major_version
  if test -n "$argv"
    set -l full_metadata (eval $argv --version)
    set -l full_version (echo $full_metadata | grep -o "[0-9]\+.[0-9]\+.[0-9]\+")
    set -l major_version (echo $full_version | sed  "s/\..*//")
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

if not set -q __emacs_version
  set __emacs_version (__major_version $__emacs)
end

if test "$__emacs_version" -gt 23
  __set_editor
end

functions -e __major_version
functions -e __set_editor
