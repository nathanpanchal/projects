weight = float(raw_input("What is your desired weight: "))
n = (weight - 45) / 2

num_fourtyfive = 0
num_thirtyfive = 0
num_twentyfive = 0
num_ten = 0
num_five = 0
num_twohalf = 0

remaining = n
if n < 2.5:
	print "Use the bar only"
else:
 	while remaining >= 45:
		remaining = remaining - 45
		num_fourtyfive += 1
	while remaining >= 35:
		remaining = remaining - 35
		num_thirtyfive += 1
	while remaining >= 25:
		remaining = remaining - 25
		num_twentyfive += 1
	while remaining >= 10:
		remaining = remaining - 10
		num_ten += 1
	while remaining >= 5:
		remaining = remaining - 5
		num_five += 1
	while remaining >= 2.5:
		remaining = remaining - 2.5
		num_twohalf += 1
	print """You need:
	%d fourty fives
	%d thirty fives
	%d twenty fives
	%d tens
	%d fives
	%d two and a halfs
	""" % (num_fourtyfive, num_thirtyfive, num_twentyfive, num_ten, num_five, num_twohalf)