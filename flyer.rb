class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

flyers = []

1.upto(5) do |counter|
  flyer = Flyer.new("Flyer #{counter}", 
                    "flyer#{counter}@example.com", 
                    counter * 1000)
  flyers << flyer
end

# puts flyers
# flyers.each { |f| puts "#{f.name} - #{f.miles_flown} miles" }
# sum = 0
# flyers.each { |f| sum += f.miles_flown }
# puts "Total miles flown: #{sum}"
promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5 }
# promotions.each { |k,v| puts "Earn #{v}x miles by flying #{k}!" }
flyers.each do |flyer|
  promotions.each do |airline, multiplier|
    puts "#{flyer.name} could earn #{flyer.miles_flown * multiplier} by flying #{airline}!"
  end
end
