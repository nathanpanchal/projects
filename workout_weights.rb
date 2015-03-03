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


print "How much weight did you lift? "
weight_lifted = gets.chomp.to_f

print "How many times did you do lift it? "
reps = gets.chomp.to_i

estimated_max = weight_lifted * reps * 0.0333 + weight_lifted

puts plates(estimated_max * 0.6, imperial_plates)
puts plates(estimated_max * 0.65, imperial_plates)
puts plates(estimated_max * 0.7, imperial_plates)
puts plates(estimated_max * 0.75, imperial_plates)
puts plates(estimated_max * 0.8, imperial_plates)