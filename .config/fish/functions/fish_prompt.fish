
function fish_prompt
  if set -q VIRTUAL_ENV
    echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
  end
  if test -z $WINDOW
    printf '%s%s@%s%s%s%s%s> ' (set_color yellow) (whoami) (set_color purple) (hostname|cut -d . -f 1) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
  else
    printf '%s%s@%s%s%s(%s)%s%s%s> ' (set_color yellow) (whoami) (set_color purple) (hostname|cut -d . -f 1) (set_color white) (echo $WINDOW) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
  end
end
