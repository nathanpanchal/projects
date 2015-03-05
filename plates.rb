=begin
Problem - Nathan is at the gym and needs to figure out which plates to put on his barbell to achive
a given weight. In other words...Given a set of plates of fixed weight. What combination and
number of these plates will help Nathan load the bar.
=end


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