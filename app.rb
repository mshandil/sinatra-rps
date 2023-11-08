require "sinatra"
require "sinatra/reloader"

# Define the choices for the game
CHOICES = ["rock", "paper", "scissors"]

get("/") do
  erb(:hp)
end

get("/rock") do
  @player_choice = "rock"
  @computer_choice = CHOICES.sample
  @result = determine_winner(@player_choice, @computer_choice)
  erb (:result)
end

get("/scissors") do
  @player_choice = "scissors"
  @computer_choice = CHOICES.sample
  @result = determine_winner(@player_choice, @computer_choice)
  erb (:result)
end

get("/paper") do
  @player_choice = "paper"
  @computer_choice = CHOICES.sample
  @result = determine_winner(@player_choice, @computer_choice)
  erb (:result)
end

def determine_winner(player_choice, computer_choice)
  if player_choice == computer_choice
    "We tied"
  elsif (player_choice == "rock" && computer_choice == "scissors") ||
        (player_choice == "paper" && computer_choice == "rock") ||
        (player_choice == "scissors" && computer_choice == "paper")
    "We won"
  else
    "We lost"
  end
end
