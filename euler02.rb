# Calculate the nth Fibonacci number
def calc_fib (n)
  if n <= 1
    return n
  else
    value = calc_fib(n-1) + calc_fib(n-2)
    return value
  end
end

sum = 0
# sum the even fibs from fib 1 to fib 10
(1..10).each do |num|
	if calc_fib(num) % 2 == 0
		sum += calc_fib(num)
	end
end
puts sum