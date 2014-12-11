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
