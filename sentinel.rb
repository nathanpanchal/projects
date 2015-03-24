@first_run = true

def run_again?
	if @first_run
		@first_run = false
		# exits the method and returns true
		return true
	end
	# initialize play again variable
	run_again = ''
	# allows user to set which inputs are acceptable by adding to the array
	while ! ['n', 'y'].include?(run_again)
		puts "Would you like to run again? (y/n)"
		print "> "
		run_again = gets.chomp!
	end
	# exits the method and returns true if the expression (run_again == 'y') evaluates to true
	return (run_again == 'y')
end

while run_again?

	puts "running program..."

end