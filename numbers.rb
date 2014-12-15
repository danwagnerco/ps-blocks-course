numbers = [5, 2, 3, 4]

p numbers.reduce(0) { |sum, n| sum + n }
p numbers.reduce { |sum, n| sum + n }

