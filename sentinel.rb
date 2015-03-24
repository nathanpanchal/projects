run_again = 'y'

begin

	puts "running program..."

	puts "would you like to run again? (y/n)"
	run_again = gets.chomp!

end while run_again == 'y'