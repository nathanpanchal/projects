# Takes a desired weight and prints what plates need to be placed on each side of a barbel to
# achive that weight.

print "What is your desired weight: "
weight = gets.chomp.to_f

# Assumes the barbell being used is 45 lbs.
n = (weight - 45) / 2

# Weight plates are in lbs
num_fourtyfive = 0
num_thirtyfive = 0
num_twentyfive = 0
num_ten = 0
num_five = 0
num_twohalf = 0

num_fourtyfive = n / 45
num_thirtyfive = (n % 45) / 35
num_twentyfive = ((n % 45) % 35) / 25
num_ten = (((n % 45) % 35) % 25) / 10
num_five = ((((n % 45) % 35) % 25) % 10) / 5
num_twohalf = (((((n % 45) % 35) % 25) % 10) % 5) / 2.5
	
puts """
You need the following:
\t#{num_fourtyfive} fourty fives
\t#{num_thirtyfive} thirty fives
\t#{num_twentyfive} twenty fives
\t#{num_ten} tens
\t#{num_five} fives
\t#{num_twohalf} two and a halfs
"""