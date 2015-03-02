imperial_plates = [45, 35, 25, 10, 5, 2.5]


def plates(weight, plates)
	side_weight = (weight - 45) / 2
	remaining = side_weight
	plates.map do |plate|
		num = remaining / plate
		remaining = remaining % plate
		num.to_i
	end.inspect
end


print "What is your max? "
weight = gets.chomp.to_f

puts plates(weight * 0.6, imperial_plates)
puts plates(weight * 0.65, imperial_plates)
puts plates(weight * 0.7, imperial_plates)
puts plates(weight * 0.75, imperial_plates)
puts plates(weight * 0.8, imperial_plates)