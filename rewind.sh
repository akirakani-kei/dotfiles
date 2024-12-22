playerctl position $(playerctl position | awk '{print ($1 > 5 ? $1 - 5 : 0)}')
