#!/bin/bash

# Durée des sessions (en minutes)
WORK_DURATION=25
BREAK_DURATION=5

# Fonction pour centrer du texte ASCII dans le terminal
display_time() {
    clear
    local minutes=$(printf "%02d" $1)
    local seconds=$(printf "%02d" $2)
    local time_str="$minutes:$seconds"
    
    # Genere le texte avec figlet
    local ascii_text=$(figlet -f big "$time_str")

    # Recupere dimensions du terminal
    local term_width=$(tput cols)
    local term_height=$(tput lines)

    # Compte les lignes et colonnes de l'ASCII art
    local text_lines=$(echo "$ascii_text" | wc -l)
    local text_width=$(echo "$ascii_text" | head -n1 | wc -c)

    # Calcule la position centree
    local top_padding=$(( (term_height - text_lines) / 2 ))
    local left_padding=$(( (term_width - text_width) / 2 ))

    # Affiche le timer centre
    printf "\033[38;5;208m"
    for ((i=0; i<top_padding; i++)); do echo ""; done
    echo "$ascii_text" | while IFS= read -r line; do
        printf "%*s%s\n" $left_padding "" "$line"
    done
    printf "\033[0m" 
}

# Fonction de compte à rebours
countdown() {
    local total_seconds=$(( $1 * 60 ))
    while [ $total_seconds -gt 0 ]; do
        local minutes=$(( total_seconds / 60 ))
        local seconds=$(( total_seconds % 60 ))
        display_time $minutes $seconds
        sleep 1
        total_seconds=$(( total_seconds - 1 ))
    done
}

# Boucle Pomodoro
while true; do
    echo -e "\a"
    countdown $WORK_DURATION
    echo -e "\a" 
    countdown $BREAK_DURATION
done
