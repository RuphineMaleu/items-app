#!/bin/bash

# --- FUNCTIONS ---

# Reading option
reading_menu() {
  while true; do
    echo "📚 You chose reading!"
    echo "What kind of book would you want to read?"
    echo "1) Bible"
    echo "2) Novel"
    echo "3) Art book"
    echo "4) Music book"
    echo "5) Cooking book"
    echo "Type 'back' to return to main menu."
    read -p "Enter number or name of your choice: " book

    case "${book,,}" in
      1|bible) echo "You’re reading the Word of God!"; break;;
      2|novel) echo "Ooh nice! I recommend 'As a Man Thinketh'!"; break;;
      3|"art book"|"art") echo "That's a great choice for creativity!"; break;;
      4|"music book"|"music") echo "Music book! Time to learn some tunes!"; break;;
      5|"cooking book"|"cookbook"|"cooking") echo "Nice — we’ll get to eat good food!"; break;;
      back|quit|exit) echo "Returning to main menu..."; return;;
      *) echo "❌ Invalid book choice. Please try again.";;
    esac
    echo
  done
}

# Dancing option
dancing_menu() {
  while true; do
    echo "💃 You chose dancing!"
    echo "What kind of song do you want to dance to?"
    echo "1) R&B"
    echo "2) Slow"
    echo "3) Gospel"
    echo "4) Amapiano"
    echo "5) Rock"
    echo "6) Jazz"
    echo "7) Pop"
    echo "Type 'back' to return to main menu."
    read -p "Enter number or name of your choice: " song

    case "${song,,}" in
      1|"r&b") echo "You’re vibing to R&B — smooth moves!"; break;;
      2|slow) echo "Dancing slowly — that’s beautiful!"; break;;
      3|gospel) echo "Gospel dancing — feel the spirit!"; break;;
      4|amapiano) echo "Amapiano! Great beat — have fun!"; break;;
      5|rock) echo "Rock on! Let the energy flow!"; break;;
      6|jazz) echo "Jazz dancing — classy and cool!"; break;;
      7|pop) echo "Pop music! Fun and lively!"; break;;
      back|quit|exit) echo "Returning to main menu..."; return;;
      *) echo "❌ That’s not a valid music choice. Try again.";;
    esac
    echo
  done
}

# Cooking option
cooking_menu() {
  while true; do
    echo "👩‍🍳 You chose cooking!"
    echo "What are you cooking today?"
    echo "1) Rice and stew"
    echo "2) Pasta"
    echo "3) Fufu and eru"
    echo "4) Cake"
    echo "Type 'back' to return to main menu."
    read -p "Enter number or name of your choice: " meal

    case "${meal,,}" in
      1|"rice"|"rice and stew") echo "Yummy! Classic and delicious!"; break;;
      2|pasta) echo "Italian vibes — bon appétit!"; break;;
      3|"fufu"|"eru"|"fufu and eru") echo "Cameroonian special — love that choice!"; break;;
      4|cake) echo "Sweet treat — save me a slice!"; break;;
      back|quit|exit) echo "Returning to main menu..."; return;;
      *) echo "❌ Invalid cooking choice. Please try again.";;
    esac
    echo
  done
}

# Bowling option
bowling_menu() {
  echo "🎳 You chose bowling!"
  echo "You roll the ball... STRIKE! 🎉"
}

# Watching TV option
tv_menu() {
  while true; do
    echo "📺 You chose watching TV!"
    echo "What do you want to watch?"
    echo "1) Comedy"
    echo "2) Action"
    echo "3) Documentary"
    echo "4) Cartoon"
    echo "5) News"
    echo "Type 'back' to return to main menu."
    read -p "Enter number or name of your choice: " show

    case "${show,,}" in
      1|comedy) echo "Laughter is the best medicine!"; break;;
      2|action) echo "Boom! Pow! Action time!"; break;;
      3|documentary|docs) echo "Knowledge is power — great choice!"; break;;
      4|cartoon) echo "Cartoons keep the heart young!"; break;;
      5|news) echo "Staying informed — smart move!"; break;;
      back|quit|exit) echo "Returning to main menu..."; return;;
      *) echo "❌ Invalid TV choice. Please try again.";;
    esac
    echo
  done
}

# --- MAIN LOOP ---
while true; do
  echo
  echo "🎯 Which would you choose:"
  echo "1) Reading"
  echo "2) Dancing"
  echo "3) Cooking"
  echo "4) Bowling"
  echo "5) Watching TV"
  echo "6) Quit"
  read -p "Enter number or name of your choice: " choice

  case "${choice,,}" in
    1|reading) reading_menu ;;
    2|dancing) dancing_menu ;;
    3|cooking) cooking_menu ;;
    4|bowling) bowling_menu ;;
    5|"watching tv"|tv|watching) tv_menu ;;
    6|quit|exit|q)
      echo "👋 Goodbye! Thanks for playing!"
      break
      ;;
    *)
      echo "❌ Invalid option. Please choose between 1–6 or type the name."
      ;;
  esac

  echo
  read -p "Press Enter to return to the main menu..." dummy
  clear
done
