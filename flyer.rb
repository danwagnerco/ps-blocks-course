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

# 1.upto(5) do |counter|
#   flyer = Flyer.new("Flyer #{counter}", 
#                      "flyer#{counter}@example.com",
#                      counter * 1000)
#   flyers << flyer
# end

# puts flyers
# flyers.each { |f| puts "#{f.name} - #{f.miles_flown} miles" }
# sum = 0
# flyers.each { |f| sum += f.miles_flown }
# puts "Total miles flown: #{sum}"
# promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5 }
# promotions.each { |k,v| puts "Earn #{v}x miles by flying #{k}!" }
# flyers.each do |flyer|
#   promotions.each do |airline, multiplier|
#     puts "#{flyer.name} could earn #{flyer.miles_flown * multiplier} by flying #{airline}!"
#   end
# end
