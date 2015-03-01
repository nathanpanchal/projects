print "What is your desired weight: "
weight = gets.chomp.to_f

n = (weight - 45) / 2

num_fourtyfive = 0
num_thirtyfive = 0
num_twentyfive = 0
num_ten = 0
num_five = 0
num_twohalf = 0

remaining = n
if n < 2.5
	puts "Use the bar only"
else
 	while remaining >= 45
		remaining = remaining - 45
		num_fourtyfive += 1
	end
	while remaining >= 35
		remaining = remaining - 35
		num_thirtyfive += 1
	end
	while remaining >= 25
		remaining = remaining - 25
		num_twentyfive += 1
	end
	while remaining >= 10
		remaining = remaining - 10
		num_ten += 1
	end
	while remaining >= 5
		remaining = remaining - 5
		num_five += 1
	end
	while remaining >= 2.5
		remaining = remaining - 2.5
		num_twohalf += 1
	end
	
	puts """
You need the following:
\t#{num_fourtyfive} fourty fives
\t#{num_thirtyfive} thirty fives
\t#{num_twentyfive} twenty fives
\t#{num_ten} tens
\t#{num_five} fives
\t#{num_twohalf} two and a halfs
"""
end






















