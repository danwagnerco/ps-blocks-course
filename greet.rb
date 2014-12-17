def greet
  # yield "Larry", 18
  yield
end

greet { |name, age| puts "Hello #{name}. You don't look #{age}!" }

