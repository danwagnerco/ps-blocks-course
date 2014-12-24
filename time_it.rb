# Example usage:
#
# time_it("Sleepy code") do
#   # run some code
#   # sleep(1)
# end
#
# Which prints the following:
#
# Sleepy code took 1.000424
#
# Piggyback the built-in realtime method in Benchmark module
require "benchmark"

def time_it(description)
  duration = Benchmark.realtime { yield }
  puts "#{description} took #{duration}"
end

time_it("Whaddup girl") { sleep(2) }
