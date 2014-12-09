# 5.times do |counter|
#   puts "#{counter} situp"
#   puts "#{counter} pushup"
#   puts "#{counter} chinup"
# end

# 1.upto(5) do |counter|
#   puts "#{counter} situp"
#   puts "#{counter} pushup"
#   puts "#{counter} chinup"
# end

# Convert the following code from a multi-line block to a single-line block.
# 1.upto(10) do |count|
#   puts "#{count} alligator"    
# end

# 1.upto(10) { |c| puts "#{c} alligator" }

# Suppose you want to repeat exercises but counting by 2 up to 9. Use #step,
# which takes an upper limit and an interval
1.step(9, 2) do |i|
  puts "#{i} sit-up"
  puts "#{i} push-up"
  puts "#{i} chin-up"
end
