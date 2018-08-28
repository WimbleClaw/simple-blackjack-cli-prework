def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total (card_total)
 puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
 sum = deal_card + deal_card
 display_card_total(sum)
 sum
end

def hit?(total)
 prompt_user
 user_input = get_user_input
  if user_input == "h"
    total = total + deal_card
    display_card_total(total)
  elsif user_input == "s"
  else 
    invalid_command
    prompt_user
  end
  total
end

def invalid_command
   "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = hit?(initial_round)
  until total > 21
    total = hit?(total)
  end
  end_game(total)
end
