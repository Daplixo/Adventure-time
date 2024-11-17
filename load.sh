#!/bin/bash

# Number of loading steps
steps=30

# Time delay between updates (in seconds)
delay=0.1

# Clear the screen
clear

# Display a message
echo "Loading, please wait..."

# Initialize the progress bar
progress=""

for ((i = 1; i <= steps; i++)); do
  # Append a "#" to the progress bar
  progress+="#"

  # Print the progress bar
  printf "\r[%-30s] %d%%" "$progress" $((i * 100 / steps))

  # Delay for the animation effect
  sleep $delay
done

# Move to the next line after loading
echo -e "\nLoading complete!"
