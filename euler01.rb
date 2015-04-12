def multiples
  (1...10).select do |i|
    i % 3 == 0 || i % 5 == 0
  end
end

puts multiples.reduce { |sum, n| sum + n }