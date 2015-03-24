run_again = 'y'

begin

	program

	puts "would you like to run again?"
	run_again = gets.chomp!

end while run_again == 'y'