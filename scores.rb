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

scores.select! { |s| s.even? }
puts "Even scores only:"
puts scores
