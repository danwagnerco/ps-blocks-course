scores = [83, 71, 92, 64, 98, 87, 75, 69]

# high_scores = scores.find_all { |s| s >= 80 }
# puts "High Scores:"
# puts high_scores

# low_scores = scores.reject { |s| s >= 80 }
# puts "Low Scores:"
# puts low_scores

# if scores.any? { |s| s < 70 }
#   puts "Argh, somebody failed!"
#   first_failure = scores.detect { |s| s < 70 }
#   puts "Here's the first failing score:"
#   puts first_failure
# end

# rude bang methods

# scores.select! { |s| s >= 80 }
# puts "High scores:"
# puts scores

# scores.select! { |s| s.even? }
# puts "Even scores only:"
# puts scores
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

