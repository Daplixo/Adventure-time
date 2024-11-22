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
sleep 3

echo "What is your name?"
read user
sleep 1
echo "Welcome to Adventure-time, $user"

echo "Game is still in development phase"
sleep 3
echo "Follow @daplixo on github and all the social media platforms to stay updated"

