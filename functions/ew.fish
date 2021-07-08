function ew --description 'Launch an emacs buffer that waits until done.'
    __launch_emacs $argv # e uses --no-wait, but we want to wait.
end
