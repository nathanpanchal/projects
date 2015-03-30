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
		dead('You were consumed with the riches in thr room and thus wasted away')
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
	puts 'In the fiant light you can make out a dragon.'
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

snake_room