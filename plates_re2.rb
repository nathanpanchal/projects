weights = [45, 35, 25, 10, 5, 2.5]

def plates(weight, divisors)
	plates = []
	remaining = weight
	for n in divisors
		# Can not refer to weight in the loop because we will always be dividing by the full amount
		# for each iteration resulting in inaccurate nums.
		num = remaining / n
		remaining = remaining % n
		plates << num.to_i
	end
	return plates
end