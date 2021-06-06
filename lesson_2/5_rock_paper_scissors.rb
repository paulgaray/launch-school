VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(player1, player2)
  (player1 == "paper" && player2 == "rock") ||
    (player1 == "scissors" && player2 == "paper") ||
    (player1 == "rock" && player2 == "scissors")
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("User wins")
  elsif win?(computer, player)
    prompt("Computer wins")
  else
    prompt("It is a tie")
  end
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

  display_results(choice, computer_choice)

  prompt("Do you want to play again? Y to continue")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
