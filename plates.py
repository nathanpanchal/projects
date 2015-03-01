# Code computes what plates are needed to achive a given weight. This code does not work perfectly
# because it only accepts int values and prints ALL possible combinations of plates.

weight = int(raw_input("What is your desired weight: "))
n = (weight - 45) / 2

first = 2
second = 5
third = 10
fourth = 25
fifth = 35
sixth = 45

# We only need to find a value up to n/x
# "+1" is used because the range in the for function is exclusive. 
for a in range(0, (n/first)+1):
	for b in range(0, (n/second)+1):
		for c in range(0, (n/third)+1):
			for d in range(0, (n/fourth)+1):
				for e in range(0, (n/fifth)+1):
					for f in range(0, (n/sixth)+1):
						if a*first + b*second + c*third + d*fourth + e*fifth + f*sixth == n:
							print (a, b, c, d, e, f)