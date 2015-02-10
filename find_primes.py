# the following code finds all the prime numbers between two values

def is_prime(n):
    if n == 0 or n == 1:
        return False
    for i in range(2, int(n**0.5)+1):
        if n % i == 0:
            return False
    else:
        return True

begining = int(raw_input("Begining value: "))
end = int(raw_input("End value: "))

for n in range(begining, end): # end value is excluded
    if is_prime(n):
        print n