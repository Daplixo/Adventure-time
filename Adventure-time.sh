#!/bin/bash

steps=30

delay=0.1

clear

echo "Loading, please wait..."
progress=""

for ((i = 1; i <= steps; i++)); do
 
  progress+="#"

  printf "\r[%-30s] %d%%" "$progress" $((i * 100 / steps))

  sleep $delay
done

echo -e "\nLoading complete!"

sleep 3

clear
figlet -f slant ADVENTURE TIME -c
echo "Welcome to the game" 
sleep 1
echo "Game is still in the development phase as the developer is still learning bash and have not decided the story line of the game yet."
sleep 1
echo "Follow @daplixo on github and all the other socials to get in touch"
sleep 1
echo "Thank you"

