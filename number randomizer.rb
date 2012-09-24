require "pp"

numbers = [1, 2, 3, 4, 5].sort_by { rand }

results = []

half = (numbers.size/2.0).ceil

half.times do |i|
  results << [numbers[i], numbers[i+half]]
end

pp results