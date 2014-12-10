# 1. For example, a file is a collection of lines. Consider the following:
file = File.open("poem.txt")
file.each { |line| puts line }
# => this prints all the lines inside poem.txt

# 2. Similarly, a directory is a collection of entries. Check this:
dir = Dir.new("/Users/mike")
dir.each { |entry| puts }
# => this prints all the items (i.e. files and folders) inside the mike
# directory, as well as "." and ".."

# 3. How about all the primes? Check this:
require "mathn"
Prime.each { |number| puts number }
# => Euclid's theorem predicts that two-liner will never stop! Use CTRL + C to force an interrupt.
