
#!/bin/bash

# Function to clear screen and show a progress bar
show_loading_screen() {
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
  sleep 2
}

# Function to show title
show_title() {
  clear
  figlet -f slant "Guide to Get Laid" -c
  sleep 2
}

# Function to introduce Dave
introduce_dave() {
  clear
  echo "Meet Dave. Dave's life is a total mess. He's stuck in the friendzone, doesn't know how to talk to girls, and his most exciting moment recently was losing his job at the local fast food joint."
  sleep 2
  echo "Your mission is simple: help Dave get his life together and eventually... get laid."
  sleep 2
}

# Function for the first scenario: Dave at Work
scenario_1() {
  clear
  echo "Dave is at his dead-end job. He sees his cute coworker, Sarah, walking by. This is his chance to finally talk to her!"
  sleep 1
  echo "What should Dave do?"
  echo "1) Compliment her awkwardly about her hair."
  echo "2) Ask if she wants to grab coffee sometime."
  echo "3) Say nothing and pretend to be busy."

  read -p "Enter your choice (1-3): " choice
  case $choice in
    1)
      echo "Dave stumbles over his words, and Sarah awkwardly walks away. Fail!"
      sleep 2
      ;;
    2)
      echo "Sarah smiles and agrees to grab coffee with Dave. He’s made some progress! Success!"
      sleep 2
      ;;
    3)
      echo "Dave decides to stay silent. Sarah doesn't notice him. Fail!"
      sleep 2
      ;;
    *)
      echo "Invalid choice. Try again."
      scenario_1
      ;;
  esac
}

# Function for the second scenario: Dave at the Bar
scenario_2() {
  clear
  echo "Dave is at a bar with some friends. He spots a cute girl across the room. It’s his chance to make a move."
  sleep 1
  echo "What should Dave do?"
  echo "1) Approach her and offer her a drink."
  echo "2) Pretend to be really cool and order a fancy cocktail."
  echo "3) Chicken out and pretend to check his phone."

  read -p "Enter your choice (1-3): " choice
  case $choice in
    1)
      echo "Dave walks over, offers her a drink, and they start chatting. She seems interested! Success!"
      sleep 2
      ;;
    2)
      echo "Dave tries to impress her with a fancy cocktail, but he ends up spilling it. Fail!"
      sleep 2
      ;;
    3)
      echo "Dave stays in his corner, looking at his phone. The girl doesn’t notice him. Fail!"
      sleep 2
      ;;
    *)
      echo "Invalid choice. Try again."
      scenario_2
      ;;
  esac
}

# Function for the final scenario: The Date
scenario_3() {
  clear
  echo "It’s the big night! Dave finally got a date with Sarah. He’s nervous but excited. It’s time to make a good impression."
  sleep 1
  echo "What should Dave talk about?"
  echo "1) Talk about his favorite TV shows."
  echo "2) Ask her about her hobbies and interests."
  echo "3) Talk about his embarrassing past relationships."

  read -p "Enter your choice (1-3): " choice
  case $choice in
    1)
      echo "Sarah laughs and the conversation flows. Dave's starting to feel more confident! Success!"
      sleep 2
      ;;
    2)
      echo "They have a great conversation about shared interests. The date is going very well! Success!"
      sleep 2
      ;;
    3)
      echo "Dave overshares about his ex-girlfriend. Sarah looks uncomfortable. Fail!"
      sleep 2
      ;;
    *)
      echo "Invalid choice. Try again."
      scenario_3
      ;;
  esac
}

# Function to end the game based on success
end_game() {
  clear
  echo "Congratulations! Dave is on his way to a better life!"
  echo "With your help, Dave overcame his awkwardness and made it through the tough spots. He's finally confident and could be on his way to a romantic success."
  sleep 2
  echo "Thanks for playing 'Guide to Get Laid!'"
  exit 0
}

# Main Game Loop
main_game() {
  show_loading_screen
  show_title
  introduce_dave

  scenario_1
  scenario_2
  scenario_3

  end_game
}

# Start the game
main_game


