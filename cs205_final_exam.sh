#!/bin/bash

# Set the filename as the first positional parameter passed to the script
filename=$1

# Calculate the total number of Pokemon
total_pokemon=$(awk 'END {print NR}' "$filename")

# Calculate the average HP and average Attack using awk
avg_hp=$(awk '{total += $2} END {print total/NR}' "$filename")
avg_attack=$(awk '{total += $3} END {print total/NR}' "$filename")

# Print the summary report
echo "===== SUMMARY OF DATA FILE ====="
echo "   File name: $filename"
echo "   Total Pokemon: $total_pokemon"
echo "   Avg. HP: $avg_hp"
echo "   Avg. Attack: $avg_attack"
echo "===== END SUMMARY ====="


