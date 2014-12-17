def three_times
  1.upto(3) do |counter|
    yield(counter)
  end
end

# three_times do |number|
#   puts "#{number} situp"
#   puts "#{number} pushup"
#   puts "#{number} chinup"
# end

def n_times(n)
  1.upto(n) do |counter|
    yield(counter)
  end
end

n_times(5) do |n|
  puts "#{n} situps"
  puts "#{n} pushups"
  puts "#{n} chinups"
end
