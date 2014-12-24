def with_debugging
  puts "Got here!"
  result = yield
  puts "Result was #{result}"
end

with_debugging do
  magic_number = (23 - Time.now.hour) * Math::PI
end

def with_expectation(test_answer)
  puts "Running test..."
  test_result = yield
  if test_answer == test_result
    puts "Passed."
  else
    puts "Failed!"
    puts "Expected #{test_answer} but got #{test_result}"
  end
end

with_expectation(4) { 2 + 2 }
with_expectation(5) { 2 + 2 }
