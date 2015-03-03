# Takes a desired weight and prints what plates need to be placed on each side of a barbel to
# achive that weight.

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