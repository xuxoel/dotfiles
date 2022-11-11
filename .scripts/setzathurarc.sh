get_option(){
    xrdb -query | grep $1 | awk '{print $2}'
}

cat > "$HOME/.config/zathura/zathurarc" <<- CONF
    set default-bg              "$(get_option *.background:)"
    set default-fg              "$(get_option *.color8:)"    
    set statusbar-fg            "$(get_option *.color15:)"
    set statusbar-bg            "$(get_option *.color8:)"
    set inputbar-bg             "$(get_option *.color0:)"
    set inputbar-fg             "$(get_option *.color7:)"
    set notification-error-bg   "$(get_option *.color1:)"
    set notification-error-fg   "$(get_option *.color0:)"
    set notification-warning-bg "$(get_option *.color1:)"
    set notification-warning-fg "$(get_option *.color0:)"
    set highlight-color         "$(get_option *.color3:)"
    set highlight-active-color  "$(get_option *.color4:)"
    set completion-highlight-fg "$(get_option *.color7:)"
    set completion-highlight-bg "$(get_option *.color14:)"
    set completion-bg           "$(get_option *.color7:)"
    set completion-fg           "$(get_option *.color14:)"
    set recolor                 "true"
    set recolor-keephue         "true"
    set recolor-darkcolor       "$(get_option *.color15:)"
    set recolor-lightcolor      "$(get_option *.color0:)"

    map i recolor
    map <A-j> zoom in
    map <A-k> zoom out
CONF
