function eframe -w emacsclient -d "Launch an emacsclient frame. Use 'e' if you want to use the old frame."
  __launch_emacs $argv --create-frame --no-wait
end
