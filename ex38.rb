ten_things = 'Apples Oranges Crows Telephone Light Sugar'

puts 'Wai there are not 10 things in that list. Let\'s fix that.'

stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

while stuff.length != 10
	# This cleaves the last element from the array and assignes it to the var 'next_one'
	next_one = more_stuff.pop
	puts "Adding: #{next_one}"
	# This adds the object 'next_one' to the end of the array
	stuff.push(next_one)
	puts "There are #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts 'Let\'s do some things with stuff.'

puts stuff[1]
puts stuff[-1]
puts stuff.pop()
# Joins the elements in the array into a string with the specified deliminator
puts stuff.join(' ')
puts stuff[3..5].join('#')