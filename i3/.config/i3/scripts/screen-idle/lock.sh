# Nord theme color scheme: https://www.nordtheme.com/docs/colors-and-palettes
nord0='#2e3440'
nord1='#3b4252'
nord2='#434c5e'
nord3='#4c566a'

nord4='#d8dee9'
nord5='#e5e9f0'
nord6='#eceff4'

nord7='#8fbcbb'
nord8='#88c0d0'
nord9='#81a1c1'
nord10='#5e81ac'

nord11='#bf616a'
nord12='#d08770'
nord13='#ebcb8b'
nord14='#a3BE8c'
nord15='#b48ead'

alpha='dd'


i3lock \
  --insidever-color=$nord1$alpha \
  --insidewrong-color=$nord1$alpha \
  --inside-color=$nord1$alpha \
  --ringver-color=$nord14$alpha \
  --ringwrong-color=$nord11$alpha \
  --ringver-color=$nord14$alpha \
  --ringwrong-color=$nord11$alpha \
  --ring-color=$nord3$alpha \
  --line-uses-ring \
  --keyhl-color=$nord8$alpha \
  --bshl-color=$nord12$alpha \
  --separator-color=$nord1$alpha \
  --verif-color=$nord14 \
  --wrong-color=$nord11 \
  --modif-color=$nord11 \
  --layout-color=$nord4 \
  --date-color=$nord4 \
  --time-color=$nord4 \
  --screen 1 \
  --blur 10x5 \
  --clock \
  --indicator \
  --time-str="%H:%M" \
  --date-str="%m/%e/%Y" \
  --radius=120 \
  --ring-width=10 \
  --pass-media-keys \
  --pass-screen-keys \
  --pass-volume-keys \
  --time-font="JetBrainsMono Nerd Font" \
  --date-font="JetBrainsMono Nerd Font" \
  --layout-font="JetBrainsMono Nerd Font" \
  --verif-font="JetBrainsMono Nerd Font" \
  --wrong-font="JetBrainsMono Nerd Font" \
  --keylayout 2
