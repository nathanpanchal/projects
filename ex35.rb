# Exercise 35: Branches and Functions

def gold_room
  puts 'This room is full of gold. How much do you take?'

  print '> '
  choice = gets.chomp

  # The code below tests to see if the input was a number. The original test was
  # "if choice.include?("0") || choice.include?("1")" this throws an error if the 
  # input does not contain a 1 or a 0.
  if choice.to_i.to_s == choice
    how_much = choice.to_i
  else
    puts 'Man learn to type a number.'
  end

  if how_much < 50
    puts 'Nice, you\'re not greedy, you win!'
    exit(0)
  else
    dead('You greedy bastard!')
  end
end

def bear_room
  puts 'There is a bear here.'
  puts 'The bear has a bunch of honey.'
  puts 'The fat bear is in front of another door.'
  puts 'How are you going to move the bear?'

  bear_moved = false

  while true
    print '> '
    choice = gets.chomp

    if choice.include?('honey')
      dead('Why would you mess with his food? The bear looks at you then slaps your face off')
    elsif choice.include?('taunt') && !bear_moved
      puts 'The bear has moved from the door. You can go through it now.'
      bear_moved = true
    elsif choice.include?('taunt') && bear_moved
      dead('The bear gets pissed off and chews your leg off.')
    elsif choice.include?('open') && bear_moved
      gold_room
    else
      puts 'I got no idea what that means'
    end
  end
end

def cthulhu_room
  puts 'Here you see the great evil Cthulhu'
  puts 'He...it...whatever stares at you and you go insane.'
  puts 'So you flee for your life or eat your head?'

  print '> '
  choice = gets.chomp

  if choice.include? 'head'
    dead('You saw that coming...I bet it wasn\'t tasty')
  elsif choice.include? 'flee'
    start
  else
    cthulhu_room
  end
end

def dead(why)
  puts why, 'Good job!'
  exit(0)
end

def start
  puts 'You are in a dark room.'
  puts 'There is a door to you left and right'
  puts 'Which one do you take?'

  print '> '
  choice = gets.chomp

  if choice == 'left'
    bear_room
  elsif choice == 'right'
    cthulhu_room
  else
    dead('You stumble around the room until you starve.')
  end
end

start