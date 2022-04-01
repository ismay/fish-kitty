function _theme_complete -d "Complete the theme command"
  # Only completes first argument
  if ! __fish_is_first_arg >/dev/null
    return
  end

  # Path to search for theme conf files
  set -l theme_folder (command realpath ~/.config/kitty/themes/)

  for theme in $theme_folder/*.conf
    set -l theme_name (basename $theme .conf)
    echo $theme_name
  end
end

complete -c theme -fk -a "(_theme_complete)"
