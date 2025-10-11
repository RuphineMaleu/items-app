#!/bin/bash

# --- FUNCTIONS ---

# Reading option
reading_menu() {
  echo "📚 You chose reading!"
  echo "What kind of book would you want to read?"
  echo "1) Bible"
  echo "2) Novel"
  echo "3) Art book"
  echo "4) Music book"
  echo "5) Cooking book"
  read -p "Enter number of your choice: " book

  case $book in
    1) echo "You’re reading the Word of God!";;
    2) echo "Ooh nice! I recommend 'As a Man Thinketh'!";;
    3) echo "That's a great choice for creativity!";;
    4) echo "Music book! Time to learn some tunes!";;
    5) echo "Nice — we’ll get to eat good food!";;
    *) echo "❌ Invalid book choice.";;
  esac
}

# Dancing option
dancing_menu() {
  echo "💃 You chose dancing!"
  echo "What kind of song do you want to dance to?"
  echo "1) R&B"
  echo "2) Slow"
  echo "3) Gospel"
  echo "4) Amapiano"
  echo "5) Rock"
  echo "6) Jazz"
  echo "7) Pop"
  read -p "Enter number of your choice: " song

  case $song in
    1) echo "You’re vibing to R&B — smooth moves!";;
    2) echo "Dancing slowly — that’s beautiful!";;
    3) echo "Gospel dancing — feel the spirit!";;
    4) echo "Amapiano! Great beat — have fun!";;
    5) echo "Rock on! Let the energy flow!";;
    6) echo "Jazz dancing — classy and cool!";;
    7) echo "Pop music! Fun and lively!";;
    *) echo "❌ That’s not a valid music choice.";;
  esac
}

# Cooking option
cooking_menu() {
  echo "👩‍🍳 You chose cooking!"
  echo "What are you cooking today?"
  echo "1) Rice and stew"
  echo "2) Pasta"
  echo "3) Fufu and eru"
  echo "4) Cake"
  read -p "Enter number of your choice: " meal

  case $meal in
    1) echo "Yummy! Classic and delicious!";;
    2) echo "Italian vibes — bon appétit!";;
    3) echo "Cameroonian special — love that choice!";;
    4) echo "Sweet treat — save me a slice!";;
    *) echo "❌ Invalid cooking choice.";;
  esac
}

# Bowling option
bowling_menu() {
  echo "🎳 You chose bowling!"
  echo "You roll the ball... STRIKE! 🎉"
}

# Watching TV option
tv_menu() {
  echo "📺 You chose watching TV!"
  echo "What do you want to watch?"
  echo "1) Comedy"
  echo "2) Action"
  echo "3) Documentary"
  echo "4) Cartoon"
  echo "5) News"
  read -p "Enter number of your choice: " show

  case $show in
    1) echo "Laughter is the best medicine!";;
    2) echo "Boom! Pow! Action time!";;
    3) echo "Knowledge is power — great choice!";;
    4) echo "Cartoons keep the heart young!";;
    5) echo "Staying informed — smart move!";;
    *) echo "❌ Invalid TV choice.";;
  esac
}

# --- MAIN MENU ---
echo "Which would you choose:"
echo "1) Reading"
echo "2) Dancing"
echo "3) Cooking"
echo "4) Bowling"
echo "5) Watching TV"
read -p "Enter number of your choice: " choice

case $choice in
  1) reading_menu ;;
  2) dancing_menu ;;
  3) cooking_menu ;;
  4) bowling_menu ;;
  5) tv_menu ;;
  *) echo "❌ Invalid option. Please choose a number between 1 and 5." ;;
esac
