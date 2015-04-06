puts "Do you choose rock, paper, or scissors?"
print '> '
user_choice = gets.chomp

def computer_choice()
  computer_choice = rand
  if computer_choice < 0.33
    computer_choice = 'rock'
  elsif computer_choice <= 0.67
    computer_choice = 'paper'
  else
    computer_choice = 'scissors'
  end
  puts "Computer: #{computer_choice}"
  return computer_choice
end

def compare(choice1, choice2)
  if choice1 == choice2
    puts "The result is a tie!"
  elsif choice1 == 'rock'
    if choice2 == 'scissors'
      puts 'rock wins!'
    else
      puts 'paper wins!'
    end
  elsif choice1 == 'paper'
    if choice2 == 'rock'
      puts 'paper wins!'
    else
      puts 'scissors wins!'
    end
  else
    if choice2 == 'paper'
      puts 'scissors wins!'
    else
      puts 'rock wins!'
    end
  end
end

compare(user_choice, computer_choice)