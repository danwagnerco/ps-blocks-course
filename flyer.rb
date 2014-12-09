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

puts flyers
