scores = [83, 71, 92, 64, 98, 87, 75, 69]
scores_doubled = scores.map { |s| s * 2 }
p scores_doubled

# The class who scores more than 600 gets ice cream and the afternoon off.
# Did they achieve their ice cream goal?
total = scores.reduce(:+)
p total
total = scores.reduce(0, :+)
p total
total = scores.reduce(0) { |sum, score| sum + score }
p total

# Let's split the scores into evens and odds
evens, odds = scores.partition { |s| s.even? }
p evens
p odds
