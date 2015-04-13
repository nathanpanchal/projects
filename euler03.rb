require 'mathn'

def factors(num)
	(1..num).each do |n|
		if num % n == 0 && n.prime?
			puts n
		end
	end
end

factors(600851)