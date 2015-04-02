def dead(why)
	puts why, 'Game Over!'
	exit(0)
end

def gold_room
	puts 'Wow! This room is piled full of gold. How much do you take?'

	print '> '
	choice = gets.chomp

	if choice.to_i.to_s == choice
		amount = choice.to_i
	else
		puts 'Please enter a number with no spaces...Yeah, it\'s that easy!'
	end

	if amount <= 50
		puts 'You have conqured greed and a lot more. You win!'
		exit(0)
	else
		puts 'Greed got the better of you.'
		dead('You were consumed with the riches in the room and slowly wasted away')
	end
end

def snake_room
	puts 'You stumble into a dimly lit room full of snakes.'
	puts 'There is a torch hanging on the wall.'
	puts 'You can see a door on the other side.'
	puts 'How do you get across?'
	torch_taken = false

	while true
		print '> '
		choice = gets.chomp

		if choice.include?('walk') && !torch_taken
			puts 'Hint: snakes hate fire...according to Indiana Jones'
			dead('You only make it a few steps before you succumb to snake venom.')
		elsif choice.include?('snake')
			dead('Handling a snake is never a good idea')
		elsif choice.include?('torch') && !torch_taken
			puts 'Smart move! Snakes hate fire...according to Indiana Jones.'
			puts ('I bet you could walk through the snakes to the other side now.')
			torch_taken = true
		elsif choice.include?('walk') && torch_taken
			puts 'You cautiously make your way to the other side and open the door.'
			dragon_room
		else
			puts 'That action is not possible in this room'
		end
	end
end

def dragon_room
	puts 'You hear a deep snoring.'
	puts 'In the faint light you can make out a dragon.'
	puts 'You can see something glistening through the doorway on the other side.'
	puts 'How do you get over there?'

	while true
		print '> '
		choice = gets.chomp

		if choice.include?('run')
			puts 'You book it. The dragon hears your steps and wakes up'
			puts 'He spits flames. You dodge to the right and slide under him.'
			puts 'You barely make it to the room.'
			puts 'Thankfully the doorway is too small for the drangon to follow'
			gold_room
		elsif choice.include?('sneak') || choice.include?('quiet')
			puts 'You easily make it past the dragon and walk into the room on the other side'
			gold_room
		elsif choice.include?('fight') || choice.include?('taunt')
			puts 'What did you plan on fighting the dragon with?'
			puts 'The dragon easily over powers you and burns you to a crisp'
			dead('You are now a pile of ashes on the ground')
		else
			puts 'That action is not possible in this room. Try again...'
		end
	end

end

def shark_room
	puts 'You open the door and the only option is to dive into a pool'
	puts 'Thankfully there is some scuba gear near by. You put it on and jump in'
	puts 'There are sharks everywhere but you see a strange portal a hundred yards away'
	puts 'How to you get to it?'

	while true
		print '> '
		choice = gets.chomp

		if choice.include?('swim')
			puts 'You cautiosly swim across the pool'
			puts 'The skarks pay little attention to you let you by...its your lucky day'
			puts 'You take the portal and are teleported to another room'
			gold_room
		elsif choice.include?('fight') || choice.include?('challenge')
			puts 'It is not a good idea to fight skarks'
			dead('You were chomped in half!')
		else
			puts 'That action is not possible in this room. Try again...'
		end
	end

end

def game
	puts 'You are in a room with two doors.'
	puts 'Do you take the one on the left or the one on the right?'

	puts '> '
	choice = gets.chomp

	if choice.include?('left')
		shark_room
	elsif choice.include?('right')
		snake_room
	else
		dead 'You stand there and starve to death'
	end
end

game