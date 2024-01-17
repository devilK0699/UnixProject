#!/usr/bin/env bash

function guessing_assignment {
    local correct_guess=$(ls -l | grep "^-" | wc -l)
    local user_guess

    echo "Guessing assignment from coursera(The unix workbench)!"

    while true; do
        read -p "How many files are in the current directory? " user_guess

        if [[ $user_guess -lt $correct_guess ]]; then
            echo "Incorrect guess: Too low! Try again."
        elif [[ $user_guess -gt $correct_guess ]]; then
            echo "Incorrect guess: Too high! Try again."
        else
            echo "Congratulations! Your guess is correct."
            break
        fi
    done
}

guessing_game

