function theme -d "Change kitty theme" -a theme_name
  # Do nothing if there is no theme specified
  if [ -z "$theme_name" ]
    return
  end

  kitty +kitten themes --reload-in=all $theme_name
end
