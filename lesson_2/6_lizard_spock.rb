VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
user_score = 0
computer_score = 0

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(player1, player2)
  (player1 == "scissors" && player2 == "paper") ||
    (player1 == "paper" && player2 == "rock") ||
    (player1 == "rock" && player2 == "lizard") ||
    (player1 == "lizard" && player2 == "spock") ||
    (player1 == "spock" && player2 == "scissors") ||
    (player1 == "scissors" && player2 == "lizard") ||
    (player1 == "lizard" && player2 == "paper") ||
    (player1 == "paper" && player2 == "spock") ||
    (player1 == "spock" && player2 == "rock") ||
    (player1 == "rock" && player2 == "scissors")
end

loop do # main loop
  choice = ''
  loop do # check for valid entry
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("User chose #{choice} while computer chooses #{computer_choice}")

  if win?(choice, computer_choice)
    prompt("User wins this round. 1 point added")
    user_score += 1
  elsif win?(computer_choice, choice)
    prompt("Computer wins this round. 1 point added")
    computer_score += 1
  else
    prompt("It is a tie. No points added.")
  end
  puts "User score: #{user_score} || Computer score: #{computer_score}"
  # puts "Computer score: #{computer_score}"
  if user_score == 3
    puts "User won. Do you want to play again?"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  elsif computer_score == 3
    puts "Computer won. Do you want to play again?"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  else
    puts "Keep playing to reach 3 points."
  end
end

prompt("Thank you for playing. Good bye!")
