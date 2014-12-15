class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)

# Frequent flyers have 3K or more miles
frequent_flyers = flyers.find_all { |f| f.miles_flown >= 3000 }
puts "Ballers:"
puts frequent_flyers

infrequent_flyers = flyers.reject { |f| f.miles_flown >= 3000 } 
puts "Not ballers:"
puts infrequent_flyers

if flyers.any? { |f| f.status == :platinum }
  puts "Jackpot! We've got platties on here y'all"
end

call_this_person_first = flyers.detect { |f| f.miles_flown < 3000 } 
puts "This person needs some motivation:"
puts call_this_person_first

# Separate the flyers into ballers and suckers in coach
platties, coachies = flyers.partition { |f| f.status == :platinum }
# p platties
# p coachies

# Create a handy name tag array with names and status capitalized
name_tags = flyers.map { |f| "#{f.name} (#{f.status.to_s.upcase})" }
# p name_tags

# Lufthansa is graphing their flyer data and wants an array
# containing distances flown in km. Make it work!
distances = flyers.map { |f| f.miles_flown * 1.6 }
# p distances

# How many miles have Lufthansa flyers gone in total?
total_distance_flown = flyers.reduce(0) { |sum, f| sum + f.miles_flown }
# p total_distance_flown

# How many miles is that in km?
total_distance_flown_in_km = flyers.reduce(0) { |sum, f| sum + (f.miles_flown * 1.6) }
# p total_distance_flown_in_km

# Bonus round: Lufthansa wants to know how many miles all bronze
# flyers have traveled in km. Make it so!
total_bronze_distance_in_km = flyers.find_all { |f| f.status == :bronze }
                                    .map { |f| f.miles_flown * 1.6 }
                                    .reduce(:+)
p total_bronze_distance_in_km
